
# Azure E-Commerce Application
# HTTP response-time performance test

$targetUrl = Read-Host "Enter your Azure application URL"
$numberOfRequests = 20

Write-Host "`nStarting performance test..."
Write-Host "Target: $targetUrl"
Write-Host "Requests: $numberOfRequests`n"

$results = @()

for ($i = 1; $i -le $numberOfRequests; $i++) {
    $result = & curl.exe -o NUL -s -w "%{http_code} %{time_total}" $targetUrl

    if ($LASTEXITCODE -eq 0 -and $result -match '^(\d{3}) ([\d.]+)$') {
        $statusCode = [int]$Matches[1]
        $responseTime = [double]$Matches[2]

        $results += [PSCustomObject]@{
            Request = $i
            StatusCode = $statusCode
            ResponseTimeSeconds = $responseTime
        }

        Write-Host "Request $i : HTTP $statusCode - $responseTime seconds"
    }
    else {
        Write-Host "Request $i failed."
    }
}

if ($results.Count -gt 0) {
    $successful = @($results | Where-Object {
        $_.StatusCode -ge 200 -and $_.StatusCode -lt 300
    })

    $average = ($results | Measure-Object ResponseTimeSeconds -Average).Average

    Write-Host "`n--- Test Summary ---"
    Write-Host "Completed requests: $($results.Count)"
    Write-Host "Successful 2xx responses: $($successful.Count)"
    Write-Host ("Average response time: {0:N3} seconds" -f $average)
}