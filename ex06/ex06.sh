#!/bin/bash
# Problema 6
# Pentru fiecare fisier din directorul curent care contine cel putin unul
# dintre argumentele din linia de comanda, se cere executia uneia dintre:
#   t - tiparire   d - stergere   c - compilare (produce fisiere temporare *.o)
#   a - afisare informatii        i - ignorare
# Daca fisierul curent este director, la cererea utilizatorului scriptul
# se apeleaza recursiv pentru acel director.
# La terminare, folosind trap, nu se lasa in urma niciun fisier temporar.

# Scrieti solutia mai jos:
if [ "$#" -eq 0 ]; then
    echo "Utilizare: $0 cuvant1 [cuvant2 ...]"
    exit 1
fi

curata_temp() {
    rm -f *.o 2>/dev/null
}

trap 'curata_temp' 0 2 15

for f in * .*; do
    [ "$f" = "." ] || [ "$f" = ".." ] && continue
    [ ! -e "$f" ] && continue

    if [ -d "$f" ]; then
        echo -n "Director gasit: $f. Apel recursiv? (d/n): "
        read rasp
        if [ "$rasp" = "d" ] || [ "$rasp" = "D" ]; then
            (cd "$f" && "$0" "$@")
        fi
        continue
    fi

    if [ -f "$f" ]; then
        potrivire=0
        for arg in "$@"; do
            if grep -q -- "$arg" "$f" 2>/dev/null; then
                potrivire=1
                break
            fi
        done

        if [ "$potrivire" -eq 1 ]; then
            echo "Fisier: $f | Actiuni: t=tiparire, d=stergere, c=compilare, a=informatii, i=ignorare"
            echo -n "Alegeti actiunea: "
            read act

            case "$act" in
                t)
                    cat "$f"
                    ;;
                d)
                    rm -f "$f"
                    echo "Sters: $f"
                    ;;
                c)
                    gcc -c "$f" -o "${f%.*}.o" 2>/dev/null && echo "Compilat in ${f%.*}.o" || echo "Eroare la compilare pentru $f"
                    ;;
                a)
                    ls -la "$f"
                    ;;
                i)
                    echo "Ignorat: $f"
                    ;;
                *)
                    echo "Optiune invalida, ignorat."
                    ;;
            esac
        fi
    fi
done

