$path = "C:\Users\lpower\OneDrive - Sinclair Broadcast Group, Inc\!Profile\Documents\Scripts\CatchBlue Clean\test"
$age = (Get-Date).AddDays(-1)

Get-ChildItem -Path $path -Recurse -Force | Where-Object { $_.LastwriteTime -lt $age } | Remove-Item -Force