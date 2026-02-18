# Question 6: Creating a Self-Signed Digital Certificate using OpenSSL

## a) Create a self-signed digital certificate using the generated private key
```powershell
openssl req -x509 -new -key ..\Q2\rsa_2048_private.pem -sha256 -days 365 -out self_signed_cert.pem -subj "/C=LK/ST=Western/L=Colombo/O=Assignment02/OU=Q6/CN=ITBNM-2211-0172"
```

## b) Set certificate validity period
- Validity used: `-days 365`

## c) Display certificate details using OpenSSL
```powershell
openssl x509 -in self_signed_cert.pem -text -noout
```

Additional summary command:
```powershell
openssl x509 -in self_signed_cert.pem -noout -issuer -subject -dates
```

Generated files:
- `self_signed_cert.pem`
- `certificate_details.txt`
- `certificate_summary.txt`
