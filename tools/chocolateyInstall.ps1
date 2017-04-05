$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://zpl.io/download-windows-32'
$url64 = 'https://zpl.io/download-windows-64'
$chechsumType = 'sha256'
$checksum32 = 'f75cad82e8fd2715b98fb9bfe4bc97ba72181e656b568d9788dab472361823fd'
$checksum64 = 'cee098fd4f980c6c2d2ac2df5f46e13288f03d50cd24ea9ae6b4d13cae949655'
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