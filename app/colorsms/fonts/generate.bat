@echo off
echo ===============================
echo Font Preview Batch Generator
echo ===============================

set TEXT=Aa Bb Cc 123

REM 遍历 fonts 文件夹下所有 ttf 和 otf
for /R %%f in (*.ttf *.otf) do (

    echo Generating preview for: %%f

    magick -size 800x300 xc:none ^
        -fill "#111111" ^
        -font "%%f" ^
        -pointsize 64 ^
        -gravity center ^
        -annotate +0+0 "%TEXT%" ^
        "%%~dpnf.png"
)

echo ===============================
echo All previews generated!
echo ===============================

pause
