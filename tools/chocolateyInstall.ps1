$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://zpl.io/download-windows-32'
$url64 = 'https://zpl.io/download-windows-64'
$checksumType = 'sha256';
$checksum32 = '252cdd87fa74cfff259e22be140c8b38936ba093f021bc4e79f8431dc76b366c';
$checksum64 = '144bcdcfe7cf95803c84f4536d089a8c01d5199c0205a70a0b58f937d951ff6f';
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