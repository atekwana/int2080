#!/bin/bash

# logging into int2080 myql server
if [[ $(pwd) = "/c/Users/kasey/int2080" ]]; then 
	mysql -u root -ppw@My5qI#8oo8!
else 
	echo "Wrong directory. Current directory: $(pwd)"
	exit
fi
