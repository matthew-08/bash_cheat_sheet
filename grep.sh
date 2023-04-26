## grep <word to look for> <file name>

## EXAMPLE:
file.txt
new line
new line
new line new
NEW

grep new file.txt
## Finds all occurances of word "new"

grep "^new" file.txt
## Finds all occurances of word "new" at the start of a new line

## -i --ignore-case 
## case insensitive
grep -i "^new" caret.txt
## Pass -i option for case insensitive grep



## -o --only-matching
## prints only the matched parts, does not include full file contents.
grep -io "new" caret.txt



file.txt
new line
new line
new line new
NEW