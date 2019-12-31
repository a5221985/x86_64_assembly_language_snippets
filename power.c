#include <stdio.h>
#include <inttypes.h>

uint64_t power(uint64_t a, uint64_t b);

int main() {
    uint64_t a = 25;
    uint64_t b = 10;
    printf("%ld^%ld = %ld\n", a, b, power(a, b));
    return 0;
}
