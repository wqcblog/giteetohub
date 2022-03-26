@echo off
:main
cd /d %~dp0
echo.
echo 先备份markdown文件，避免操作不当引发的其他问题
echo  1.最佳host获取(自行手动添加)
echo  2.最新镜像浏览
echo  3.markdown中gitee图片链接转github链接(提前建立github同结构仓库)
echo  4.markdown文件图片加速(github图片替换为cdn加速)
echo  5.markdown文件图片加速还原(第4步还原)
set /p ch=请输入选项：
if "%ch%"=="1" goto A
if "%ch%"=="2" goto B
if "%ch%"=="3" goto C
if "%ch%"=="4" goto D
if "%ch%"=="5" goto E
echo 输入错误
goto main

:A
cd /d %USERPROFILE%\DESKTOP
curl -O https://gitee.com/ineo6/hosts/raw/master/hosts
echo host文件已获取到桌面
curl https://gitee.com/ineo6/hosts/raw/master/hosts
goto main

:B
explorer https://jia110.github.io
goto main

:C
set /p d=请输入用户名/仓库名(gitee)：
set /p e=请输入用户名/仓库名(github)：
sub.exe https://gitee.com/%d%/raw https://raw.githubusercontent.com/%e%
echo OK
goto main

:D
sub.exe raw.githubusercontent.com raw.staticdn.net
echo OK
goto main

:E
sub.exe raw.staticdn.net raw.githubusercontent.com
echo OK
goto main
