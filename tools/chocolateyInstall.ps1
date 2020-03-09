$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/3.0.1/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/3.0.1/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '2D9E0382DB5FDBBA52DB4C0BA1F4135CDD9AA649C29BDCF858D27398C3D21BF8';
$checksum64 = '0259D64231965E4E644DA381C3558A1A3B7BAEBFDB4E0ED70F568B49E4E0071F';
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
