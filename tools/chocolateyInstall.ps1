$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/1.2.2/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/1.2.2/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '81acd7803fe323efb782ee4cd6472d52beef1b1f1603feba3e5765bc3519cdb0';
$checksum64 = '1b271685c65a47469936c7f4c7da965b66ae0d89c20f05a7c7ec87ca3cb97e3e';
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