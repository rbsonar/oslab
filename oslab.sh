echo "WELCOME TO RUSHIKESH SONAR FILE MANAGEMENT SYSTEM"

echo "Enter name of the directory to enter : "
read dir
cd $dir
echo "Entered into given directory successfully."


i=1
while [ $i = 1 ]
   do
	echo "1)Press 1 to  Create a new file"
	echo "2)Press 2 to Create a new directory"
	echo "3)Press 3 to Search for a file"
	echo "4)Press 4 to Search for a directory"
	echo "5)Press 5 to Delete a file"
	echo "6)Press 6 to Rename a file"
	echo "7)Press 7 to Show contents of directory"
	echo "8)Press 8 to Go back to main directory and enter into another directory."
	echo "9)Press 9 to Enter into a sub directory"
	echo "10)Press 10 to Exit Program"
	echo "Enter your choice"
	read ch

	case $ch in 
	1)
	echo "Enter name of new file  to be created : "
	read newfile
	if [ -f $newfile ]
       	then
	   echo " This file already exists in system!"
	else 
	   touch $newfile
	   echo "File created successfully."
   	fi;;
   	
   	2)
	echo "Enter name of new directory to be created : "
	read newdirec
	if [ -d $newdirec ]
       	then
	   echo "This Directory already exists!"
	else 
	   mkdir $newdirec
	   echo "Directory created successfully."
   	fi;;

	3) 
	echo "Enter name of file to be searched : "
	read searchfile
	if [ -f $searchfile ]
       	then
	   echo "File exist in this directory"
	else 
	   echo "No such file exists in this directory"
	fi;;
	
	4) 
	echo "Enter name of directory  to be  searched :  "
	read searchdirec
	if [ -d $searchdirec ]
       	then
	   echo "Directory found !"
	else 
	   echo "No such directory exists"
	fi;;

	5) 
	echo "Enter  name of the file to be  deleted : "
	read dfile
	if [ -f $dfile ]
       	then 
	   rm $dfile
	   echo "File deleted successfully"
	else 
	   echo "File doesn't exist"
	fi;;
	
	6) 
	echo "Enter name of file to be rename : "
	read ofile
	if [ -f $ofile ]
       	then
	   echo "Enter new file name : "
   	   read nfile 
	   mv $ofile $nfile 
    	   echo "The file is successfully renamed"
	else 
    	   echo "No such file exists"
	fi;;

	7)
	ls;;

	8) 
	cd ..
	echo "You need to  come back to main directory"
	echo "Enter name of the directory - "
	read dname
	if [ -d $dname ]
       	then 
	   cd $dname
   	   echo "Switched to $dname"
	else 
     	   echo "Directory doesn't exist."
	fi;;
	
	9) 
	echo "Enter name of the directory - "
	read dnam
	if [ -d $dnam ]
       	then 
	   cd $dnam
   	   echo "Switched to $dnam"
	else 
     	   echo "Directory doesn't exist."
	fi;;

	10) 
	echo "YOU HAVE SUCCESSFULLY EXITED FROM RUSHIKESH SONAR FILE MANAGEMENT SYSTEM. "
	i=0
	;;

	esac

done

