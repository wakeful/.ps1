$base_dir = "c:\su"
$tmp_time = Get-Date
New-Item $base_dir -Type Directory -Force | Out-Null
$h_files = @{"putty.exe" = "https://the.earth.li/~sgtatham/putty/latest/x86/putty.exe"; "puttygen.exe" = "https://the.earth.li/~sgtatham/putty/latest/x86/puttygen.exe"}
$wget = New-Object System.Net.WebClient
$h_files.GetEnumerator() | % {$wget.DownloadFile($_.Value, $base_dir + "\" + $_.Key)}
Write-Output "All done - took $((Get-Date).Subtract($tmp_time).Seconds)(s)"
