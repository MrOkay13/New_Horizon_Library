@echo off
echo Starting NHIS Library Website...
start "" "C:\Users\Lenovo\AppData\Local\Programs\Python\Python312\python.exe" -m http.server 8080
timeout /t 2 /nobreak >nul
start "" "http://localhost:8080"
echo Website opened at http://localhost:8080
echo Close this window to stop the server.
pause
