function prompt {
    $homePath = (Get-Item ~).FullName
    $currentPath = $PWD.Path

    if ($currentPath.StartsWith($homePath, [System.StringComparison]::OrdinalIgnoreCase)) {
        $displayPath = $currentPath.Replace($homePath, '~')
    } else {
        $displayPath = $currentPath
    }

    Write-Host "$displayPath " -NoNewline -ForegroundColor DarkCyan
    Write-Host "> " -NoNewline -ForegroundColor Gray

    return " "
}
