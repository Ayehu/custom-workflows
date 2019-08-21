# PowerShell implementation of the Perl script "workflow_activity_counter.pl" that prints only the total activity count.  At the
# PowerShell prompt, this script would be executed as follows:
#
# > C:\full\path\to\workflow_activity_counter.ps1 C:\full\path\to\WorkFlow.xml
#
# Sample output:
# Total activities: 4

$workflow_file = $args[0]

$count = (Get-Content "$workflow_file" | Select-String -Pattern '; id=&quot;' -AllMatches).matches.count

Write-Host "Total activities: $count" -nonewline
