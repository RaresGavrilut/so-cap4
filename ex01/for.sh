#!/bin/bash
# Problema 1 - directiva for
# Testati for pe o lista de fisiere (*.txt) si pe parametrii scriptului.

# Scrieti solutia mai jos:
echo "=== Fisiere *.txt ==="
for f in *.txt; do
    echo "Fisier: $f"
done

echo "=== Parametrii scriptului ==="
for param in "$@"; do
    echo "Parametru: $param"
done

