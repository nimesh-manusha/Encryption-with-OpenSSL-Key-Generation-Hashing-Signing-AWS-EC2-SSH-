# Question 9: Connecting to EC2 using SSH

## Given details
- Instance ID: `i-0c49bed4e479f8289`
- Public IP: `54.152.145.21`
- Public DNS: `ec2-54-152-145-21.compute-1.amazonaws.com`
- PEM file: `G:\CAMPUS\4TH YEAR SEM\1ST\Assignment02\Q7\aws_linux.pem`

## a) Connect to EC2 using SSH
Use PowerShell:

```powershell
ssh -i "G:\CAMPUS\4TH YEAR SEM\1ST\Assignment02\Q7\aws_linux.pem" ec2-user@54.152.145.21
```

If key permission error appears, run once and retry:

```powershell
$pem = "G:\CAMPUS\4TH YEAR SEM\1ST\Assignment02\Q7\aws_linux.pem"
icacls $pem /inheritance:r
icacls $pem /remove:g "NT AUTHORITY\Authenticated Users" "BUILTIN\Users" "Everyone"
icacls $pem /grant:r "$($env:USERNAME):(R)"
```

## b) Check OpenSSL version on EC2
After login, run:

```bash
openssl version
```

## c) Execute a simple hash or encryption command on EC2
### Option 1 (hash)
```bash
echo "Hello from EC2" > demo.txt
openssl dgst -sha256 demo.txt
```

### Option 2 (encryption)
```bash
echo "Hello from EC2" > demo.txt
openssl enc -aes-256-cbc -salt -pbkdf2 -in demo.txt -out demo.enc -pass pass:Demo123
openssl enc -d -aes-256-cbc -pbkdf2 -in demo.enc -out demo.dec.txt -pass pass:Demo123
cat demo.dec.txt
```

## Suggested screenshot/terminal proof
- Successful SSH login prompt (`ec2-user@...`)
- Output of `openssl version`
- Output of `openssl dgst -sha256 demo.txt` (or encryption/decryption outputs)
