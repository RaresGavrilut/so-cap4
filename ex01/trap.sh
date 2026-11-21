#!/bin/bash
# Problema 1 - redirectarea intreruperilor cu trap
# Testati ce se intampla la Ctrl+C (semnalul 2) si la iesire (0).

# Scrieti solutia mai jos:
trap 'echo " Ai apasat Ctrl+C (semnalul 2)!"' 2
trap 'echo " Scriptul se incheie (semnalul 0 / EXIT)."' 0

echo "Ruleaza scriptul. Apasa Ctrl+C pentru test sau asteapta sa se termine..."
for i in 1 2 3 4 5; do
    echo "Pasul $i..."
    sleep 1
done

