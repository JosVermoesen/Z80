#include <stdio.h>

int main()
{
    /*
     int has max value of +32767 and min value of -32768 (2 bytes)
     on 8-bit, unsigned int has max value of +65535 and min value
     of 0 (2 bytes)
    */
    int imax = 32767, imin = -32768;
    unsigned int i0 = 65535;

    /*
     char has max value of +127 and min value of -128 (1 byte)
     on 8-bit, unsigned char has max value of +255 and min value
     of 0 (1 byte)
    */
    char test[5]; /* 5 bytes */   
    char *test2;    /* use pointer to point to a string */

    test[0] = 'T';
    test[1] = 'e';
    test[2] = 's';
    test[3] = 't';
    test[4] = '\0'; /* null terminator */
    test2 = "Test Whatever"; /* 14 bytes (13 + 1 for null terminator) */

    printf("test string has value: %s\n", test);
    printf("test string has size: %d bytes\n\n", sizeof(test));

    printf("test2 string has value: %s\n", test2);
    printf("test2 string has size: %u bytes\n", sizeof(test2));
    printf("sems not working as expected\n\n");

    printf("int imax has max +value: %d\n", imax);
    printf("imax has size: %d bytes\n", sizeof(imax));
    printf("int imin has min -value: %d\n", imin);
    printf("imin has size: %d bytes\n", sizeof(imin));
    printf("unsigned int i0 has max value: %u\n", i0);
    printf("i0 has size: %d bytes\n", sizeof(i0));

    return 0;
}