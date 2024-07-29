## Welcome to TISM! 
# TISM
# Is
# Supposed to be
# Modified

############## Config Variables ###############################################

# the directory upon which the script will run
$targetDirectory = "C:\Users\Aaron\Desktop"

# number of days since modification of directories, as a negative.
$dirAge = -5000

# user confirmation of deletion. set to $false if script is scheduled
$confirmation = $true

# name for recycle bin folder
$recycleFolderName = ".recyclebin"

# location of the recycle bin folder. does not have to be in root directory.
$recycleDirectory = "$targetDirectory\$recycleFolderName"

###############################################################################

# Generate README
$dirAgeReadable = ($dirAge * -1)
ECHO "WARNING: Folders in this directory that have not been modified in $dirAgeReadable days may be deleted." > "$targetDirectory\WARNING.txt"

# STAGE 1: Delete files from recycle bin.
# If recycle bin does not exist, create one.
if (!(Test-Path $recycleDirectory)){
	New-Item -Path $recycleDirectory -ItemType "directory"
	ECHO "WARNING: Do not place any files in this directory that you do not wish to be deleted." > "$recycleDirectory\README.txt"
	}
else {
	Get-ChildItem $recycleDirectory -Exclude "README.txt" |
	Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays($dirAge))} |
	Remove-Item -Force -Recurse -Confirm:$confirmation
}

# STAGE 2: Move old folders to the recycle bin
Get-ChildItem $targetDirectory -Directory -Exclude $recycleFolderName  |
Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays($dirAge))} |
Move-Item -Destination $recycleDirectory
