INTRODUZIONE A ECONOMIA COMPUTAZIONALE 

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

DO-LOOPS 
<> non vanno evidenziati nel codice o inseriti, la forma sarebbe:
	do <variable> = <beginning>, <ending>, <stepsize>     nel caso sia un decremento specifichiamo il -1 
	   <executable statement> 
	enddo

DBLE command 
serve a convertire un integer in real*8 



ARRAYS 
Esempi di array di varie dimensioni: 

real*8 :: a(10) array monodimensionale di size 10 partendo da 1 
integer :: b(12, 3, 12) array tridimensionale con varie size per x,y,z 
real*8 :: c(0:12, -3:8) array bidimensionale con specifiche di indicizzazione dove in questo caso da 0:12 la size è pari a 13 

program Arrays 

    implicit none 
    real*8 :: x(0:10), y(0:10) 
    integer :: J 
    
    ! initialise x and calculate y
    
    do j = 0, 10
        x(j) = 1d0 / 10d0*dble(j) 
        y(j) = exp(x(j)) 
    enddo 
    
    !output table of values 
    write(*,'(a)')' x                   y '
    do j = 0, 10
        write(*,'(2f10.3)')x(j), y(j)
    enddo 

endprogram 

OUTPUT:
 x                   y
     0.000     1.000
     0.100     1.105
     0.200     1.221
     0.300     1.350
     0.400     1.492
     0.500     1.649
     0.600     1.822
     0.700     2.014
     0.800     2.226
     0.900     2.460
     1.000     2.718

 
    ! give y the values of x plus 1 
    ! è importante notare come y(:) serva a dire che il programma deve
    ! fillare ogni posizione di all'interno di y 
    ! si chiama NOTAZIONE DI SLICING 
    y(:) = x(:) + 1d0




DOPPIA PRECISIONE 

La doppia precisione in informatica e programmazione si riferisce a un formato di rappresentazione numerica che utilizza più bit rispetto alla singola precisione per memorizzare numeri in virgola mobile.
In Fortran e nella maggior parte dei linguaggi di programmazione moderni:

Singola precisione (Single precision):

Utilizza tipicamente 32 bit (4 byte)
Ha circa 7-8 cifre decimali significative
In Fortran si dichiara con real o real(kind=4)


Doppia precisione (Double precision): nd0 oppure esempio 

real*8 :: a 
a = 6d0 

Utilizza tipicamente 64 bit (8 byte)
Ha circa 15-17 cifre decimali significative
In Fortran si dichiara con double precision o real(kind=8)

I vantaggi della doppia precisione sono:

-- Maggiore precisione: Puoi rappresentare numeri con più cifre significative
-- Intervallo più ampio: Puoi rappresentare numeri molto più grandi e molto più piccoli
-- Minore errore di arrotondamento: I calcoli accumulano meno errori numerici

L'uso tipico della doppia precisione è per calcoli scientifici, simulazioni numeriche, e qualsiasi applicazione dove la precisione è critica.
Esempio in Fortran:
fortranprogram precisione

    implicit none
    real :: x = 1.0/3.0           ! Singola precisione
    double precision :: y = 1d0/3d0  ! Doppia precisione
    
    print *, "Singola precisione:", x  ! Mostrerà circa 0.333333343
    print *, "Doppia precisione:", y   ! Mostrerà circa 0.333333333333333
end program precisione


