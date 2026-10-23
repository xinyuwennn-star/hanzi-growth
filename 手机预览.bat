@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo    汉字成长记 · 手机预览
echo ============================================
echo.
echo  使用方法：
echo  1. 确保手机和电脑连接【同一个 Wi-Fi】
echo  2. 在下面找到 IPv4 地址（通常 192.168 开头）
echo  3. 手机浏览器输入：http://那个地址:8000
echo     例如：http://192.168.1.5:8000
echo  4. 关闭本窗口即停止预览
echo.
echo  如果电脑弹出"防火墙是否允许"提示，请点【允许】
echo ============================================
echo.
echo  你的电脑 IPv4 地址：
ipconfig | findstr /C:"IPv4"
echo.
"C:\Users\ss\AppData\Roaming\kimi-desktop\daimon-bundle\runtime\python\cpython-3.12\python.exe" -m http.server 8000
pause
