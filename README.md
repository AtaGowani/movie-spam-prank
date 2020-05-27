# Movie Spam Prank
This project was made to prank on of my friends...because why not.
## Running the projects
### System Requirements
Need OSX and iMessages working properly on your machine
### Movie Subtitle File
Find the `.srt` file for the movie that you want to send line-by-line. If it is not already a `.txt` format change the extension at the end to `.txt` and that should do it. Double check that it is formatted like the files in `srt_movie_files` folder.
### Running the project
Run the command `osascript sendMessage.applescript {phone_number_of_recipient} {path_of_srt_file}`
#### Example
```
osascript sendMessage.applescript 1234567890 srt_movie_files/3_idiots.srt.txt
```