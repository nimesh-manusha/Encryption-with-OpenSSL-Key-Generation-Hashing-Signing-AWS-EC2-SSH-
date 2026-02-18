#!/bin/bash
set -e

echo "[Q9] OpenSSL version"
openssl version

echo "[Q9] Hash demo"
echo "Hello from EC2" > demo.txt
openssl dgst -sha256 demo.txt

echo "[Q9] Encryption demo"
openssl enc -aes-256-cbc -salt -pbkdf2 -in demo.txt -out demo.enc -pass pass:Demo123
openssl enc -d -aes-256-cbc -pbkdf2 -in demo.enc -out demo.dec.txt -pass pass:Demo123
cat demo.dec.txt
