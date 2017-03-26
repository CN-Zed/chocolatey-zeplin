$packageName = "zeplin"
$fileType = "exe"
$args = "--uninstall -s"
$filePath = "$env:APPDATA\..\Local\Zeplin\Update.exe"

Uninstall-ChocolateyPackage $packageName $fileType $args $filePath