# workflow_activity_counter.ps1
# Usage: workflow_activity_counter.ps1 <workflow_file.xml>
# 
# Derek Pascarella <derekp@ayehu.com>
# Ayehu, Inc.
#
# PowerShell implementation of the Perl script "workflow_activity_counter.pl".  This version only prints only the total activity count.
# At the PowerShell prompt, this script is executed as follows:
# > C:\full\path\to\workflow_activity_counter.ps1 C:\full\path\to\WorkFlow.xml
#
# Sample output:
# Total activities: 4
#
# Alternatively, the following single command will print an integer representing the total number of activities found in the
# specified WorkFlow XML file:
# > (Get-Content "C:\full\path\to\WorkFlow.xml" | Select-String -Pattern '; id=&quot;' -AllMatches).matches.count
#
# Sample output:
# 4

$workflow_file = $args[0]

$count = (Get-Content "$workflow_file" | Select-String -Pattern '; id=&quot;' -AllMatches).matches.count

Write-Host "Total activities: $count" -nonewline
