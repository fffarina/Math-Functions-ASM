# Math Functions ASM
 Some small mathematical functions written in x86-64 Assembly
 
 _factorial computes the factorization of n
 
 To call it from C, you have first to assemble it into an object file (.o) and then link it to the source in C.
 In order to call it as an external function from the C source, you have to declare it:
 
 extern int _factorial(int n);
 
 _mul_shift performs a shift multiplication between a and b. To call it from C:
 
 extern int _mul_shift(int a, int b);
 
 _div_shift performs a shift division between two unsigned int. To call if from C:
 
 extern unsigned int _div_shift(unsigned int a, unsigned int b);
 
 _root computes the square root of n. To call it from C:
 
 extern double _root(double a);
 
 _pow computes the n power of x. To call it from C:
 
 extern int _pow(int x, int in);
 
 _pow_float is like _pow but accepts float as base of the operand. From C:
 
 extern double _pow_float(double x, int n);
 
 _seeder provides a "true" random number from the high entropy chipset of the CPU to seed PRNGs. From C:
 
 extern unsigned int _seeder(void); 
