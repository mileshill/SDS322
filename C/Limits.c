// Limits.c: Determines machine precision
#include <stdio.h>

int main(){

	int i, n;
	double epsilon, one;

	n = 60;

	epsilon = 1.0;

	for( i=1; i <=  n; i++ ){

		epsilon = epsilon / 2.0;
		one = 1.0 + epsilon;

		printf("%3i \t %20.18f \t %20.18e \n", i, one, epsilon);
	};	

	return 0;
};