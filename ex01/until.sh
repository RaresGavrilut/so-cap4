#!/bin/bash
# Problema 1 - directiva until

# Scrieti solutia mai jos:
nr=1
until [ "$nr" -gt 5 ]; do
    echo "Iteratia: $nr"
    nr=$((nr + 1))
done

