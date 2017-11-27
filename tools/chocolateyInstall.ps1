$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/1.0.3/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/1.0.3/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = '37f502ebaafe95e4eb1661b2af81e4e217235ae409d59cb47a73ea37c2f16fc0';
$checksum64 = '986f8729791e2bd920d4e4abdb38cc72f157db8f5c757f451e4aa2564f5a89ce';
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