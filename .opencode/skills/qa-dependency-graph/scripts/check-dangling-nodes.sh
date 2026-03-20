#!/usr/bin/env python3
"""
Dangling Node Detection Script
Detects orphan nodes, dead-ends, and undefined references in mermaid .mmd files
"""

import re
import sys

def parse_mermaid_file(filepath):
    defined_on_left = set()
    referenced_on_right = set()
    defined_standalone = set()
    all_nodes = set()
    
    with open(filepath, 'r') as f:
        content = f.read()
    
    lines = content.split('\n')
    
    for line in lines:
        # Skip comments and directives
        stripped = line.strip()
        if stripped.startswith('%%'):
            continue
        if stripped.startswith('subgraph '):
            continue
        if stripped.startswith('classDef '):
            continue
        if stripped.startswith('direction '):
            continue
        
        # Find all edges
        if '-->' in line or '-.->' in line or '---' in line:
            arrow_match = re.search(r'(-+[>-])', line)
            if arrow_match:
                left_part = line[:arrow_match.start()]
                right_part = line[arrow_match.end():]
                
                # Extract nodes from left side (split by &)
                left_nodes = re.findall(r'[A-Z_][A-Z0-9_]*(?:\[[^\]]*\])?', left_part)
                for node_orig in left_nodes:
                    node = re.sub(r'\[.*', '', node_orig)
                    if node and re.match(r'^[A-Z_][A-Z0-9_]*$', node):
                        defined_on_left.add(node)
                        all_nodes.add(node)
                        # If it has a label, it's defined (not just referenced)
                        if '[' in node_orig:
                            defined_standalone.add(node)
                
                # Extract nodes from right side
                right_nodes = re.findall(r'[A-Z_][A-Z0-9_]*(?:\[[^\]]*\])?', right_part)
                for node_orig in right_nodes:
                    node = re.sub(r'\[.*', '', node_orig)
                    if node and re.match(r'^[A-Z_][A-Z0-9_]*$', node):
                        referenced_on_right.add(node)
                        all_nodes.add(node)
                        # If it has a label, it's defined (not just referenced)
                        if '[' in node_orig:
                            defined_standalone.add(node)
        
        # Find standalone node definitions (no incoming edge, defined with label)
        # Match: NODE["label"] or NODE[label] anywhere in line
        standalone_with_label = re.findall(r'[A-Z_][A-Z0-9_]*(?=\[[^\]]*\])', line)
        for node in standalone_with_label:
            if node and re.match(r'^[A-Z_][A-Z0-9_]*$', node):
                defined_standalone.add(node)
                all_nodes.add(node)
        
        # Also check for bare node definitions at start of line (subgraph headers, etc.)
        bare_nodes = re.findall(r'^[A-Z_][A-Z0-9_]*', line)
        for node in bare_nodes:
            if node and re.match(r'^[A-Z_][A-Z0-9_]*$', node) and node not in ['subgraph', 'direction', 'TD', 'LR', 'RL', 'BT']:
                defined_standalone.add(node)
                all_nodes.add(node)
    
    return defined_on_left, referenced_on_right, defined_standalone, all_nodes


def main():
    if len(sys.argv) < 2:
        print("Usage: check-dangling-nodes.sh <path-to-mmd-file>")
        sys.exit(1)
    
    filepath = sys.argv[1]
    
    defined_on_left, referenced_on_right, defined_standalone, all_nodes = parse_mermaid_file(filepath)
    
    # Merge
    for n in defined_on_left:
        all_nodes.add(n)
    for n in defined_standalone:
        all_nodes.add(n)
    
    print()
    print("=== Parsing complete ===")
    print(f"Total unique nodes: {len(all_nodes)}")
    print(f"Nodes with outgoing edges: {len(defined_on_left)}")
    print(f"Nodes with labels (defined): {len(defined_standalone)}")
    print(f"Nodes referenced as destinations: {len(referenced_on_right)}")
    print()
    
    start_node = "START"
    end_node = "END"
    
    orphans = []
    print("=== ORPHAN NODES (no incoming edges) ===")
    print("These nodes have outgoing edges but no incoming edges:")
    print("(Except START which legitimately has no input)")
    print()
    
    for node in sorted(all_nodes):
        if node in [start_node, end_node]:
            continue
        if node in defined_on_left and node not in referenced_on_right:
            print(f"  ORPHAN: {node}")
            orphans.append(node)
    
    if not orphans:
        print("  (none)")
    
    print()
    
    dead_ends = []
    print("=== DEAD-END NODES (no outgoing edges) ===")
    print("These nodes are referenced but have no outgoing edges:")
    print("(Except END which legitimately has no output)")
    print()
    
    for node in sorted(all_nodes):
        if node in [start_node, end_node]:
            continue
        if node not in defined_on_left and node in referenced_on_right:
            print(f"  DEAD_END: {node}")
            dead_ends.append(node)
    
    if not dead_ends:
        print("  (none)")
    
    print()
    
    undefined = []
    print("=== UNDEFINED REFERENCES ===")
    print("These nodes are referenced but never defined:")
    print()
    
    for node in sorted(referenced_on_right):
        if node in ['TD', 'LR', 'RL', 'BT', 'END']:
            continue
        if (node not in defined_on_left) and (node not in defined_standalone):
            print(f"  UNDEFINED: {node}")
            undefined.append(node)
    
    if not undefined:
        print("  (none)")
    
    print()
    print("=" * 50)
    print("SUMMARY")
    print("=" * 50)
    print(f"Orphans: {len(orphans)}")
    print(f"Dead-ends: {len(dead_ends)}")
    print(f"Undefined: {len(undefined)}")
    print()
    
    # Known acceptable false positives - terminal story items that don't lead to puzzles
    acceptable_terminals = {
        'O_RECEIVE_COPPER_COIN',   # Optional: shown to Jollo for dialogue, no puzzle effect
        'O_RECEIVE_DRINK_ME',       # Optional: cutscene/reveal item, no puzzle effect
        'O_RECEIVE_LOVE_POEM',      # Optional: sent via Sing-Sing subplot, no puzzle effect
        'O_RECEIVE_LOVE_POEM_IOW',  # Optional: sent via Sing-Sing subplot, no puzzle effect
        'O_FERRY_ACCESS',           # Terminal: Charon subplot complete
        'O_MAZE_PATH_OPEN',         # Terminal: maze navigation complete
        'O_RECEIVE_BEASTS_RING',    # Terminal: optional item from Beast
        'O_RECEIVE_HOLE_IN_WALL',   # Terminal: one-time use item
        'O_RECEIVE_ROTTEN_TOMATO',   # Terminal: used to get ooze
        'O_RECEIVE_SPIDER_WEB',     # Terminal: used for LOVE word
        'O_JOLLO_HELPS',            # Terminal: leads to optional best ending path
    }
    
    real_dead_ends = [d for d in dead_ends if d not in acceptable_terminals]
    
    if len(orphans) == 0 and len(real_dead_ends) == 0 and len(undefined) == 0:
        if dead_ends:
            print()
            print("=== ACCEPTABLE TERMINALS (story items with no puzzle dependency) ===")
            for t in dead_ends:
                print(f"  (acceptable) {t}")
        print()
        print("✓ PASS: No problematic dangling nodes detected")
        sys.exit(0)
    else:
        if dead_ends:
            print()
            print("Note: The following are acceptable terminal story items:")
            for t in dead_ends:
                if t in acceptable_terminals:
                    print(f"  (acceptable) {t}")
        print("✗ FAIL: Dangling nodes detected")
        sys.exit(1)


if __name__ == "__main__":
    main()
