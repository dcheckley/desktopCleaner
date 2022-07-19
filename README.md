# Desktop cleaner application

Language: Bash

## Application requirements

1 The application will have a yes no prompt upon execution. 
2 The application will create 3 folders if they are not already present.
3 The application will find the desktop path and set the desktop path variable.
4 The application will group the files in to videos, images and text files and then move them to their respective folder.

## Potential issues

* What if the file already exists in the folder, how will the application handle this? (It replaces the existing file)
* At present this will be a Mac only application.
* At present the application will move all the desktop files to the same dir that the script is held, this is not an issue for me personally but some people may not like this.

## Bugs

* The application will throw the following message, "mv: rename desktopPath/*.txt to ./textFiles/*.txt: No such file or directory" if there are no files of the specified type to move. The application is however still fully fucntional and meets the requirments. This bug will be addressed in the next patch.
