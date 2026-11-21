#!/bin/bash
# Problema 5
# Primeste 13 parametri pe care trebuie sa ii afiseze.

# Scrieti solutia mai jos:
if [ "$#" -lt 13 ]; then
    echo "Atentie: ai transmis $# parametri (se asteapta 13)."
fi

echo "Parametrii 1-9:"
echo "$1 $2 $3 $4 $5 $6 $7 $8 $9"

echo "Parametrii 10-13 (cu acolade):"
echo "${10} ${11} ${12} ${13}"

echo "Toti parametrii primiti:"
for p in "$@"; do
    echo "$p"
done

