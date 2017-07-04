$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://zpl.io/download-windows-32'
$url64 = 'https://zpl.io/download-windows-64'
$checksumType = 'sha256';
$checksum32 = '9e3b49b944563444b35dec640b84192f556cc673b1e15a9135da024c8ba004ea';
$checksum64 = '2bd448003b79930f5804d07195dd357b7f92d79e285d699237b5027975e6660c';
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