Task A: Write a Unix command that will display the message below
using echo and the value of your environment variable instead of 
login '/Name/Name':

    My home directory is /Name/Name

Output:
  
    $echo My home directory is $HOME
    My home directory is /Users/ericaandrews
    
    or
    
    $echo "My home directory is $HOME"
    My home directory is /Users/ericaandrews
#############################################################################################

Task B: Write a Unix command to display your login and the system date with both
commands on one line (the output may be on seperate lines):
        
    $logname;date
    ericaandrews
    Sat Aug 25 16:34:07 PDT 2018
#############################################################################################    
    
 Task C: 
  -Write a Unix command that will redirect (>) the results of the server name 
  into the file called temp1; Note: no output is produced:
    
    $hostname -s > temp1
          
  -Write a Unix command that will append the uptime of the server to the same 
  file called temp1; Note: no output is produced:
      
    $uptime >> temp1  
#############################################################################################
          
Task D: Write a Unix command that will display the contents (concatenate) of the file
called temp1:

    $ cat temp1
    This is the contents of the file called temp1
#############################################################################################
     
Task E: Using a pipe, write a UNIX command that will paginate (using pr) the output of the 
who command to 20 lines per page, 2 columns with line numbering: 
  
    $ who | pr -l20 -2 -n
    
    
    2018-08-25 17:18                                                  Page 1


    1	name pts/1	      2018-    11   name pts/14	  2018-
    2	name pts/2	      2018-    12   name pts/15	  2018-
    3	name pts/3	      2018-    13   name pts/16	  2018-
    4	name pts/4	      2018-    14   name pts/17	  2018-
    5	name pts/6	      2018-    15   name pts/19	  2018-
    6	name pts/8	      2018-    16   name pts/22	  2018-
    7	name pts/9	      2018-    17   name pts/23	  2018-
    8	name pts/10	      2018-    18   name pts/24	  2018-
    9	name pts/11	      2018-    19   name pts/26	  2018-
   10	name pts/13	      2018-    20   name pts/28	  2018-


    2018-08-25 17:18                                                  Page 2


   21	name pts/29	      2018-    29   name pts/38	  2018-
   22	name pts/30	      2018-    30   name pts/39	  2018-
   23	name pts/31	      2018-    31   name pts/40	  2018-
   24	name pts/32	      2018-    32   name pts/41	  2018-
   25	name pts/33	      2018-    33   name pts/42	  2018-
   26	name pts/34	      2018-    34   name pts/44	  2018-
   27	name pts/36	      2018-    35   name pts/45	  2018-
   28	name pts/37	      2018-    36   name pts/48	  2018-   
   
