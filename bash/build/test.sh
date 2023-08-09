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
command.awk
{print}
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

You have a log file ‘entries.log’ with timestamps included for each log entry. You need a file that includes the log entries without the timestamps using bash noting that this is a sample for the log entry: 2018-01-01 12:56:42 status unpacked dpkg:amd64 1.18.4ubuntu1.3
Which of the following can you use to do this?


Options

    awk &#39;{ print substr(index($0, ($0,$3)) }&#39; entries.log
    awk &#39;{ print substr($0, index($0,$3)) }&#39; entries.log
    awk &#39;{ print substr($0, index($1,$3)) }&#39; entries.log
    awk &#39;{ print substr($1, index($0,$3)) }&#39; entries.log

    Question:
Q 1. You need to print the bash script name each time you run it. How can you achieve this?

echo $PWD
echo $FILENAME
echo $0
echo $?
