#include <stdio.h>

// This tells the compiler that this is run on the GPU
__global__ void gpu_kernel() {
    // This code runs on the graphics card
    printf("Hello from GPU! Block %d, Thread %d\n", blockIdx.x, threadIdx.x);
}


int main(){
    // This thing will execute gpu_kernel at 1 block and 5 threads 
    gpu_kernel<<<10, 5>>>();

    // Synchronises GPU with CPU. Or else the CPU exits program without executing anything in GPU.
    cudaDeviceSynchronize();
    return 0;
}

main();