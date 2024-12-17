@echo off
:menu
cls
echo ===================================
echo       Windows Utility Menu
echo ===================================
echo 1. Get IP Address
echo 2. Make Traceroute
echo 3. Resolve DNS Name
echo 4. Encrypt Text (Caesar)
echo 5. Decrypt Text
echo 6. Encrypt File (Caesar)
echo 7. Decrypt File
echo 8. Compress File (LZ77)
echo 9. Decompress File
echo 10. Calculate Hash Value (Text)
echo 0. Exit
echo ===================================
set /p choice="Select an option: "

if "%choice%"=="1" goto get_ip
if "%choice%"=="2" goto traceroute
if "%choice%"=="3" goto resolve_dns
if "%choice%"=="4" goto encrypt_text
if "%choice%"=="5" goto decrypt_text
if "%choice%"=="6" goto encrypt_file
if "%choice%"=="7" goto decrypt_file
if "%choice%"=="8" goto compress_file
if "%choice%"=="9" goto decompress_file
if "%choice%"=="10" goto hash_value
if "%choice%"=="0" goto exit
goto menu

:get_ip
echo Displaying IP Address:
ipconfig | findstr "IPv4"
ipconfig | findstr "IPv6"
pause
goto menu

:traceroute
set /p target="Enter the hostname or IP address: "
tracert %target%
pause
goto menu

:resolve_dns
set /p dns_name="Enter the DNS name: "
nslookup %dns_name%
pause
goto menu

:encrypt_text
caesar_cipher_encrypt.exe 
pause
goto menu

:decrypt_text
caesar_cipher_decrypt.exe 
pause
goto menu

:encrypt_file
caesar_cipher_encrypt_file.exe
pause
goto menu

:decrypt_file
caesar_cipher_decrypt_file.exe
pause
goto menu

:compress_file
lz77_compress_file.exe
pause
goto menu

:decompress_file
lz77_decompress_file.exe
pause
goto menu

:hash_value
hash_value.exe
pause
goto menu

:exit
echo Exiting... Goodbye!
exit
