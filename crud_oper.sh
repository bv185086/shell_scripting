fileExists()
{
	read -p "Enter the file name you want to check" file
        path="/home/likhitha/$file"
	if [ -f "$path" ]
	then
		echo "File exists"
	else
		echo "no such file"
	fi
}
makeDir()
{
	read -p "Enter a directory to be created :" dir
	path="/home/likhitha/$dir"
	if [ -d "$path" ]
	then 
		echo "Directory already exists"
	else
		mkdir $dir
		echo "Directory created"
	fi
}

readFile()
{
	read -p "Enter the file name you want to read" file
	path="/home/likhitha/$file"
	if [ -f "$path" ]
	then 
		cat $path
	else
		echo "no such file"
	fi
}

deleteFile()
{
	read -p "Enter the file name you want to delete" file
	path="/home/likhitha/$file"
	if [ -f "$path" ]
	then
		rm $path
	else
		echo " no such file"
	fi
}
appendtoFile()
{
	read -p "Enter the file you want to append text to" file
        path="/home/likhitha/$file"
	if [ -f "$path" ]
	then
		read -p "Enter the data you want to append to the file:"data
		echo $data >> $path
	        echo "data appended"
	else
	 	echo "no such file"
	fi
}
renameFile()
{
	read -p "Enter the file name you want to change" file
        path="/home/likhitha/$file"
	if [ -f "$path" ]
	then
		read -p "enter the new name for file:" newName
		newpath="/home/likhitha/$newName"
		mv $path $newpath
		echo "Renamed the file"
	else
		echo " no such file"
	fi
}
echo " Enter 1 to check if a file exists"
echo " Enter 2 to create a directory"
echo " Enter 3 to read a file"
echo " Enter 4 to delete a file"
echo " Enter 5 to append text to a file"
echo " Enter 6 to rename a file"
read -p "enter number:" num
case "$num" in
	1)
		fileExists
		;;
	2)
		makeDir
		;;
	3)
		readFile
		;;
	4)
		deleteFile
		;;
	5)
		appendtoFile
		;;
	6)
		renameFile
		;;

	*)
		"Undefined input"
		;;
esac
