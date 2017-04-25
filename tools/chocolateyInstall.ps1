$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://zpl.io/download-windows-32'
$url64 = 'https://zpl.io/download-windows-64'
$checksumType = 'sha256';
$checksum32 = 'e5bae0f2250b237ef17ab6662cb1b520b65834fc01979cb3aa513fa695f01115';
$checksum64 = '312ed5a0092fc2e02f6633c169ed100de0ed3bfff6891d3144e528edcab53c42';
$checksum = '';
if ([Environment]::Is64BitOperatingSystem) {
    Write-Output 'Installing 64 bit version.';
    $checksum = $checksum64;
}
else {
    Write-Output 'Installing 32 bit version.';
    $checksum = $checksum32;
}

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64 -Checksum64 $checksum -ChecksumType64 $checksumType -ChecksumType "$checksumType" -Checksum $checksum