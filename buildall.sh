@echo off
setlocal

echo Memulai proses build untuk semua platform...

:: Membersihkan build sebelumnya
echo Membersihkan build sebelumnya...
flutter clean

:: Build untuk Android
echo Membuat build untuk Android (APK)...
flutter build apk --release

:: Build untuk Web
echo Membuat build untuk Web...
flutter build web --release

:: Build untuk Windows
echo Membuat build untuk Windows (Executable)...
flutter build windows --release

:: Catatan: Build untuk iOS dan macOS tidak dapat dilakukan di Windows
echo "Build iOS dan macOS dilewati karena skrip dijalankan di Windows."

echo Proses build selesai! Output berada di direktori 'build'.
endlocal
