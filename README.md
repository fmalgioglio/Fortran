
È un libro per principianti ma che progredisce a un livello avanzato usando FORTRAN 90. 

FORTRAN 90 è un linguaggio ad alto livello.

- Imperativo: inizia a compilare dalla prima riga in alto fino all'ultima in basso  
- Procedurale: è un linguaggio che può essere usato in altre istanza funzioni e subdirectories da altri programmi  
- Alto-livello: astrae il linguaggio macchina e l'hardware sulla quale lavora e con il giusto compilatore può girare su qualsiasi macchina 

 
1. codice sorgente 
	2. COMPILATORE: prende librerie extra e compila L'OBJECT CODE che contiene il codice binario in .OBJ 
	3. IL CODICE BINARIO passa una fase di validazione e se tutto va bene OBJECT CODE + Librerie esterne daranno vita al file ESEGUIBILE .exe 

quindi codice binario .obj 
codice eseguibile .exe 
codice fortran .f90/f95

L'istanza del codice program in Fortran non può:

1. avere più di 31 caratteri
2. deve iniziare con una lettera 
3. gli altri caratteri possono avere qualsiasi simbolo 
4. il compilatore è case insesitive a capital letters 
5. il nome non può essere un comando valido 

DICHIARAZIONE DI VARIABILI 
Di per sé fortran assegna ogni variabile al tipo INTEGER INT. 
Per prevenire questa auto-assegnazione usiamo IMPLICIT NONE.

BUILD E COMPILAZIONE DEL PROGRAMMA 
Iniziamo generando il file .o ovvero oggetto sorgente che associato poi a librerie esterne e 
COMPILATO andrà a popolare il nostro file .exe all'interno di geany 

FORMATTAZIONE 
 
Studiando (*,*) verso una write e quindi una stampa il primo (*, serve per descrivere una location a dove far puntare la variabile 
mentre il secondo ,*) specifica il formato per la quale vogliamo la stampa delle variabili e della stampa stessa. 

-l2 valore booleano true or false con massimo grandezza di 2 
-i3 integer di massimo in questo caso 3 digits 
-f12.4 valore reale con massimo 12 digits INCLUSO IL PUNTO DECIMALE di cui 4 nei valori decimali dopo virgola 
-x spazio bianco 
-a string di lunghezza arbitraria 
