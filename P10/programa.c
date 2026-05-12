#include<stdio.h>

extern int suma(int a, int b);
extern int mystrlen(char *str);
extern int getBit(int value, int numbit);

int main(){

    printf("=== suma ===\n");
    printf("suma = %d \n", suma(2,5));

    printf("\n=== mystrlen ===\n");
    printf("mystrlen(\"hola\")           = %d\n", mystrlen("hola"));

    printf("\n=== getBit ===\n");
    // 0b1010 = 10
    printf("getBit(10, 0) = %d  (esperado 0)\n", getBit(10, 0));
    return 0;
}
