Write-Output "Script is checking for name"

Do {
    $runner=$(buildkite-agent meta-data get name)
    if($runner) {Write-Output "Script run by $runner"}
    else {
    Start-Sleep -Seconds 5
    Write-Output "Script is still checking for name"
    }
} While (!$runner)

