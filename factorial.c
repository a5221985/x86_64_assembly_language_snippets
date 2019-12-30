#include <stdio.h>
#include <inttypes.h>

int64_t factorial(int64_t);

int main() {
    printf("%d! = %ld\n", 0, factorial(0));
    printf("%d! = %ld\n", 1, factorial(1));
    printf("%d! = %ld\n", 2, factorial(2));
    printf("%d! = %ld\n", 3, factorial(3));
    printf("%d! = %ld\n", 4, factorial(4));
    printf("%d! = %ld\n", 5, factorial(5));
    return 0;
}
