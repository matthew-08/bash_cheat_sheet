#!/bin/bash

# Sed examples

#subsitution - s/pattern/replacement/flags

# Remove all occurances of \n
sed -i 's/\\n/ /g' test.txt
# the g option signifies that we want to replace all occurances globally
# if we don't include g, only the first occurance will be substituted