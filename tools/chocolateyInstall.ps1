$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/1.4.0/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/1.4.0/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '9411dcda3a43f26963024a798793510ccf43d86a9df04b63ddda7372d198ea07';
$checksum64 = '714f1b67e51497b139b5dd0859c043a3a3ed8c87fa6986607e4fc7a02692d4fd';
$checksum = '';
if ([Environment]::Is64BitOperatingSystem -and !$env:chocolateyForceX86 ) {
    Write-Output 'Installing 64 bit version.';
    $checksum = $checksum64;
}
else {
    Write-Output 'Installing 32 bit version.';
    $checksum = $checksum32;
}

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64 -Checksum64 $checksum -ChecksumType64 $checksumType -ChecksumType "$checksumType" -Checksum $checksum