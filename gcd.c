#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

uint64_t gcd(uint64_t, uint64_t);

int main(int argc, char** argv) {
    if (argc != 3) {
        printf("Format: ./a.out a b\n");
        return 1;
    }
    uint64_t a = atoi(argv[1]);
    uint64_t b = atoi(argv[2]);
    printf("GCD(%ld, %ld) = %ld\n", a, b, gcd(a, b));
    return 0;
}
