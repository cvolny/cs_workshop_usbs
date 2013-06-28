def main():
	
	# print the prompt and read the temperature variable from standard input (the keyboard)
	fahrenheit = raw_input("Enter temperature (in Fahrenheit): ")

	# convert the text from the keyboard into a number (float)
	fahrenheit = float(fahrenheit)

	# calculate the celsius temperature
	celsius = (fahrenheit - 32) * 5/9

	# print "Temperature is <temp> Celsius."
	#   in Python we need to convert celsius (currently a number) to a string using str()
	print "Temperature is " + str(celsius) + " Celsius."
	
	# return zero (means no error occurred)
	return 0
	

# if this script is run directly, run the main function above
if __name__ == "__main__":
    main()

