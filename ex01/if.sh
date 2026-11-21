#!/bin/bash
# Problema 1 - directiva if (si comanda test / [ ])
# Testati if, elif, else.

# Scrieti solutia mai jos:
echo -n "Introduceti un numar intreg: "
read nr

if [ -z "$nr" ]; then
    echo "Nu ai introdus nimic."
elif [ "$nr" -gt 0 ]; then
    echo "Numarul este pozitiv."
elif [ "$nr" -lt 0 ]; then
    echo "Numarul este negativ."
else
    echo "Numarul este zero."
fi

