#!/bin/bash
# Problema 8
# Primeste ca parametru o extensie si afiseaza toate fisierele care au
# extensia identica cu cea primita.

# Scrieti solutia mai jos:
if [ "$#" -eq 0 ]; then
    echo "Utilizare: $0 extensie"
    exit 1
fi

ext="${1#.}"

for f in *."$ext"; do
    if [ -f "$f" ]; then
        echo "$f"
    fi
done

