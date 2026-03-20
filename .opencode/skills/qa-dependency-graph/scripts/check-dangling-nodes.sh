#!/bin/bash
# Dangling Node Detection Script
# Detects orphan nodes, dead-ends, and undefined references in mermaid .mmd files

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <path-to-mmd-file>"
    echo ""
    echo "Detects:"
    echo "  - Orphan nodes: nodes with no incoming edges (except START)"
    echo "  - Dead-end nodes: nodes with no outgoing edges (except END)"
    echo "  - Undefined references: nodes referenced but never defined"
    exit 1
fi

MMD_FILE="$1"

if [ ! -f "$MMD_FILE" ]; then
    echo "ERROR: File not found: $MMD_FILE"
    exit 1
fi

echo "=============================================="
echo "Dangling Node Detection"
echo "File: $MMD_FILE"
echo "=============================================="
echo ""

awk '
BEGIN { 
    orphan_count = 0
    deadend_count = 0
    undefined_count = 0
}

/^\s*%%/ { next }
/^\s*subgraph/ { next }
/^\s*classDef/ { next }
/^\s*direction/ { next }

/-->/ {
    # This is an edge line
    line = $0
    
    # Extract left side of -->
    left = line
    sub(/-->[^-]*/, "", left)
    # Remove label part [....] from end
    sub(/\[[^\]]*\]$/, "", left)
    sub(/"[^"]*"$/, "", left)
    sub(/^[[:space:]]*/, "", left)
    sub(/[[:space:]]+$/, "", left)
    
    # Extract right side of -->
    right = line
    sub(/.*-->/, "", right)
    # Remove label part
    sub(/\[[^\]]*\]$/, "", right)
    sub(/"[^"]*"$/, "", right)
    sub(/^[[:space:]]*/, "", right)
    sub(/[[:space:]]+$/, "", right)
    
    if (left != "" && left ~ /^[A-Z_][A-Z0-9_]*$/) {
        defined_on_left[left] = 1
        all_nodes[left] = 1
    }
    if (right != "" && right ~ /^[A-Z_][A-Z0-9_]*$/) {
        referenced_on_right[right] = 1
        all_nodes[right] = 1
    }
    next
}

/\[/ {
    # Node definition with label: NODE["label"]
    # May have leading whitespace - strip it
    line = $0
    sub(/^[[:space:]]*/, "", line)
    
    if (line ~ /^[A-Z_][A-Z0-9_]*\[/) {
        # Extract the node name before [
        node = line
        sub(/\[.*/, "", node)
        
        if (node != "" && node ~ /^[A-Z_][A-Z0-9_]*$/) {
            defined_standalone[node] = 1
            all_nodes[node] = 1
        }
    }
    next
}

/^[A-Z_]/ {
    # Bare node definition - must start with capital letter, no bracket
    # May have leading whitespace - strip it
    line = $0
    sub(/^[[:space:]]*/, "", line)
    
    # Skip known keywords
    if (line == "subgraph" || line == "direction" || line ~ /^(TD|LR|RL|BT)$/) next
    
    # Check if it looks like a node definition
    if (line ~ /^[A-Z_][A-Z0-9_]*$/ || line ~ /^[A-Z_][A-Z0-9_]*[[:space:]]/) {
        # Extract node name
        node = line
        sub(/[[:space:]].*/, "", node)
        
        if (node != "" && node ~ /^[A-Z_][A-Z0-9_]*$/ && length(node) > 1) {
            defined_standalone[node] = 1
            all_nodes[node] = 1
        }
    }
    next
}

END {
    # Merge all definitions
    for (n in defined_on_left) all_nodes[n] = 1
    for (n in defined_standalone) all_nodes[n] = 1
    
    print ""
    print "=== Parsing complete ==="
    print "Total unique nodes: " length(all_nodes)
    print "Nodes with outgoing edges: " length(defined_on_left)
    print "Nodes referenced as destinations: " length(referenced_on_right)
    print ""
    
    start_node = "START"
    end_node = "END"
    
    print "=== ORPHAN NODES (no incoming edges) ==="
    print "These nodes have outgoing edges but no incoming edges:"
    print "(Except START which legitimately has no input)"
    print ""
    
    for (node in all_nodes) {
        if (node == start_node || node == end_node) continue
        if ((node in defined_on_left) && !(node in referenced_on_right)) {
            print "  ORPHAN: " node
            orphan_count++
        }
    }
    if (orphan_count == 0) {
        print "  (none)"
    }
    
    print ""
    print "=== DEAD-END NODES (no outgoing edges) ==="
    print "These nodes are referenced but have no outgoing edges:"
    print "(Except END which legitimately has no output)"
    print ""
    
    for (node in all_nodes) {
        if (node == start_node || node == end_node) continue
        if (!(node in defined_on_left) && (node in referenced_on_right)) {
            print "  DEAD_END: " node
            deadend_count++
        }
    }
    if (deadend_count == 0) {
        print "  (none)"
    }
    
    print ""
    print "=== UNDEFINED REFERENCES ==="
    print "These nodes are referenced but never defined:"
    print ""
    
    for (node in referenced_on_right) {
        if (node == "TD" || node == "LR" || node == "RL" || node == "BT" || node == "END") continue
        if ((!(node in defined_on_left)) && (!(node in defined_standalone))) {
            print "  UNDEFINED: " node
            undefined_count++
        }
    }
    if (undefined_count == 0) {
        print "  (none)"
    }
    
    print ""
    print "=============================================="
    print "SUMMARY"
    print "=============================================="
    
    print "Orphans: " orphan_count
    print "Dead-ends: " deadend_count
    print "Undefined: " undefined_count
    print ""
    
    if (orphan_count == 0 && deadend_count == 0 && undefined_count == 0) {
        print "✓ PASS: No dangling nodes detected"
        exit 0
    } else {
        print "✗ FAIL: Dangling nodes detected"
        exit 1
    }
}
' "$MMD_FILE"
