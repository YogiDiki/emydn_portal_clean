@echo off
title 🚀 Update Emydn Portal - GitHub + Vercel
color 0A

echo.
echo ===============================================
echo   🚀  AUTO PUSH & DEPLOY - EMYDN PORTAL
echo ===============================================
echo.

REM Ganti ke direktori project lokal kamu
cd /d "C:\Users\Lenovo\emydn_portal"

echo 🌀 Pulling latest changes from GitHub...
git pull origin main

echo.
echo 📦 Adding all changes...
git add .

echo.
set /p msg=📝 Commit message (kosongkan untuk "auto update"): 
if "%msg%"=="" set msg=auto update

echo.
echo 💾 Committing with message: "%msg%"
git commit -m "%msg%"

echo.
echo ☁️  Pushing to GitHub (branch: main)...
git push origin main

if %errorlevel% neq 0 (
    echo ❌ Gagal push ke GitHub! Periksa koneksi atau token kamu.
    pause
    exit /b
)

echo.
echo 🔄 Deploy otomatis ke Vercel...
vercel --prod --yes >nul 2>&1

if %errorlevel% neq 0 (
    echo ⚠️ Gagal deploy ke Vercel. Periksa koneksi atau login Vercel kamu.
    pause
    exit /b
)

echo.
echo ===============================================
echo   ✅ SELESAI! Situs kamu sudah di-update:
echo   🌐 https://www.emydngroup.my.id/
echo ===============================================
pause
