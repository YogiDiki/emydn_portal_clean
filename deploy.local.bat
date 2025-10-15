@echo off
REM --- Script Deploy Manual ke Vercel (Langsung Deploy) ---

echo =======================================================
echo MEMULAI DEPLOY MANUAL KE VERCEL
echo =======================================================

REM Perintah vercel deploy akan menggunakan token yang sudah tersimpan di lokal
REM --prod: Memastikan deploy ke domain utama (www.emydngroup.my.id)
REM --confirm: Melewati pertanyaan konfirmasi
vercel deploy --prod --confirm

if errorlevel 1 (
    echo.
    echo =======================================================
    echo GAGAL: Terjadi kesalahan saat deploy ke Vercel.
    echo Periksa koneksi internet. Jika masih gagal, jalankan 'vercel login' 
    echo =======================================================
) else (
    echo.
    echo =======================================================
    echo BERHASIL! Perubahan sudah diupload dan di-deploy ke Vercel.
    echo Website Anda: https://www.emydngroup.my.id/
    echo =======================================================
)

pause