#include <iostream>

using namespace std;

extern "C" void showarray(int arr[], int size);

void showarray(int arr[], int size){

	for(int i = 0; i < size; ++i){

		cout << arr[i] << endl;

	}
	
}
