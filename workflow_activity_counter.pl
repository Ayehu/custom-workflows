#!/usr/bin/perl
#
# workflow_activity_counter.pl
# Written by Derek Pascarella at Ayehu, Inc.
#
# Count the number of activities in a given WorkFlow XML file.  The full file path should be passed to this script as an argument.

# Our modules.
use strict;

# Our variables.
my $count = 0;
my $pattern = "; id=&quot;";
my $workflow_file = $ARGV[0];
my $workflow_xml;
my $workflow_name;

# Open WorkFlow XML file or print error if not found.
open(FH, '<', $workflow_file) or die $!;

# Iterate through each line of the file until the WorkFlow XML is found.
while(<FH>)
{
	if(grep/\<WorkflowInfo/, $_)
	{
		# Store current line of file in "workflow_xml".
		$workflow_xml = $_;
	}
}

# Extract the WorkFlow's name from the XML.
$workflow_name = $workflow_xml;
$workflow_name =~ s/^[^Name=\"]*Name=\"//;
$workflow_name =~ s/\" Description.*//;
$workflow_name =~ s/^\s+|\s+$//g;

# Count the number of instances "pattern" is found in the WorkFlow XML.
$count = () = $workflow_xml =~ /$pattern/gi;

# Print results.
print "WorkFlow File: $workflow_file\n";
print "WorkFlow Name: $workflow_name\n";
print "Total activities: $count\n";
