(Get-Content .\README.md) |
ForEach-Object {
    if ($_ -match '^\s*```') {
        "`n$_`n"
    } else {
        $_
    }
} | Set-Content .\README.md