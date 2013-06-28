#include <string>
#include <iostream>

using namespace std;

int main(int argc, char** argv)
{
	// declare a string variable to store the name entered
	string name;
	
	// print a prompt to standard output (the screen)
	cout << "Enter your name and press enter: ";
	
	// read the line the user enters from standard in (the keyboard)
	getline(cin, name);
	
	// print "Hello <name>!"
	cout << "Hello " << name << "!";
	
	// print a newline (like return) for good measure
	cout << endl;
	
	// return zero (means no error occurred)
	return 0;
}
