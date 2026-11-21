#!/bin/bash
# Problema 1 - directiva case
# Testati case cu mai multe tipare si tiparul implicit *.

# Scrieti solutia mai jos:
echo -n "Introduceti un caracter sau un cuvant: "
read val

case "$val" in
    [0-9])
        echo "Ai introdus o cifra."
        ;;
    [a-z]|[A-Z])
        echo "Ai introdus o singura litera."
        ;;
    da|DA|yes|YES)
        echo "Ai raspuns afirmativ."
        ;;
    nu|NU|no|NO)
        echo "Ai raspuns negativ."
        ;;
    *)
        echo "Ai introdus altceva: $val"
        ;;
esac

