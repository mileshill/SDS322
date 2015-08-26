'''
Created on Aug 7, 2015

@author: Miles
'''
import numpy as np
import matplotlib.pyplot as plt
def main():
    for val in range(1,21):
        print(val)
    
    a = np.arange(20) * 2 * np.pi / 20
    b = np.sin(a)
    
    plt.plot(a,b)
    plt.show()   
    print(" Hello World ")
    
main()
        
