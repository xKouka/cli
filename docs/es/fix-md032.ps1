# filepath: c:\Users\oagui\Documents\GitHub\cli\docs\es\fix-md032.ps1
(Get-Content .\README.md) |
ForEach-Object {
    if ($_ -match '^\s*[-*+] ') {
        "`n$_`n"
    } else {
        $_
    }
} | Set-Content .\README.md