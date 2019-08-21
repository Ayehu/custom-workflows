# PowerShell implementation of the Perl script "workflow_activity_counter.pl" that prints only the total activity count.

$workflow_file = $args[0]

$count = (Get-Content "$workflow_file" | Select-String -Pattern '; id=&quot;' -AllMatches).matches.count

Write-Host "Total activities: $count" -nonewline
