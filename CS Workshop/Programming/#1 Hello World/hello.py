def main():
	
	# declare a string variable to store the name entered (default to empty)
	#   (this is optional in python)
	name = ""
	
	# print the prompt and read the name variable from standard input (the keyboard)
	name = raw_input("Enter your name and press enter: ")
	
	# print "Hello <name>!"
	print "Hello " + name + "!"
	
	# return zero (means no error occurred)
	return 0	

# if this script is run directly, run the main function above
if __name__ == "__main__":
    main()

