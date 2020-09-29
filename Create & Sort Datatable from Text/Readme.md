Create & Sort Datatable from Text Create & Sort Datatable from Text
takes data from text file converts it into string then it is breaking
the column names by delimiter comma and rows by spaces and placing the
table in to excel file by applying sorting on the basis of defined
column. This use-case has following major activities used in it:

Read text from file Convert Text To Table Write Excel Sort Datatable

In the Read text from file activity ,it is reading data from text file
and giving the output data in the form of string.

Note:- Pass the location of text file as an input into the workflow. In
the second activity of workflow , we are writing the text output into
the virtual datatable by applying some delimiters.

Note: Delimiters can be changed as per the requirement while using the
code.

In the third activity of workflow , we areapplying sorting conditions on
the columns of datatable.

Note: we can provide the order of sorting as per the requirement.

In the fourth activity of workflow , we are appending the virtual
datatable into the excel file.This step can be removed as per the
requirement that is if we want the output into some file ,we can use it
otherwise we can completely ignore this step.

Note:- Pass the location of Excel file as an input into the workflow.
