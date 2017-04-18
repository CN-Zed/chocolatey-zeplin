$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://zpl.io/download-windows-32'
$url64 = 'https://zpl.io/download-windows-64'
$checksumType = 'sha256';
$checksum32 = 'ecac8da3abb782e20d4c29ccd6814839c5a5de073700ea30d80486ae37b36707';
$checksum64 = 'e39ba92256b11d5e35440d526eac0c128d4008bc8f522c2a7c6fe727ddbbbf4a';
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