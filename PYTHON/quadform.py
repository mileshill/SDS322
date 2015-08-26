# Quadratic equation solver
"""
Quadratic solver takes as input three coefficents of a quadratic equations and uses the standard
solution to solve for the roots.

All values are assumed to be REAL
"""


# imports
from sys import stdin,stdout
from math import sqrt


def main():
    
    # user input
    try:
    	a,b,c = map(float, input("Enter values for a,b,c: ").split())
    except Exception:
    	stdout.write("Three values required as input.")

    # discriminant
    DISC = b**2 - 4 * a * c 
    
    # imaginary roots
    if DISC < 0:
        stdout.write( "Roots are imaginary\n" )
        return None
    
    # real roots
    ROOT1 = ( -b + sqrt( DISC )  ) / (2 * a)
    ROOT2 = ( -b - sqrt( DISC ) ) / ( 2 * a)
    
    # output
    for root in list(map( str, [ ROOT1,ROOT2 ] )):
        stdout.write( root + "\n" )
    
        
    
    


main()