// Function.c: Program calls a simple Function

#include <stdio.h>
#include <math.h>

// user-defined function
double func( double x, double y ){

	// local var for return
	double result;
	result = sin( x * y ) + 1.0;
	return result;
}


int main(){

	double Xin = 0.25;
	double Yin = 2.0;
	double c,f;

	c = func( Xin,Yin );

	printf("%f ",c );

	return 0;
}