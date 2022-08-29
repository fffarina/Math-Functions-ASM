# Math Functions ASM
 Some small mathematical functions written in x86-64 Assembly
 
 _factorial computes the factorization of n
 
 To call it from C, you have first to assemble it into an object file (.o) and then link it to the source in C.
 In order to call it as an external function from the C source, you have to declare it:
 
 extern int _factorial(int);
 
 _mul_shift performs a shift multiplication between a and b. To call it from C:
 
 extern int _mul_shift(int, int);
 
 _div_shift performs a shift division between two unsigned int. To call if from C:
 
 extern unsigned int _div_shift(unsigned int, unsigned int);
 
 _mod_shift is analogous to _div_shift but returns the modulus. 
 
 extern unsigned int _mod_shift(unsigned int, unsigned int);
 
 _root computes the square root of n. To call it from C:
 
 extern double _root(double);
 
 _sqrt also computers the square root but using the sqrtsd instruction. To call it:
 
 extern double _sqrt(double)
 
 _pow computes the n power of x. To call it from C:
 
 extern int _pow(int x, int n);
 
 _pow_float is like _pow but accepts float as base of the operand. From C:
 
 extern double _pow_float(double x, int n);
 
 _seeder provides a "true" random number from the high entropy chipset of the CPU to seed PRNGs. From C:
 
 extern unsigned int _seeder(void); 
 
 _rand_double generates a random double precision value between 0 and 1. To call it:
 
 extern double _rand_double(void);
 
 _inv_root generates approximation for inverse square root. Prototype:
 
 extern float _inv_root(float);
