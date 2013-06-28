#include <string>
#include <iostream>

using namespace std;

int main(int argc, char** argv)
{
	// declare a float variable to store the fahrenheit temperature
	float fahrenheit;

	// declare a float variable to store the celsius temperature
	float celsius;
	
	// print a prompt to standard output (the screen)
	cout << "Enter temperature (in Fahrenheit): ";
	
	// read the next float the user enters from standard in (the keyboard).
	//   Notice this is different than the last program.  We used getline
	//   before to read a whole line, but now we're only interested in the
	//   next float variable.  What the keyboard enters is text (a string),
	//   but cin handles the conversion to a number type (like float) for us.
	cin >> fahrenheit;
	
	// calculate the celsius temperature
	celsius = (fahrenheit - 32) * 5/9;

	// print "Temperature is <temp> Celsius."
	cout << "Temperature is " << celsius << " Celsius.";
	
	// print a newline (like return) for good measure
	cout << endl;
	
	// return zero (means no error occurred)
	return 0;
}
