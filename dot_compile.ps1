Get-ChildItem ".\graphviz" -Filter *.dot |
ForEach-Object {
    $fileName = ($_.FullName -split "\\")[-1]
    Write-Host $fileName

    $outputFileName = ($fileName -split "\.")[0] + ".svg"
    Write-Host $outputFileName
    dot -Tsvg -o "public\$outputFileName" $_.FullName
}