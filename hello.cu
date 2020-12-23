#include <stdio.h>

__global__ void helloFromGPU(void){
    printf("hello world from gpu!\n");
}

int main(void){
    // hello from cpu
    printf("hello from cpu!\n");
    // 1 thread block and 10 threads
    helloFromGPU <<<1,10>>>();
    cudaDeviceReset();
    return 0;
}