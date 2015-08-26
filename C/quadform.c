// Calculate the roots of a quadratic equation

#include <stdio.h>
#include <math.h>

int main(){

	// variables
	float a,b,c;
	float d, root1, root2;

	// user input
	printf(" Enter a, b, and c of quadratic equation:  ");
	scanf("%f %f %f", &a, &b, &c );


	// definition: discriminant
	d = b* b - 4 * a * c;

	
	if( d < 0 ){ // complex roots
		printf("Roots are complex number.\n");
		printf("%.3f% + .3fi", -b/(2*a),sqrt(-d)/(2*a) );
		printf("%.3f% + .3fi", -b/(2*a),-sqrt(-d)/(2*a) );

		return 0;
	}
	else if( d==0 ){ // repeated roots
		printf("Roots are equal.\n");

		root1 = -b / ( 2* a);
		printf("Root of quadratic equation is: %.3f", root1);

		return 0;
	}
	else{ // real roots
		printf("Roots are real numbers.\n");

		root1 = (-b + sqrt(d)) / ( 2 * a );
		root2 = (-b - sqrt(d)) / ( 2 * a );

		printf("Roots of quadratic equation are: %.3f , %.3f", root1, root2);

		return 0;
	}

	return 0;
// main
}