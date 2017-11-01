$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/1.0.2/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/1.0.2/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '8bb41cc2362e7e023ff532317b857a3af89518b92b1a465cddd3bb348dd6cddc';
$checksum64 = '993b6c7eb46bdc40d922ba005edc48d2aa32f8ecdf9c7b6d4adeede0a55c26b6';
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