# Welcome to TISM!

*TISM IS SUPPOSED TO BE MODIFIED*

This is a relatively simple script for Windows PowerShell written at the request
of a friend to assist his workflow.

It deletes all items under a given directory that haven't been modified for a 
given amount of time. This makes it possible to automate the process of cleaning
directories where you can expect lots of old redundant files. (Think of your
Mum's Downloads folder).

The script makes clear which variables should be modified to achieve the desired
effect. Users are advised to be careful when deploying this script, as it has 
the potential cause loss of important data if deployed incorrectly.

## Usage

Modifiable variables:

1. Configure Variables:
	- `$targetDirectory` is the folder that the script will target.
	- `$dirAge` determines how many days old a folder has to be to be deleted.
	- `$confirmation` determines whether the shell asks for user confirmation to delete files. Safest left on $true.
	- `$recycleFolderName` is the name of your recycle folder, you can change it if .recyclebin isn't sexy enough for you
	- `$recycleDirectory` is the location you want to store the recycle bin.
	
	
2. Store script somewhere that makes sense for you.

3. (Optional) If you want this script to be automated, use Task scheduler.

*note: upon running the script, old files will be moved to a new "recycle bin"
directory. The script deletes any files inside of this folder upon a subsequent
run.*
