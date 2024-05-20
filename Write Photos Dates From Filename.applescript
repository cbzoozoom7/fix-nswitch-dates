-- Get the selected items in Photos
tell application "Photos" to set selectedPhotos to the selection

-- Loop through each selected photo
repeat with aPhoto in selectedPhotos
	-- Get the filename
	tell application "Photos" to set theFile to (the filename of aPhoto) as text
	
	-- Extract date and time from filename using string manipulation
	set yearString to text 1 through 4 of theFile
	set monthString to text 5 through 6 of theFile
	set dayString to text 7 through 8 of theFile
	set hourString to text 9 through 10 of theFile
	set minuteString to text 11 through 12 of theFile
	set secondString to text 13 through 14 of the theFile
	-- Convert time to seconds
	set timeString to hourString * 60 * 60
	set timeString to timeString + (minuteString * 60)
	set timeString to timeString + secondString
	
	set photoDate to current date
	tell photoDate
		set its year to yearString
		set its month to monthString
		set its day to dayString
		set its time to timeString
	end tell
	-- Change the date in Photos
	tell aPhoto to set its date to photoDate
	log theFile & " -> " & photoDate
end repeat