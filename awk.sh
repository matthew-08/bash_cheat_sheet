
##EXAMPLE:
file.txt
--------
new line
new line
new line new
NEW line
---------


awk '{print}' file.txt
## No arguments given - prints entire file.

## Awk assigns variables based on a file seperator
## By default, the file seperator is a space.
awk '{print $1}'
## Print the first word from every line.

awk '{print $2}'
## Print the second word from every line.


## -F sets a user-defined field seperator

new line
new /line
new line new
NEW line

FIRST/SECOND/THIRD
FIRST/SECOND/THIRD
FIRST/SECOND/THIRD

## awk will scan the file for any occurances of this field seperator
## The fields will be assigned to the text between matches.

awk -F "/" '{print $1}' file.txt
## will return all text ( per line ) before the first occurance of a /

awk -F "/" '{print $2}' file.txt
## will return text ( per line ) after the first occurance of a /

## We can also define regex with awk
## This is a pattern-action rule where the regex is a pattern and the action defines what we want to do
## Here, we're saying we want to output only lines which begin with a / symbol
## and from those lines, print the last field from each one.

awk -F "/" '/^\// {print $NF}' /etc/shells



## Multiple Commands

## We can use a semicolon to seperate multiple commands
echo "Hello Wolrd!" | awk '{$2="Friend"; print $0}'
## World is put into the $2 variable and then reassigned to friend, then the whole line is printed.









