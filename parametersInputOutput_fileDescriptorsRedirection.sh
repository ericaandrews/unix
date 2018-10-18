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
