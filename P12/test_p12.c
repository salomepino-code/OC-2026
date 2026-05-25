#include<stdio.h>

extern int strlen (char *str);
extern void str_mid( char *str_out, char *str1_in, int start, int end);
extern int clrBit( int value, int nbit) ;

int main(){

    printf("=== Inciso 1 ===\n");
    printf("longitud = %d \n", strlen("hola"));

    printf("\n=== Inciso 2 ===\n");
    char salida[50];
    str_mid(salida, "Hola Mundo", 5, 10);
    printf("subcadena = %s\n", salida);

    printf("\n=== Inciso 3 ===\n");
    printf(" valor =  0x%02X", clrBit(0xFF, 3));
    return 0;
}