@echo off

rem ѡ��ѡ��
echo "1.��һ�δ�qq"
echo "2.�����ڴ�qq(�Ժ�������0,6,12,18,24��������)"
echo "3.ֹͣ�����ڴ�qq"
rem ps:��ν�������ڴ�qqָ���������ƻ�����ʹshadowsocksÿ��Сʱ�Զ��ػ�����

CHOICE /C 123 /M ""

if %errorlevel%==1 goto First
if %errorlevel%==2 goto Second
if %errorlevel%==3 goto Third

First:
rem ֱ�����г���
C:/Users/Sdite/Desktop/qq.exe
goto Quit

Second:
rem ��0�㿪ʼ��ÿ��Сʱ��һ��qq�������,��ֱ������һ�μƻ�����
schtasks /create /sc hourly /mo 6 /tn "Auto" /tr C:/Users/Sdite/Desktop/qq.exe /st 00:00:02 /f
schtasks /run /tn "Auto"
goto Quit

Third:
rem ɾ���ƻ����� "Auto"
schtasks /delete /tn "Auto"
goto Quit


Quit:
