@echo off
title ��A/B����Recoveryһ��ˢ�빤��
color 3f
mode con cols=90 lines=29
echo.
ECHO. =================================================
echo.
echo.
echo.
echo.
echo    ���������ӵ��Բ����ֻ�������fastbootģʽ��
echo.
echo.
echo.
echo.
ECHO. =================================================
pause >nul
CLS
echo.
ECHO. =================================================
echo.
echo.
echo    �������·���ʽ��ʾ��˵���������ֻ�����������
echo.
echo    xxxxx fastboot
echo.
echo    ��û���������Ӻ������Ƿ�������
echo.
echo.
ECHO. =================================================
echo.
echo.
fastboot.exe devices
pause >nul
CLS
echo.
ECHO. =================================================
echo.
echo    �Ƿ񿴼�����������ʾ
echo.
echo    Sending 'recovery' (65536 KB)                      OKAY [  1.933s]
echo    Writing 'recovery'                                 OKAY [  0.320s]
echo    finished. total time: 2.455s
echo.
echo    �������������ʾ�����������ʼˢ��
echo.
ECHO. =================================================
echo.
echo.
fastboot.exe flash recovery recovery.img
pause >nul
CLS
echo.
ECHO. =================================================
echo.
echo    �Ƿ񿴼�����������ʾ
echo.
echo    Sending 'boot.img' (65536 KB)                      OKAY [  1.995s]
echo    Booting                                            OKAY [  0.067s]
echo    Finished. Total time: 2.100s
echo.
echo    �������������ʾ��֤��ˢ��ɹ��������������
echo.
ECHO. =================================================
echo.
echo.
fastboot.exe boot recovery.img
pause >nul
CLS
echo.
ECHO. =================================================
echo.
echo.
echo.
echo    ��ϲ��ɹ�ˢ����recovery����
echo.
echo    �����Ե�Ƭ�̣��ֻ����Զ���������������رմ˴��ڡ�
echo.
echo.
echo.
ECHO. =================================================
echo.
echo.
pause >nul
