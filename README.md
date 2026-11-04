# Sisteme de Operare – Capitolul 4

**1.** Realizați câte un fișier de comenzi indirecte în care să testați directivele prezentate în lucrare.

**2.** Creați un program „OPTIUNE” care returnează una din valorile: 0, 1, 2, 3 (de exemplu în limbajul C). Realizați un fișier de comenzi comand1 care realizează următoarele:
- primește 2 parametri: primul este numele unui subdirector, S, al doilea numele unui fișier, FILE;
- creează subdirectorul S;
- schimbă directorul curent în S;
- apelează OPTIUNE;
- după valoarea returnată de OPTIUNE se realizează una dintre următoarele:
  - 1 – creează prin copiere de la tastatură fișierul FILE.TXT;
  - 2 – sortează FILE.TXT în FILE.SRT;
  - 3 – afișează FILE.SRT;
  - dacă valoarea returnată este diferită de 0, se apelează din nou programul OPTIUNE, repetându-se procedeul până când acesta returnează 0;
- se afișează directorul curent;
- se revine în directorul părinte.

**3.** Realizați un fișier comand2 care apelează comand1 cu diferite valori pentru parametri.
Îmbunătățiți comand1, făcând verificări de existență a fișierelor dacă OPTIUNE returnează 2 sau 3.
Modificați comand1 și comand2 astfel încât să nu mai primească parametri formali, ci să își ia datele din variabilele interpretorului.

**4.** Realizați comand3 care primește ca parametru numele unui subdirector S pe care trebuie să îl șteargă împreună cu toate fișierele pe care le conține. Se presupune că S nu conține alte subdirectoare.

**5.** Realizați un fișier de comenzi indirecte care primește 13 parametri pe care trebuie să îi afișeze.

**6.** Realizați un fișier de comenzi indirecte care, pentru fiecare fișier din directorul curent care conține cel puțin unul dintre argumentele din linia de comandă, va cere execuția uneia dintre următoarele comenzi:
- t – tipărire;
- d – ștergere;
- c – compilare (produce fișiere temporare `*.o`);
- a – afișare informații;
- i – ignorare.

Dacă fișierul curent este director, atunci, dacă utilizatorul dorește, se apelează recursiv pentru acel director fișierul de comenzi.
La terminare, folosind redirecționarea întreruperilor, să se facă toate operațiile necesare pentru o terminare „curată”, nelăsând în urmă niciun fișier temporar generat.

**7.** Scrieți un fișier de comenzi care să șteargă din directorul curent toate fișierele care au extensie identică cu cea primită de fișierul de comenzi ca parametru. Fișierul de comenzi poate să accepte mai multe extensii deodată.

**8.** Realizați un fișier de comenzi care primește ca parametru o extensie și să afișeze toate fișierele care au extensia identică cu cea primită ca parametru.
