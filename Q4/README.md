# Question 4 (Hashing with OpenSSL)

## a) Created text file
`hash_demo.txt` contains:
- OpenSSL is a software library and tool

## b) Hash algorithms used
- SHA-256
- SHA-512
- MD5

## c) Display outputs in terminal
Run this command in PowerShell from the `Q4` folder:

```powershell
.\run_hashes.ps1
```

Or run commands manually:

```powershell
openssl dgst -sha256 hash_demo.txt
openssl dgst -sha512 hash_demo.txt
openssl dgst -md5 hash_demo.txt
```
