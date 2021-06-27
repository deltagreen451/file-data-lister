# file-data-lister
BASH script to find details about a file for school assignment 

Write a script that retrieves the following information about a file:
a. Its size in kilobytes
b. The number of words it contains
c. The date/time it was last modified

All code involved in retrieving this information from a specified file is to be contained within a
function named getprop()
The script will prompt the user for a file name to check, which will then be handed to the getprop()
function, i.e. getprop [file_name]
The getprop() function’s output is to be a message to terminal that states “The file [file_name]
contains [word_count] words and is [file_size]K in size and was last modified [last_modified_date]”
The last modified date is to be formatted as dd-mm-yy hh-mm-ss, e.g. 16-07-2020 09:59:44
