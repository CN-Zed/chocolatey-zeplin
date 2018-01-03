$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/1.2.1/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/1.2.1/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '86c880b33a271cc8f95d6da0776e875a66f6460b69521d0e08f32ad55d813252';
$checksum64 = '838261ed6646cce69a9cc9a1214ab6680d73a246224c0a1d3416b7f78bd9bc39';
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