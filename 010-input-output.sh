#!/bin/bash

echo "Printing text with a newline."
echo -n "Printing text without a newline. "
echo "Text continues on previous line."
echo "Escape characters are not interpreted \n\t"
echo -e "Escape characters are interpreted \tTab \nExplicit newline."

# Use quotation to embed carriage returns and and span multiple lines.
# See further in here script section for improved multiple line feature.
echo "Line1.
   Line2 (3 leading spaces).
	Line3 (leading tab).
Print of a quotation mark like this \" needs to be escaped."

# read (will strip backslashes).
# read -r (will not strip backslashes, will strip leading and trailing spaces, prefered way).
echo -n "What is your name: "
read -r NAME
echo "Hello $NAME!"
