# Assembly-Project
Final Assessment Tasks



Problem Scenario:
You are working at Namal Institute Agritech Research Laboratories. The field scientist need to determine the soil temperature over a vast field spanning an area of 10 sq.km. It is decided to divide the field into smaller squares, and a temperature sensor be placed in the center of each square. Mr. Salah (the scientist) asks your help. He wants you to determine the number of smaller squares that would fit in the whole field for a given length and width. 
He provides you with two computers, namely, Alpha and Delta, whose specifications are stated in Table 1. Alpha is deployed in the field, where you have to write the program on its pre-configured programming environment i.e. assembly only. Whereas, Delta is placed at NAMAL premises, and can be programmed in C and assembly.
Mr. Salah is adamant that he should be able to give input on a console to ALPHA, in the form of length and width, and the result be displayed on screen. Whereas, for DELTA, a program should read a file (comma separated file containing several lengths and widths), and generate the result in a separate file, as well as input data on console. 
	ALPHA	DELTA
Micro Processor : Intel	8086	P-IV
RAM	64 M Bytes	4 G Bytes
Harddisk	1 G Bytes	1 T Bytes
Operating System	DOS v7 (16 bit)	MS Windows 7 (32/64 bit)
I/O Peripherals	SCSI, Parallel Port, Serial Port	USB, PCI, eSATA
Programming Environment	MASM	Visual C/C++, MASM
Table 1: Hardware Specifications for Alpha and Delta desktop computers.

Furthermore, Mr. Amjad, software development team lead wants you to write the programs in the form of sub-procedures written specifically for the supported architecture (16, 32,or 64 bit). He wants you to test your code for the given inputs stated in Table 2. Write check codes for wrong input.
Mr. Amjad suggests to use inline assembly for the Delta computer by writing the code in C/C++, for file access, whereas, calling external assembly codes using external definitions. But first he suggests to get the functionality tested by writing completely in C, and then using inline assembly and lastly try to call assembly procedures using extern.
Further more, Mr. Amjad suggests to confirm the supported architecture by each of the computer specified.  
Data Type	Width	Height
16-bit	A, -1, 0, 3, 65536	-1, 0, 5, 65536
32-bit	A, -1, 0, 3, 4.29e9	-1, 0,5,4.29e9
64-bit	A, -1, 0, 3, 1.8447e19	-1, 0,5, 1.8447e19
Floating Point	A, -1, 3.13,	B, -5.0, 5.0,
Table 2: Test Inputs for checking code
 
