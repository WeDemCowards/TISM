# Welcome to TISM!
*TISM IS SUPPOSED TO BE MODIFIED*

This script is designed to clean large directories from a given root directory.
Users are advised to be careful when deploying this script, as it has the potential cause damage if used improperly.
Something to take note of is that after executing the script once, files will be moved. After a second execution, **files will be deleted**.

Instructions are as follows:

1. Configure Variables:
	- $targetDirectory is the folder that the script will target.
	- $dirAge determines how many days old a folder has to be to be deleted.
	- $confirmation determines whether the shell asks for user confirmation to delete files. Safest left on $true.
	- $recycleFolderName is the name of your recycle folder, you can change it if .recyclebin isn't sexy enough for you
	- $recycleDirectory is the location you want to store the recycle bin.
	
	
2. Store script somewhere that makes sense for you.

3. (Optional) If you want this script to be automated, use Task scheduler.