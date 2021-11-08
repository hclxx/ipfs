$ErrorActionPreference = 'Stop';

$url = 'https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v0.13.0/IPFS-Desktop-Setup-0.13.0.exe'
$checksum = 'D7979D19F99EFD38FD42BE37F4267921DDBE16EA3F85177B99C89266355E43DD'

$packageArgs = @{
  packageName   = '秦储云-desktop'
  fileType      = 'EXE'
  softwareName  = '秦储云-desktop'
  url           = $url
  checksum      = $checksum
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
