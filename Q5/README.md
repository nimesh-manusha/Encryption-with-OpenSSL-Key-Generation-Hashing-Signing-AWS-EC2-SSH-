# Question 5: Digital Signing using OpenSSL

## a) Generate SHA-256 hash of `message.txt`
```powershell
openssl dgst -sha256 -binary -out message.sha256.bin message.txt
openssl dgst -sha256 message.txt
```

## b) Sign the generated hash using RSA private key (2048-bit)
```powershell
openssl pkeyutl -sign -inkey ..\Q2\rsa_2048_private.pem -in message.sha256.bin -out message.sha256.sig
```

## c) Verify the digital signature using RSA public key
```powershell
openssl pkeyutl -verify -pubin -inkey ..\Q2\rsa_2048_public.pem -in message.sha256.bin -sigfile message.sha256.sig
```

## d) Display verification result in terminal
```powershell
Get-Content verification_result.txt
```

Generated files:
- `message.txt`
- `message.sha256.bin`
- `message.sha256.txt`
- `message.sha256.sig`
- `verification_result.txt`
