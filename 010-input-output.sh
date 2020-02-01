#!/bin/bash

echo "Printing text with a newline."
echo -n "Printing text without a newline. "
echo "Text continues on previous line."
echo "Escape characters are not interpreted \n\t"
echo -e "Escape characters are interpreted \tTab \nExplicit newline."
