# Client's requirements
User story:
> I need folders in a particular directory to be automatically deleted after 30 days without modification.
> This is because my co-workers are too lazy to delete shit as we go.

- target directory is hosted on a NAS drive
- folders host big bmps for C&C machine

# Implementation
PowerShell Script
Windows Schedule Task

## Issues:
- [x] script will attempt to move .recyclebin into .recyclebin, WriteError IOException
- [x] $recycleDirectory should be editable without issue. not a huge deal but...
- [x] v1.7 has not been tested.