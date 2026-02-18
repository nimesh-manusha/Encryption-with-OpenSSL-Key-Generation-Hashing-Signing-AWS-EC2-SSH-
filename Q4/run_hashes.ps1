Set-Location $PSScriptRoot

Write-Output "SHA-256:"
openssl dgst -sha256 hash_demo.txt

Write-Output "SHA-512:"
openssl dgst -sha512 hash_demo.txt

Write-Output "MD5:"
openssl dgst -md5 hash_demo.txt
