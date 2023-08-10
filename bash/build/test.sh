#REGEX
# match any digit character from 0 to 9
\d
# match any word character, a letter, a digit or underscore
\w
# to match a whitespace character like spaces and tabs
\s
#both lowercase and uppercase letter and special characters
[A-Za-z]



#find
#list all files and directories within the /tmp/ directory and its subdirectories which are owned by the user root? 
find /tmp –user root -print

# displays the output of the foo command on the screen and also writes it to a file called /tmp/foodata?
foo | tee /tmp/foodata

# displays the path to the executable file
which foo
#s displays the contents of a gzip compressed tar archive
tar ztf archive.tgz

#g commands redirects the output of ls to standard error
ls >&2

# creates or, in case it already exists, overwrites a file called data with the output of ls
ls > data
#A user accidentally created the subdirectory \dir in his home directory. Which of the following commands will remote that directory
rmdir ~/\dir

#generates a list of user names from /etc/passwd along with their login shell
cut -d: -f1,7 /etc/passwd

#s changes all CR-LF line breaks in the text file userlist.txt to Linux standard LF line breaks and stores the result in newlist.txt
tr –d ‘\r’ < userlist.txt > newlist.txt

# match the following filenames
# ttyS0
# ttyS1
# ttyS2
tty?[0-5]
tty[A-Z][012]

# awk
# -F flag is Field Separator as well
# FS = Field Separator
# OFS = Output Field Separator
# RS = Record Separator
# BEGIN { FS=":";print "---header---" } is the begin block, that
# sets the field separator variable FS (more on this later), and
# prints the header. This gets executed only once before the
# body loop. 
# /mail/ {print $1} is the body loop, that contains a pattern and
# an action. i.e. This searches for the keyword "mail" in the input
# file and prints the 1st field. 
# END { print "---footer---"}' is the end block, that prints the footer.

$awk 'BEGIN { FS=":";print "---header---" } \ 
/mail/ {print $1} \ 
END { print "---footer---"}' /etc/passwd
#output
#---header--- 
#mail 
#mailnull 
#---footer--- 

#print contest of tile
awk '{print}' marks.txt

#read commands from command.awk
# command.awk
# {print}
awk -f command.awk marks.txt 

#assign values to variable
awk -v name=Jerry 'BEGIN{printf "Name = %s\n", name}'
#output Name = Jerry


#It prints a sorted list of global variables and their final values to file. The default file is awkvars.out.
awk --dump-variables ''
cat awkvars.out 
#output
#CONVFMT: "%.6g"
#ERRNO: ""
#FIELDWIDTHS: ""

grep and sed and tr and sort 


Subshells
Arguments
Environmental Variables
Arguments
Searching for strings
Bash design

Question:

You have a log file ‘entries.log’ with timestamps included for each log entry. You need a file that includes the log entries without the timestamps 
using bash noting that this is a sample for the log entry: 2018-01-01 12:56:42 status unpacked dpkg:amd64 1.18.4ubuntu1.3
Which of the following can you use to do this?


Options

    awk &#39;{ print substr(index($0, ($0,$3)) }&#39; entries.log
    awk &#39;{ print substr($0, index($0,$3)) }&#39; entries.log -- # Print all from 3rd field to end of line. Very useful for log parsing.
    field #1   field #2 #3     #4       #5         #6
    2018-01-01 12:56:42 status unpacked dpkg:amd64 1.18.4ubuntu1.3
    awk &#39;{ print substr($0, index($1,$3)) }&#39; entries.log
    awk &#39;{ print substr($1, index($0,$3)) }&#39; entries.log

    Question:
Q 1. You need to print the bash script name each time you run it. How can you achieve this?

echo $PWD
echo $FILENAME
echo $0
echo $?
