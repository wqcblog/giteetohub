@echo off
:main
cd /d %~dp0
echo.
echo �ȱ���markdown�ļ����������������������������
echo  1.���host��ȡ(�����ֶ����)
echo  2.���¾������
echo  3.markdown��giteeͼƬ����תgithub����(��ǰ����githubͬ�ṹ�ֿ�)
echo  4.markdown�ļ�ͼƬ����(githubͼƬ�滻Ϊcdn����)
echo  5.markdown�ļ�ͼƬ���ٻ�ԭ(��4����ԭ)
set /p ch=������ѡ�
if "%ch%"=="1" goto A
if "%ch%"=="2" goto B
if "%ch%"=="3" goto C
if "%ch%"=="4" goto D
if "%ch%"=="5" goto E
echo �������
goto main

:A
cd /d %USERPROFILE%\DESKTOP
curl -O https://gitee.com/ineo6/hosts/raw/master/hosts
echo host�ļ��ѻ�ȡ������
curl https://gitee.com/ineo6/hosts/raw/master/hosts
goto main

:B
explorer https://jia110.github.io
goto main

:C
set /p d=�������û���/�ֿ���(gitee)��
set /p e=�������û���/�ֿ���(github)��
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
