# fix-nswitch-dates
This script reads the file names of Photos media as dates in a format without separators & writes that date in the photo metadata. It was made for use with old Nintendo Switch videos that claim to be from about 1970. It is designed exclusively for use with Apple Photos on Mac.
## Instructions
Using Apple Photos on Mac, open a Photos Library containing Nintendo Switch videos. Make sure the videos have not been renamed.

Select the videos. It is very important that all selected files are named in the expected Nintendo Switch format, as behavior for other files is **undefined** & may have consequences.

Open the script in Script Editor & run it. At you bottom of the window, you can choose the log tab to verify that script is working correctly. For each file, the script logs the filename & the date it wrote on that file.

Note: There is nothing preventing this script working with media other than videos. I specified videos here because I'm pretty sure this issue only ever affected videos.
