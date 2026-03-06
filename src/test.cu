#include <cstdio>
#include <cuda_runtime.h>

__global__ void hello_kernel() {
    int tid = threadIdx.x;
    printf("Hello from GPU thread %d\n", tid);
}

int main() {
    hello_kernel<<<1, 8>>>();
    cudaError_t err = cudaDeviceSynchronize();

    if (err != cudaSuccess) {
        printf("CUDA error: %s\n", cudaGetErrorString(err));
        return 1;
    }

    printf("Done.\n");
    return 0;
}