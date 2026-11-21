#!/bin/bash
# Problema 1 - directiva while (si citirea cu read)

# Scrieti solutia mai jos:
nr=1
while [ "$nr" -le 5 ]; do
    echo "Iteratia: $nr"
    nr=$((nr + 1))
done

echo -n "Introdu un text (sau 'stop' pentru iesire): "
while read linie; do
    if [ "$linie" = "stop" ]; then
        break
    fi
    echo "Ai scris: $linie"
    echo -n "Introdu un text (sau 'stop' pentru iesire): "
done

