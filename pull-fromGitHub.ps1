# Script to use to automate pull from a GitHub repo
# v1.3 3/25/2020
# Written by Jason Himmelstein - @jasehimm
# jase@sharepointlonghorn.com
# http://www.sharepointlonghorn.com
# Thanks to Tood Klindt for assistance - @toddklindt
# www.toddklindt.com/blog

$logname = Get-Date -format "MM-dd-yyyy"
Set-Location "Your local GitHub repo location goes here"
$a = $(git pull)
Add-Content -Path "The full path to your log file goes here" -Value "$($logname),$($a)"
