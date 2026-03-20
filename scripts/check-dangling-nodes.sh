#!/bin/bash
# Checks a Mermaid flowchart for dangling nodes (orphans, dead-ends, undefined references)

usage() {
    cat <<EOF
Usage: $0 <file.mmd>

Parses a Mermaid flowchart and reports:
  - Orphan nodes (no incoming edges, except START)
  - Dead-end nodes (no outgoing edges, except END)
  - Undefined references (referenced in edges but never defined)
EOF
    exit 1
}

[[ $# -eq 1 ]] || usage
FILE="$1"

if [[ ! -f "$FILE" ]]; then
    echo "Error: File '$FILE' not found" >&2
    exit 1
fi

awk '
function trim(s) {
    gsub(/^[[:space:]]+|[[:space:]]+$/, "", s)
    return s
}

# Extract bare node ID (strip any [label] or (label) suffix)
function node_id(s) {
    # Find first [ or ( and take everything before it
    if (match(s, /[[(]/)) {
        return trim(substr(s, 1, RSTART-1))
    }
    return trim(s)
}

/^[[:space:]]*$/ { next }
/^[[:space:]]*%%/ { next }
/^[[:space:]]*(classDef|class)[[:space:]]/ { next }
/^[[:space:]]*::/ { next }
/^[[:space:]]*subgraph[[:space:]]/ { next }
/^[[:space:]]*end[[:space:]]*$/ { next }
/^[[:space:]]*flowchart[[:space:]]/ { next }

{
    line = $0
    gsub(/%.*$/, "", line)
    
    # Find node definitions: ID with optional ( before [
    while (match(line, /(^|[^A-Za-z_])[A-Za-z_][A-Za-z0-9_]*\(?\[/) > 0) {
        match_start = RSTART
        
        # Calculate where the ID actually starts
        leading_char = ""
        if (match_start > 1) {
            leading_char = substr(line, match_start - 1, 1)
        }
        
        id_start = match_start + (leading_char != "" ? 1 : 0)
        
        rest_of_line = substr(line, id_start)
        bracket_pos_in_rest = index(rest_of_line, "[")
        if (bracket_pos_in_rest == 0) break
        
        bracket_pos = id_start + bracket_pos_in_rest - 1
        
        node_id_str = substr(line, id_start, bracket_pos_in_rest - 1)
        node_id_str = trim(node_id_str)
        sub(/[(\[]+$/, "", node_id_str)
        
        if (node_id_str != "") {
            defined[node_id_str] = 1
            
            # Extract label between [" and "]
            label_rest = substr(line, bracket_pos + 1)
            if (match(label_rest, /"([^"]+)"/) > 0) {
                label[node_id_str] = substr(label_rest, RSTART + 1, RLENGTH - 2)
            }
        }
        
        # Remove this node from line - find the closing ] and remove everything up to and including it
        after_close = bracket_pos + index(substr(line, bracket_pos + 1), "]")
        line = substr(line, after_close + 1)
    }
}

(/-->|-\.->/) {
    line = $0
    gsub(/%.*$/, "", line)
    
    arrow = ""
    if (match(line, /-->/)) {
        arrow = "-->"
    } else if (match(line, /-\.->/)) {
        arrow = "-.->"
    } else {
        next
    }
    
    n = split(line, parts, arrow)
    if (n < 2) next
    
    sources_str = parts[1]
    targets_str = parts[2]
    
    # Process sources
    ns = split(sources_str, srcs, /&/)
    for (i = 1; i <= ns; i++) {
        src = node_id(srcs[i])
        if (src == "") continue
        outgoing[src]++
        if (!(src in defined)) {
            ref_line[src] = FNR
        }
    }
    
    # Process targets
    nt = split(targets_str, tgts, /&/)
    for (i = 1; i <= nt; i++) {
        tgt = node_id(tgts[i])
        if (tgt == "") continue
        incoming[tgt]++
        if (!(tgt in defined)) {
            ref_line[tgt] = FNR
        }
    }
}

END {
    orphan_count = 0
    for (node in defined) {
        if (node == "START" || node == "END") continue
        if (!(node in incoming)) {
            orphans[++orphan_count] = node
        }
    }
    
    deadend_count = 0
    for (node in defined) {
        if (node == "START" || node == "END") continue
        if (!(node in outgoing)) {
            deadends[++deadend_count] = node
        }
    }
    
    undef_count = 0
    for (node in ref_line) {
        if (!(node in defined)) {
            undefined[++undef_count] = node
        }
    }
    
    print "=== DANGLING NODE REPORT ==="
    print "File: " FILENAME
    print ""
    
    total = orphan_count + deadend_count + undef_count
    if (total == 0) {
        print "No issues found! Flowchart appears well-formed."
        exit 0
    }
    
    print "ORPHAN NODES (no incoming edges):"
    if (orphan_count == 0) {
        print "  (none)"
    } else {
        for (i = 1; i <= orphan_count; i++) {
            node = orphans[i]
            if (label[node] != "") {
                printf "  - %s: %s\n", node, label[node]
            } else {
                printf "  - %s\n", node
            }
        }
    }
    print ""
    
    print "DEAD-END NODES (no outgoing edges):"
    if (deadend_count == 0) {
        print "  (none)"
    } else {
        for (i = 1; i <= deadend_count; i++) {
            node = deadends[i]
            if (label[node] != "") {
                printf "  - %s: %s\n", node, label[node]
            } else {
                printf "  - %s\n", node
            }
        }
    }
    print ""
    
    print "UNDEFINED REFERENCES:"
    if (undef_count == 0) {
        print "  (none)"
    } else {
        for (i = 1; i <= undef_count; i++) {
            node = undefined[i]
            printf "  - %s: referenced on line %d but never defined\n", node, ref_line[node]
        }
    }
    print ""
    
    print "TOTAL ISSUES: " total
    
    exit (total > 0 ? 1 : 0)
}
' "$FILE"
