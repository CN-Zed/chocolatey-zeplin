$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/2.4.0/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/2.4.0/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '8ae9be4dd2c12cd21f301e0e307d7408e3d88cfa96e2d7395f01c492185846a7';
$checksum64 = '0c64a487ccfd1fb8f0e92e2018756164450dca21c52638b235cfd27a1e7950ee';
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