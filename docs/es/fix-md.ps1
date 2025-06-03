$inBlock = $false
(Get-Content .\README.md) | ForEach-Object {
    if ($_ -match '^\$ http') {
        if (-not $inBlock) {
            $inBlock = $true
            '```bash'
        }
        $_
    } elseif ($inBlock -and ($_ -eq '' -or $_ -notmatch '^\$ http')) {
        $inBlock = $false
        '```'
        $_
    } else {
        $_
    }
} | Set-Content .\README.md