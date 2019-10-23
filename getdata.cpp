#include <iostream>

using namespace std;

extern "C" int getdata(int arr[], int size);

int getdata(int arr[], int size){

	int count = 0;
	int temp = 0;

	while(!cin.eof()){

		if(count == size){
			cout << "The maximum number of integers has been reached (" << size << ")" << endl;
			break;
		}
		cin >> temp;
		arr[count] temp;
		count++;
	}

	return count;

}
