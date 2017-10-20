$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/1.0.0/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/1.0.0/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '3dbef9c952ea6e320887fd5cda627962e93b55857ca77d172eb2948d70d8aee9';
$checksum64 = 'da86d427cd593523dea7399cc914f6fb4bc8fda0aab1082eb0899260f12d33f3';
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