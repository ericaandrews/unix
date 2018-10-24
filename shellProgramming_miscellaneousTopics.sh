- Create a script which sets several variables and then unsets some of the variables. 
Demonstrate that the variables have been unset.

$ script
Script started, output file is typescript
bash-3.2$ 
bash-3.2$ varone=1
bash-3.2$ vartwo=2
bash-3.2$ varthree=3
bash-3.2$ varfour=4
bash-3.2$ varfive=5
bash-3.2$ 
bash-3.2$ echo $varone $vartwo $varthree $varfour $varfive
1 2 3 4 5
bash-3.2$ unset vartwo
bash-3.2$ unset varfour
bash-3.2$ 
bash-3.2$ echo $varone $vartwo $varthree $varfour $varfive
1 3 5
bash-3.2$ exit
control^D
Script done, output file is typescript
*****************************************************************************


-Set a few constants and attempt to change and unset the values of the constant variables. 

$ CONSTVARONE="one"
$ CONSTVARTWO="two"
$ CONSTVARTHREE="three"
$ CONSTVARFOUR="four"
$ echo $CONSTVARONE $CONSTVARTWO $CONSTVARTHREE $CONSTVARFOUR
one two three four
$ declare -r CONSTVARONE
$ declare -r CONSTVARTWO
$ declare -r CONSTVARTHREE
$ declare -r CONSTVARFOUR
$ echo $CONSTVARONE $CONSTVARTWO $CONSTVARTHREE $CONSTVARFOUR
one two three four
$ unset CONSTVARONE
-bash: unset: CONSTVARONE: cannot unset: readonly variable
$ unset CONSTVARTWO
-bash: unset: CONSTVARTWO: cannot unset: readonly variable
$ CONSTVARTHREE="one"
-bash: CONSTVARTHREE: readonly variable
$ CONSTVARFOUR="two"
-bash: CONSTVARFOUR: readonly variable
*****************************************************************************


-Create several aliases:
 -one must use a variable: use the alias with different values for the variable and demonstrate 
 that changing the variable makes the alias work differently or produce a different result;
 -one must use a constant
 -one must use both a constant and a variable

$ alias sl=ls
$ alias dwp=pwd
$ alias etad=date
$ varalias=10
$ sl
A				hello
Applications			hello.sh
B				hellos
$ dwp
/Users/ericaandrews
$ etad
Fri Oct 19 08:54:16 PDT 2018
$ echo $varalias
10
$ varalias=sl
$ $varalias
-bash: sl: command not found
$ echo $varalias
sl
$ varalias=dwp
$ $varalias
-bash: dwp: command not found
$ echo $varalias
dwp
$ varalias=etad
$ $varalias
-bash: etad: command not found
$ echo $varalias
etad

$ varalias='ls -l'
$ alias sl=$varalias
$ sl
total 384
-rw-r--r--     1 ericaandrews  staff      0 Oct  3 22:32 A
drwx------     3 ericaandrews  staff    102 Jul  1  2016 Applications
-rw-r--r--     1 ericaandrews  staff      0 Oct  3 22:32 B
etc…

$ varalias='id'
$ alias dwp=$varalias
$ dwp
uid=501(ericaandrews) gid=20(staff) groups=20(staff),701(com.apple.sharepoint.group.1),
12(everyone),61(localaccounts),79(_appserverusr),80(admin),81(_appserveradm),98(_lpadmin),
33(_appstore),100(_lpoperator),204(_developer),395(com.apple.access_ftp),
398(com.apple.access_screensharing),399(com.apple.access_ssh)

$ varalias='time'
$ alias etad=$varalias
$ etad

real	0m0.001s
user	0m0.000s
sys	0m0.000s
*****************************************************************************
$ declare -r CONSTALIAS="this constant cannot be changed"
$ echo $CONSTALIAS
this constant cannot be changed
$ alias etad=$CONSTALIAS
$ alias etad
alias etad='this constant cannot be changed'
*****************************************************************************
$ alias etad=$varalias=$CONSTALIAS
$ alias etad
alias etad='time=this constant cannot be changed'
*****************************************************************************


-Create a script which uses read to get input from a user in a case

$ cat > script.sh
read -p "Are you alright? Enter y or n: " answer
while true
do
 case $answer in
 [yY]* ) echo "Good."
         break;;
 [nN]* ) echo "Not good."
         break;;
 * )     echo "Enter y or n: ";;
esac
done
$ chmod +x script.sh
$ ./script.sh
Are you alright? Enter y or n: y
Good.
$ ./script.sh
Are you alright? Enter y or n: n
Not good.
*****************************************************************************


-Create a file with text in it and use exec to redirect input from the file with the text in it. 

$ cat > file.txt
echo "This is a file."
echo "This is text."
$ cat file.txt
echo "This is a file."
echo "This is text."
$ exec < file.txt
$ echo "This is a file."
This is a file.
$ echo "This is text."
This is text.
$ logout
Saving session...
...copying shared history...
...saving history...truncating history files...
...completed.
Deleting expired sessions...140 completed.
