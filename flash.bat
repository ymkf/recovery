@echo off
title 非A/B分区Recovery一键刷入工具
color 3f
mode con cols=90 lines=29
echo.
ECHO. =================================================
echo.
echo.
echo.
echo.
echo    首先请连接电脑并把手机重启到fastboot模式。
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
echo    若出现下方样式提示则说明电脑与手机连接正常。
echo.
echo    xxxxx fastboot
echo.
echo    若没有请检查连接和驱动是否正常。
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
echo    是否看见类似如下提示
echo.
echo    Sending 'recovery' (65536 KB)                      OKAY [  1.933s]
echo    Writing 'recovery'                                 OKAY [  0.320s]
echo    finished. total time: 2.455s
echo.
echo    如果看到以上提示，按任意键开始刷入
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
echo    是否看见类似如下提示
echo.
echo    Sending 'boot.img' (65536 KB)                      OKAY [  1.995s]
echo    Booting                                            OKAY [  0.067s]
echo    Finished. Total time: 2.100s
echo.
echo    如果看到以上提示，证明刷入成功，按任意键重启
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
echo    恭喜你成功刷入了recovery！！
echo.
echo    耐心稍等片刻，手机会自动重启，按任意键关闭此窗口。
echo.
echo.
echo.
ECHO. =================================================
echo.
echo.
pause >nul
