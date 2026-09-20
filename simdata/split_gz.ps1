$chunkSize = 1.5GB
$largeFiles = Get-ChildItem -Filter "*.csv.gz" -Recurse | Where-Object { $_.Length -gt 1.8GB }

foreach ($file in $largeFiles) {
    Write-Host "Splitting $($file.Name)..."
    $stream = [System.IO.File]::OpenRead($file.FullName)
    $buffer = New-Object byte[] 64MB
    $partNumber = 0

    while ($stream.Position -lt $stream.Length) {
        $partName = "{0}.part{1:D2}" -f $file.FullName, $partNumber
        $partStream = [System.IO.File]::Create($partName)
        $bytesRemainingInChunk = $chunkSize

        while ($bytesRemainingInChunk -gt 0 -and $stream.Position -lt $stream.Length) {
            $bytesToRead = [System.Math]::Min($buffer.Length, $bytesRemainingInChunk)
            $bytesRead = $stream.Read($buffer, 0, $bytesToRead)
            if ($bytesRead -le 0) { break }
            $partStream.Write($buffer, 0, $bytesRead)
            $bytesRemainingInChunk -= $bytesRead
        }

        $partStream.Close()
        $partNumber++
    }
    $stream.Close()
    Write-Host "Finished splitting $($file.Name) into $partNumber parts."
    # Optional: Delete original oversized file so only parts are uploaded
    Remove-Item $file.FullName
}
