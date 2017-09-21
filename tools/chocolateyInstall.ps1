$packageName = "zeplin"
$fileType = "exe"
$silentArgs = "-s"
$url = 'https://pkg.zeplin.io/windows/0.31.0/ia32/zeplin-installer-ia32.exe'
$url64 = 'https://pkg.zeplin.io/windows/0.31.0/x64/zeplin-installer-x64.exe'
$checksumType = 'sha256';
$checksum32 = 'db3f6fc09ad802ae85bcfd9ff7572a7388cf2258056e238a8e96ea5e26e2149b';
$checksum64 = '10a619da864ab450e59e8271d57230406da3c5641a2a459efcd86d33713a8ba5';
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