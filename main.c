#include <stdio.h>
#include <sys/time.h>
#include <stdlib.h>

int fib(int n) {
    int arr[3] = {1, 2, 3};
    for (int i = 1; i < n; i++) {
        arr[2] = arr[2] + arr[1];
        arr[1] = arr[2] - arr[1];
        arr[0] = arr[1] - arr[0];
    }
    return arr[0];
}

int test(int fibnum, int iters) {
    int num = 0;
    for (int i = 0; i < iters; i++) {
        num = fib(fibnum);
    }
    return num;
}

int main(int argc, char* argv[]) {

    int fibnum, iters;
    fibnum = atoi(argv[1]);
    iters = atoi(argv[2]);

    //Warmup
    test(fibnum, 100);

    //Test
    struct timeval start, end;
    gettimeofday(&start, NULL);
    int num = test(fibnum, iters);
    gettimeofday(&end, NULL);

    printf(
        "Answer: %u\nTime: %u milliseconds\n\n",
        num,
        (unsigned int)((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) / 1000
    );
    return 0;
}