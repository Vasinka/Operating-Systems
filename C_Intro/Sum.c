#include <stdio.h>   
int total = 0;  

int sum (int a, int b) 
{   
    return a + b;      
}

int main ()        
{

    total = sum (1, 5);
    printf ("Sum of 1 and 5 is : %d \n", total);
    return 0;
}
 
