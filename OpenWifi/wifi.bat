@echo off
rem ��������Աģʽ, ��������������
rem ������win10��ò�Ʋ���Ҫ��������Աģʽ���������·�����
rem ������:Admin���ϵ����еĴ���ע�͵�����
cacls.exe "%SystemDrive%\System Volume Information" >nul 2>nul
if %errorlevel%==0 goto Admin
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
echo Set RequestUAC = CreateObject^("Shell.Application"^)>"%temp%\getadmin.vbs"
echo RequestUAC.ShellExecute "%~s0","","","runas",1 >>"%temp%\getadmin.vbs"
echo WScript.Quit >>"%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" /f
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
exit

:Admin

rem ѡ��ѡ��
CHOICE /C 12 /M "��wifi�밴 1, �ر��밴 2"

if %errorlevel%==1 goto begin
if %errorlevel%==2 goto close

rem ��wifi
:begin
netsh wlan set hostednetwork mode=allow ssid=Test key=0123456789
netsh wlan start hostednetwork
pause
goto end

rem �ر�wifi
:close
netsh wlan stop hostednetwork
netsh wlan set hostednetwork mode=disallow
pause

:end