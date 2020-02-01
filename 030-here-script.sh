#!/bin/bash

# Leading tabs will not be ignored.
cat << _EOF_
	Leading tab.
	  Leading tab followed by 2 spaces.
_EOF_

# Leading tabs will be ignored, leading spaces will not be ignored.
cat <<- _EOF_
	Leading tab (ignored).
	  Leading tab (ignored) followed by 2 spaces.
_EOF_

# Substitute data and print quotation marks (no need to escape them).
NAME="Wim Van den Wyngaert"
A=10
B=20
cat <<- _EOF_
	Name between quotation marks: "$NAME".
	Current date: $(date).
	Sum of 10 and 20: $((A + B)).
_EOF_
