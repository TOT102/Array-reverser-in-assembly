// ArrayReverser.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

extern "C" void reverser(int* d_arr, const int* s_arr, int num_of_elements);

int main()
{
    const int n = 10;
    int x[n], y[n];

    for (int i = 0; i < n; i++) {
        x[i] = i; 
    }

    reverser(y, x, n);

    for (int i = 0; i < n; i++) 
    {
        printf("i: %5d y: %5d x: %5d\n", i, y[i], x[i]);

    }

    return 0;
}