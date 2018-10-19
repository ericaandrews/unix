Part I
The first script should take input from the user using the "read" command.
  -Create a command line option "-d" which, if given, will allow the user 
    to store the "dirs.txt" file in a directory. This file, and the directory, should be created 
    before creating the command line option. 
    
    $ > dirs.txt
    $ mkdir directory
    $ while read -p "Enter the name of the directory to store the dirs.txt file: " name
      > do
      >  if [ -d $name ]; then
      >  mv dirs.txt $name
      >  break
      > fi
      > done
    Enter the name of the directory to store the dirs.txt file: directory
    $ ls directory
    dirs.txt
    #############################################################################################

  -Create a command line option "-f" which, if given, will allow the user to change the name of 
    the "file.txt" file. This file, and a file with the new name, should be created 
    before creating the command line option. 
  
    $ > file.txt
    $ > newfilename.txt
    $ while read -p "Enter the new name of the file.txt file: " name
      > do
      >  if [ -f $name ]; then
      >  mv file.txt $name
      >  break
      > fi
      > done
    Enter the new name of the file.txt file: newfilename.txt
    $ ls newfilename.txt
      newfilename.txt
    $ ls file.txt
      ls: file.txt: No such file or directory
    #############################################################################################

  -Create a command line option "-d" which, if given, will allow the user to enter the name of 
    the directory to be moved into the "dirs.txt" file. The directory should be created before creating
    the command line option. The "dirs.txt" file can be created before creating the command line option or 
    within the 'if-statement'. 
    
    $ mkdir directoryone
    $ while read -p "Enter the name of the directory to be moved into the dirs.txt file: " name
      > do
      >  if [ -d $name ]; then
      >  > dirs.txt
      >  mv dirs.txt $name
      >  echo $name >> dirs.txt
      >  break
      > fi
      > done
    Enter the name of the directory to be moved into the dirs.txt file: directoryone
    $ cat dirs.txt
    directoryone
    #############################################################################################

  -Create a command line option "-f" which, if given, will allow the user to enter the name of 
   the file to be moved into the "dirs.txt" file. The file should be created before creating the 
   command line option. The "dirs.txt" file can be created before creating the command line option or
   within the 'if-statement'. 
   
   $ > file.txt
   $ while read -p "Enter the name of the file to be moved into the dirs.txt file: " name
     > do
     >  if [ -f $name ]; then
     >  > dirs.txt
     >  mv dirs.txt $name
     >  echo $name >> dirs.txt
     >  break
     > fi
     > done
     Enter the name of the file to be moved into the dirs.txt file: file.txt
     $ cat dirs.txt
     file.txt
    #############################################################################################

-Create a command line option “-d” which, if given, will allow the user to store a directory into the “dirs.txt” file. 
This file, and the directory, should be created before creating the command line option. 

$ > dirs.txt
$ mkdir directoryone
$ mkdir directorytwo
$ mkdir directory three
$ while read -p "Enter the name of the directory to be moved into the dirs.txt file: " name
> do
>  if [ -d $name ]; then
>  echo $name >> dirs.txt
>  break
> fi
> done
Enter the name of the directory to be moved into the dirs.txt file: directoryone
$ cat dirs.txt
directoryone
    #############################################################################################

-Create a script of the previous command line arguments and allow the user to input using the “read” command. 
Remove the directory of the ‘dirs.txt’ file before creating the script.

$ cat > myscript.sh
while read -p "Enter the name of the directory to be moved into the dirs.txt file: " name
do
 if [ -d $name ]; then
 echo $name >> dirs.txt
 break
fi
done
control^D
$ chmod +x myscript.sh
$ ./myscript.sh
Enter the name of the directory to be moved into the dirs.txt file: directoryone
$ cat dirs.txt
directoryone
$ ./myscript.sh
Enter the name of the directory to be moved into the dirs.txt file: directorytwo
$ cat dirs.txt
directoryone
directorytwo
$ ./myscript.sh
Enter the name of the directory to be moved into the dirs.txt file: 
directorythree
$ cat dirs.txt
directoryone
directorytwo
directorythree
    #############################################################################################

-Create a command line option “-f” which, if given, will allow the user to store a file into a file called “files.txt”. 
These files should be created before creating the command line option.

