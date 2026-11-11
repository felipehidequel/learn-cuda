#include <stdio.h>

__global__ void helloKernel() {
    printf("hello from %d - %d\n", threadIdx.x, blockDim.x);
}

int main() {
    helloKernel<<<1, 5>>>();
    
    cudaDeviceSynchronize();
    
    return 0;
}
