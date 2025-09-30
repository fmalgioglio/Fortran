This document is a translation and explanation of the provided Italian text about Computational Economics and the FORTRAN 90 programming language, aimed at beginners but progressing to an advanced level.

FORTRAN 90 is a high-level language with the following characteristics:

Imperative: Execution starts from the first line at the top and proceeds sequentially down to the last line.

Procedural: It's a language whose code (functions, subdirectories) can be used and called upon by other programs or code instances.

High-Level: It abstracts away the machine language and the underlying hardware. With the correct compiler, it can run on virtually any machine.

Program Compilation Process
The process of turning source code into an executable program follows these steps:

Source Code: The human-readable program code (e.g., a .f90 or .f95 file).

COMPILER: The compiler takes the source code, potentially including extra libraries, and compiles it into OBJECT CODE. This code contains the binary representation and is typically saved in a file with the .OBJ extension (or similar, like .o).

Executable File: The binary code undergoes a validation phase. If successful, the OBJECT CODE plus any external libraries are linked together to create the EXECUTABLE FILE, typically with a .exe extension.

Binary Code: .obj (or .o)

Executable Code: .exe

Fortran Source Code: .f90/.f95

Fortran Program Naming Rules
The name of a program instance in Fortran must adhere to the following rules:

Cannot be longer than 31 characters.

Must start with a letter.

Subsequent characters can be any symbol (typically letters, numbers, and underscores).

The compiler is case-insensitive (it doesn't distinguish between capital and lower-case letters).

The name cannot be a valid Fortran command (a reserved keyword).

Variable Declaration
By default, Fortran assigns the INTEGER type (INT) to every variable.

To prevent this automatic assignment, the statement IMPLICIT NONE is used, which forces the programmer to explicitly declare the type of every variable.

Building and Compiling the Program
The process starts by generating the object file (.o or .obj), which is the compiled source code. This object file, when linked with external libraries and finally COMPILED (linked), populates the content of the executable file (.exe) within the development environment (like Geany).

Output Formatting (WRITE Statement)
When using the write(*,*) statement for printing output, the first (* is used to specify the output location (e.g., * means the standard output, usually the screen).

The second *) specifies the format in which the variables and the output itself should be printed.

Format codes include:

L2: Logical (Boolean) value (TRUE or FALSE) with a maximum field width of 2.

I3: Integer value with a maximum field width of 3 digits.

F12.4: Real (floating-point) value with a maximum field width of 12 characters including the decimal point, with 4 digits reserved for the decimal part after the point.

X: A white space (blank) character.

A: An arbitrary-length string (text).

DO-LOOPS (Iteration)
The syntax for a DO-LOOP (a form of a for loop) is:

Fortran

do <variable> = <beginning>, <ending>, <stepsize>
    <executable statement>
enddo
The angle brackets < > are not to be included in the code.

If the loop is a decrement (counting downwards), the <stepsize> must be explicitly specified, usually as -1.

The DBLE command is used to convert an integer value into a real*8 (double-precision real) value.

Arrays
Arrays are collections of data elements, all of the same type.

Examples of array declarations:

real*8 :: a(10): A one-dimensional array of size 10, with indices starting from 1.

integer :: b(12, 3, 12): A three-dimensional array with sizes 12×3×12 for the x, y, and z dimensions.

real*8 :: c(0:12, -3:8): A two-dimensional array with explicit index ranges. The first dimension has indices from 0 to 12 (size 13), and the second has indices from -3 to 8 (size 12).

Example Code: Arrays Program
The example program initializes two double-precision arrays, x and y, calculates values for them, and prints a table of the results.

Fortran

program Arrays

    implicit none
    real*8 :: x(0:10), y(0:10)
    integer :: J
    
    ! initialise x and calculate y
    
    do j = 0, 10
        x(j) = 1d0 / 10d0*dble(j)  ! Calculates x(j) = j/10.0
        y(j) = exp(x(j))           ! Calculates y(j) = e^(x(j))
    enddo
    
    !output table of values
    write(*,'(a)')' x           y '
    do j = 0, 10
        write(*,'(2f10.3)')x(j), y(j) ! Prints two real values, each with a 10-char width and 3 decimal places
    enddo

endprogram
Slicing Notation
The line y(:) = x(:) + 1d0 demonstrates Slicing Notation.

y(:) and x(:) means "every position" or "the entire array."

This command is an array operation that sets the value of every element in the array y to the corresponding value in array x plus 1.0.

Double Precision
Double Precision in computing refers to a numerical representation format that uses more bits than single precision to store floating-point numbers, offering greater accuracy.

Single Precision (REAL)
Size: Typically 32 bits (4 bytes).

Precision: Approximately 7–8 significant decimal digits.

Fortran Declaration: real or real(kind=4).

Double Precision (DOUBLE PRECISION or REAL*8)
Size: Typically 64 bits (8 bytes).

Precision: Approximately 15–17 significant decimal digits.

Fortran Declaration: double precision or real(kind=8).

Constant Notation: Uses the suffix d0 (e.g., 6d0 instead of 6.0).

Advantages of Double Precision
Higher Precision: Can represent numbers with more significant figures.

Wider Range: Can represent much larger and much smaller numbers.

Less Rounding Error: Calculations accumulate fewer numerical errors.

Double precision is typically used for scientific computing, numerical simulations, and any application where precision is critical.

Example Code: Precision Comparison
Fortran

fortranprogram precisione

    implicit none
    real :: x = 1.0/3.0            ! Single precision
    double precision :: y = 1d0/3d0 ! Double precision
    
    print *, "Singola precisione:", x    ! Output: ~0.333333343 (Lower precision)
    print *, "Doppia precisione:", y     ! Output: ~0.333333333333333 (Higher precision)
end program precisione
