#!/bin/bash
# Problema 7
# Sterge din directorul curent toate fisierele care au extensia primita
# ca parametru. Accepta mai multe extensii deodata.

# Scrieti solutia mai jos:
if [ "$#" -eq 0 ]; then
    echo "Utilizare: $0 ext1 [ext2 ...]"
    exit 1
fi

for ext in "$@"; do
    ext="${ext#.}"
    for f in *."$ext"; do
        if [ -f "$f" ]; then
            rm -f -- "$f"
            echo "Sters: $f"
        fi
    done
done

