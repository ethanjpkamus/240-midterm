#include <iostream>

extern "C" long manage();

using namespace std;

int main(){

	long pass = 0;

	cout << "This is the 240 midterm written by Ethan Kamus" << endl;

	pass = manage();

	cout << "The main function recieved this number: " << pass << endl;
}
