Readme
=====================

Use this script and files to build live usbs for the 
EECS, CS Summer Workshop. You should build one drive with
a larger 'casper-rw' file for persistance (say 2GB) and 
when it's all setup, place that file into overrides/ to 
be deployed to all duplicate usbs. We only create an 8MB 
file knowing it will be overwritten with a big one.

This has been tested with Ubuntu i386 14.04

The instructions under CS Workshop assume that:
1. Multiverse Repo is enabled
2. Installed:
	- nautilus-open-terminal (open terminal instructions)
	- g++ (c++ programming)
	- libcurses5-dev (lynx)
3. The CS Workshop directory is on the desktop of the live user

- cvolny 2014-06-26
