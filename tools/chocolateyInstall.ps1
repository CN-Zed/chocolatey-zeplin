$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = https://zpl.io/download-windows-32
$url64 = https://zpl.io/download-windows-64

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64