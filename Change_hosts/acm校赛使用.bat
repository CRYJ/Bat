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

@echo off
c:
cd %SystemRoot%\system32\drivers\etc\
echo. >> hosts

rem ������Ӧ����ַ
echo 0.0.0.0 icpcarchive.ecs.baylor.edu >> hosts
echo 0.0.0.0 acm.fzu.edu.cn >> hosts
echo 0.0.0.0 acm.csu.edu.cn >> hosts
echo 0.0.0.0 acdream.info >> hosts
echo 0.0.0.0 openjudge.cn >> hosts
echo 0.0.0.0 open.kattis.com >> hosts
echo 0.0.0.0 hihocoder.com >> hosts
echo 0.0.0.0 acm.hit.edu.cn >> hosts
echo 0.0.0.0 acm.hrbust.edu.cn >> hosts
echo 0.0.0.0 hihocoder.com >> hosts
echo 0.0.0.0 acm.timus.ru >> hosts
echo 0.0.0.0 acm.hust.edu.cn >> hosts
echo 0.0.0.0 www.lydsy.com >> hosts
echo 0.0.0.0 www.spoj.com >> hosts
echo 0.0.0.0 uva.onlinejudge.org >> hosts
echo 0.0.0.0 lightoj.com >> hosts
echo 0.0.0.0 acm.uestc.edu.cn >> hosts
echo 0.0.0.0 www.codah.club >> hosts
echo 0.0.0.0 ac.2333.moe >> hosts
echo 0.0.0.0 acm.hdu.edu.cn >> hosts
echo 0.0.0.0 codeforces.com >> hosts
echo 0.0.0.0 poj.org >> hosts
echo 0.0.0.0 cn.bing.com >> hosts
echo 0.0.0.0 www.google.cn >> hosts
echo 0.0.0.0 www.so.com >> hosts
echo 0.0.0.0 www.sogou.com >> hosts
echo 0.0.0.0 www.baidu.com >> hosts
echo 0.0.0.0 baike.baidu.com >> hosts
echo 0.0.0.0 zhidao.baidu.com >> hosts
echo 0.0.0.0 www.hao123.com >> hosts
echo 0.0.0.0 xueshu.baidu.com >> hosts
echo 0.0.0.0 tieba.baidu.com >> hosts
echo 0.0.0.0 blog.csdn.net >> hosts
echo 0.0.0.0 www.zhihu.com >> hosts
echo 0.0.0.0 github.com >> hosts
echo 0.0.0.0 www.acmerblog.com >> hosts
echo 0.0.0.0 www.youdao.com >> hosts
echo 0.0.0.0 fanyi.baidu.com >> hosts
echo 0.0.0.0 translate.google.cn >> hosts
echo 0.0.0.0 fanyi.youdao.com >> hosts
echo 0.0.0.0 www.iciba.com >> hosts
echo 0.0.0.0 www.bing.com/translator >> hosts
echo 0.0.0.0 dict.cn >> hosts
echo 0.0.0.0 fy.iciba.com >> hosts
echo �����ҳ�ѱ���ֹ...
echo �밴�س�����...

rem ����vc6.0��ݷ�ʽ�Լ�Virtual Judge��ݷ�ʽ
echo ������ݷ�ʽ...
set path1=C:\Program Files\Microsoft Visual Studio\COMMON\MSDev98\Bin\MSDEV.EXE
set topath1="%USERPROFILE%/desktop/vc++6.0.url"
echo [InternetShortcut] >> %topath1%
echo URL="%path1%" >> %topath1%
echo IconIndex=0 >> %topath1%
echo IconFile=%path1% >> %topath1%

copy VirtualJudge.url Virtual_Judge.url
move Virtual_Judge.url %USERPROFILE%/desktop/

rem ����devc++��װ��������
echo ���ư�װ��������...
copy devc.exe dev_setup.exe
move dev_setup.exe %USERPROFILE%/desktop/

pause