$ > files.txt
$ > fileone.txt
$ > filetwo.txt
$ > filethree.txt
$ while read -p "Enter the name of the file to be moved into the file called files.txt: " name
> do
> if [ -f $name ]; then
> echo $name >> files.txt
> break
> fi
> done
Enter the name of the file to be moved into the file called files.txt: 
fileone.txt
$ cat files.txt
fileone.txt
    #############################################################################################

-Create a script of the previous command line arguments and allow the user to input using the “read” command. 
Remove the files of the file named ‘files.txt’ before creating the script.

$ cat > myscripttwo.sh
while read -p "Enter the name of the file to be moved into the file called files.txt: " name
do
if [ -f $name ]; then
echo $name >> files.txt
break
fi
done
control^D
$ chmod +x myscripttwo.sh
$ ./myscripttwo.sh
Enter the name of the file to be moved into the file called files.txt: fileone.txt
$ cat files.txt
fileone.txt
$ ./myscripttwo.sh
Enter the name of the file to be moved into the file called files.txt: filetwo.txt
$ cat files.txt
fileone.txt
filetwo.txt
$ ./myscripttwo.sh
Enter the name of the file to be moved into the file called files.txt: filethree.txt
$ cat files.txt
fileone.txt
filetwo.txt
filethree.txt
    #############################################################################################

-Create a script to read and output the names of the directories from the ‘dirs.txt’ file and the files from the file called ‘files.txt’. 
Use a positional parameter ‘1’ for the ‘dirs.txt’ file and parameter ‘2’ for the file called ‘files.txt’. 
Optional: Use the ‘stat’ command to print each of the files size. 

$ cat > myscriptthree.sh
function myfunction(){ 
cat $1;
cat $2;
}
myfunction dirs.txt files.txt
control^D
$ chmod +x myscriptthree.sh
$ ./myscriptthree.sh
directoryone
directorytwo
directorythree
fileone.txt
filetwo.txt
filethree.txt
$ stat fileone.txt
16777220 7750974 -rw-r--r-- 1 ericaandrews staff 0 0 "Oct 19 06:35:57 2018" "Oct 19 06:35:07 2018" "Oct 19 06:35:07 2018" "Oct 17 20:25:50 2018" 4096 0 0 fileone.txt
$ stat filetwo.txt
16777220 7751026 -rw-r--r-- 1 ericaandrews staff 0 0 "Oct 17 20:27:04 2018" "Oct 19 06:35:14 2018" "Oct 19 06:35:14 2018" "Oct 17 20:27:04 2018" 4096 0 0 filetwo.txt
$ stat filethree.txt
16777220 7751062 -rw-r--r-- 1 ericaandrews staff 0 0 "Oct 17 20:27:58 2018" "Oct 19 06:35:21 2018" "Oct 19 06:35:21 2018" "Oct 17 20:27:58 2018" 4096 0 0 filethree.txt
    #############################################################################################

-Create a script that will run the previous three scripts and will take zero or one parameters. 
Create an error message to produce and exit if more than one parameter is given. 
Remove the directories and files of the ’dirs.txt’ file and the file called ‘files.txt’ before creating the script.  

$ cat > myscriptfour.sh
while read -p "Enter a name for a parameter: " name
do
function myfunctiontwo(){
if [ $2 == ]; then
./myscript.sh
./myscripttwo.sh       
./myscriptthree.sh
else
echo "Only one parameter allowed."
fi
}
myfunctiontwo $name
break
done
control^D
$ chmod +x myscriptfour.sh
$ ./myscriptfour.sh
Enter a name for a parameter:              
Enter the name of the directory to be moved into the dirs.txt file: directoryone
Enter the name of the file to be moved into the file called files.txt: fileone.txt
directoryone
fileone.txt
$ ./myscriptfour.sh
Enter a name for a parameter: parameterone
Enter the name of the directory to be moved into the dirs.txt file: directorytwo
Enter the name of the file to be moved into the file called files.txt: filetwo.txt
directoryone
directorytwo
fileone.txt
filetwo.txt
$ ./myscriptfour.sh
Enter a name for a parameter: parameterone parametertwo
./myscriptfour.sh: line 4: [: parametertwo: unary operator expected
Only one parameter allowed.
$ ./myscriptfour.sh
Enter a name for a parameter: 
Enter the name of the directory to be moved into the dirs.txt file: directorythree
Enter the name of the file to be moved into the file called files.txt: filethree.txt
directoryone
directorytwo
directorythree
fileone.txt
filetwo.txt
filethree.txt
