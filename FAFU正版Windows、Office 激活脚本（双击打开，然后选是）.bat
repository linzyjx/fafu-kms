:: 
:: �汾�ţ�20171229
:: �����ߣ����溣�ݣ����ITЭ�ᣩ
:: ��  л��hnfeng��Զ����̳��
:: ��  л��ss06009180���ᰮ�ƽ⣩  
:: ::

@echo off
setlocal EnableDelayedExpansion&color 3e & cd /d "%~dp0"
title Windows/Office ����ű� - ����ũ�ִ�ѧУ԰������滯
%1 %2
ver | find "5." > NUL && goto :start
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :start","","runas",1)(window.close)&goto :eof

:start
mode con: cols=100 lines=30
echo.
echo    ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo    ::                                                ::
echo    ::    ����ũ�ִ�ѧ У԰������滯 ����ű�        ::
echo    ::        ��������ũ�ִ�ѧУ԰����ʹ��            ::
echo    ::          �޸��� ��ʦ�����ITЭ��               ::
echo    ::                2019-3-26		             ::
echo    ::                                                ::
echo    ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo    ::                                                ::
echo    ::  ���ű�֧�֡�                                  ::
echo    ::      �� Windows 10  רҵ��                     ::
echo    ::      �� Windows 8.1 רҵ��                     ::
echo    ::      �� Windows 8   רҵ��                     ::
echo    ::      �� Windows 7   רҵ��                     ::
echo    ::      �� Windows Server 2012 R2                 ::
echo    ::      �� Windows Server 2008 R2                 ::
echo    ::      �� Office 2016 רҵ��ǿ��                 ::
echo    ::      �� Office 2013 רҵ��ǿ��                 ::
echo    ::      �� Office 2010 רҵ��ǿ��                 ::
echo    ::      �� �����б��е������汾�᳢�Լ���         ::
echo    ::                                                ::
echo    ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo    ��ʾ���밴�ո����ʼ���
echo.
pause > NUL
cls

:: �������ʧ�ܣ���������Ϊ������ KMS �������ˣ�
:: ������޸������ KMS IP �ͷ�������ַ

set KMSSER=210.34.80.101

echo �������ü����������ַ����
cscript //Nologo %windir%\system32\slmgr.vbs /skms %KMSSER%
echo [OK] �ɹ����ü����������ַ��
echo.
echo ���ڼ���뼤���������������������Ժ򡭡�
ping %KMSSER% | find "��ʱ"  > NUL &&  goto fail
ping %KMSSER% | find "Ŀ������"  > NUL &&  goto fail
ping %KMSSER% | find "�޷�����"  > NUL &&  goto fail
ping %KMSSER% | find "����"  > NUL &&  goto fail
echo [OK] �ɹ������ϼ����������
echo.
echo ���ڼ��ϵͳ�ļ�����������Զ��������ü����ϵͳ��
cscript //Nologo %windir%\system32\slmgr.vbs /xpr | find "�����ü���" > NUL && goto wintooff

:starta
ver | find "6.1." > NUL &&  goto win7
ver | find "6.2." > NUL &&  goto win8
ver | find "6.3." > NUL &&  goto win81
ver | find "10.0." > NUL &&  goto win10
ver | find "5." > NUL && goto :xptooff
echo δ�ҵ����ʵ�ϵͳ����
pause
exit

:win7
echo.
echo ����ǰϵͳ��Windows 7 �� Windows Server 2008 R2
set Professional=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
set ProfessionalN=MRPKT-YTG23-K7D7T-X2JMM-QY7MG
set ProfessionalE=W82YF-2Q76Y-63HXB-FGJG9-GF7QX
set Enterprise=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
set EnterpriseN=YDRBP-3D83W-TY26F-D46B2-XCKRJ
set EnterpriseE=C29WB-22CC8-VJ326-GHFJW-H9DH4
set ServerWeb=6TPJF-RBVHG-WBW2R-86QPH-6RTM4
set ServerHPC=TT8MH-CG224-D3D7Q-498W2-9QCTX
set ServerStandard=YC6KT-GKW9T-YTKYR-T4X34-R7VHC
set ServerEnterprise=489J6-VHDMP-X63PK-3K798-CPX3Y
set ServerDatacenter=74YFP-3QFB3-KQT8W-PMXWJ-7M648
set ServerEnterpriseIA64=GT63C-RJFQ3-4GMB6-BRFB9-CB83V
goto windowsstart

:win8
echo.
echo ����ǰϵͳ��Windows 8 �� Windows Server 2012 R2
set Professional=NG4HW-VH26C-733KW-K6F98-J8CK4
set ProfessionalN=XCVCF-2NXM9-723PB-MHCB7-2RYQQ
set Core=BN3D2-R7TKB-3YPBD-8DRP2-27GG4
set Enterprise=32JNW-9KQ84-P47T8-D8GGY-CWCK7
set EnterpriseN=JMNMF-RHW7P-DMY6X-RF3DR-X2BQT
set CoreN=8N2M2-HWPGY-7PGT9-HGDD8-GVGGY
set CoreSingleLanguage=2WN2H-YGCQR-KFX6K-CD6TF-84YXQ
set CoreCountrySpecific=4K36P-JN4VD-GDC6V-KDT89-DYFKP
set ServerMultiPointPremium=XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G
set ServerMultiPointStandard=HM7DN-YVMH3-46JC3-XYTG7-CYQJJ
set ServerStandard=XC9B7-NBPP2-83J2H-RHMBY-92BT4
set ServerDatacenter=48HP8-DN98B-MYWDG-T2DCC-8W83P
set ProfessionalWMC=GNBB8-YVD74-QJHX6-27H4K-8QHDG
set CoreARM=DXHJF-N9KQX-MFPVR-GHGQK-Y7RKV
goto windowsstart

:win81
echo.
echo ����ǰϵͳ��Windows 8.1 �� Windows Server 2012 R2
set Core=M9Q9P-WNJJT-6PXPY-DWX8H-6XWKK
set CoreARM=XYTND-K6QKT-K2MRH-66RTM-43JKP
set CoreCountrySpecific=NCTT7-2RGK8-WMHRF-RY7YQ-JTXG3
set CoreN=7B9N3-D94CG-YTVHR-QBPX3-RJP64
set CoreSingleLanguage=BB6NG-PQ82V-VRDPW-8XVD2-V8P66
set EmbeddedIndustry=NMMPB-38DD4-R2823-62W8D-VXKJB
set EmbeddedIndustryA=VHXM3-NR6FT-RY6RT-CK882-KW2CJ
set EmbeddedIndustryE=FNFKF-PWTVT-9RC8H-32HB2-JB34X
set Enterprise=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
set EnterpriseN=TT4HM-HN7YT-62K67-RGRQJ-JFFXW
set Professional=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
set ProfessionalN=HMCNV-VVBFX-7HMBH-CTY9B-B4FXY
set ProfessionalWMC=789NJ-TQK6T-6XTH8-J39CJ-J8D3P
set ServerCloudStorageCore=3NPTF-33KPT-GGBPR-YX76B-39KDD
set ServerCloudStorage=3NPTF-33KPT-GGBPR-YX76B-39KDD
set ServerDatacenter=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9
set ServerDatacenterCore=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9
set ServerStandard=D2N9P-3P6X9-2R39C-7RTCD-MDVJX
set ServerStandardCore=D2N9P-3P6X9-2R39C-7RTCD-MDVJX
set ServerSolution=KNC87-3J2TX-XB4WP-VCPJV-M4FWM
set ServerSolutionCore=KNC87-3J2TX-XB4WP-VCPJV-M4FWM
goto windowsstart

:win10
echo.
echo ����ǰϵͳ��Windows 10 �� Windows Server 2016
set Core=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
set CoreCountrySpecific=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
set CoreN=3KHY7-WNT83-DGQKR-F7HPR-844BM
set CoreSingleLanguage=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
set Professional=W269N-WFGWX-YVC9B-4J6C9-T83GX
set ProfessionalN=MH37W-N47XK-V7XM9-C7227-GCQG9
set Enterprise=NPPR9-FWDCX-D2C8J-H872K-2YT43
set EnterpriseN=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
set Education=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
set EducationN=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
set EnterpriseS=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
set EnterpriseSN=2F77B-TNFGY-69QQF-B8YKP-D69TJ
ver | find "10.0.10" > NUL &&  goto windowsstart
set EnterpriseS=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
set EnterpriseSN=QFFDN-GRT3P-VKWWX-X7T3R-8B639
set ServerDatacenter=CB7KF-BWN84-R7R2Y-793K2-8XDDG
set ServerStandard=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
set ServerSolution=JCKRF-N37P4-C2D82-9YXRT-4M63B
goto windowsstart

:windowsstart
for /f "tokens=3 delims= " %%i in ('reg QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID"') do set EditionID=%%i
if defined %EditionID% (
	cscript //Nologo %windir%\system32\slmgr.vbs /ipk !%EditionID%!
	cscript //Nologo %windir%\system32\slmgr.vbs /ato
) else (
	echo �Ҳ���ϵ�кţ��������콢��֮���ϵͳ����
	ver | find "6.1." > NUL && goto oem7
	ver | find "6.0." > NUL && goto oem7
)
goto office

:wintooff
echo [OK] ϵͳ�Ѿ����ü��ת�� Office ���
goto office

:office
echo ���ڼ�鰲װ�� Office �汾��
call :GetOfficePath 14 Office2010
call :ActOffice 14 Office2010
call :GetOfficePath 15 Office2013
call :ActOffice 15 Office2013
call :GetOfficePath 16 Office2016
call :ActOffice 16 Office2016
echo.
echo ����Ƿ���� Office 2016 ���۰棬��ִ�� Retail ת VOL��
if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" set _Office16Path=%ProgramFiles%\Microsoft Office\Office16
if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" set _Office16Path=%ProgramFiles(x86)%\Microsoft Office\Office16
if DEFINED _Office16Path (echo [OK] �ѷ��� Office2016 ���۰�
    call :ActOffice 16 Office2016
  ) else (echo δ���� Office2016 ���۰�)
echo [OK] �����ɹ���ɣ�
echo.
echo �밴�ո���������
pause > NUL
goto finish
exit

:ActOffice
if DEFINED _Office%1Path (
    cd /d "!_Office%1Path!"
    echo.
	echo ��� %2 �ļ���״̬��
	cscript //nologo ospp.vbs /act | find /i "successful" > NUL && (
        echo [OK] %2 �Ѿ�����Զ�����  & echo.) || (
		echo   %2 δ��������Խ��м��
		if %1 EQU 16 call :Licens16
		cscript //nologo ospp.vbs /sethst:%KMSSER% > NUL
		cscript //nologo ospp.vbs /act | find /i "successful" && (
        echo.&echo ***** [OK] %2 ����ɹ� ***** & echo.) || (echo.&echo [FAIL]***** %2 ����ʧ�� ***** & echo.)
		)
)    
cd /d "%~dp0"
goto :EOF

:GetOfficePath
echo.&echo   ���ڼ�� %2 ��Ʒ�İ�װ·��...
set _Office%1Path=
set _Reg32=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\%1.0\Common\InstallRoot
set _Reg64=HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\%1.0\Common\InstallRoot
reg query "%_Reg32%" /v "Path" > nul 2>&1 && FOR /F "tokens=2*" %%a IN ('reg query "%_Reg32%" /v "Path"') do SET "_OfficePath1=%%b"
reg query "%_Reg64%" /v "Path" > nul 2>&1 && FOR /F "tokens=2*" %%a IN ('reg query "%_Reg64%" /v "Path"') do SET "_OfficePath2=%%b"
if DEFINED _OfficePath1 (if exist "%_OfficePath1%ospp.vbs" set _Office%1Path=!_OfficePath1!)
if DEFINED _OfficePath2 (if exist "%_OfficePath2%ospp.vbs" set _Office%1Path=!_OfficePath2!)
set _OfficePath1=
set _OfficePath2=
if DEFINED _Office%1Path (echo     �ѷ��� %2) else (echo     δ���� %2)
goto :EOF

:Licens16
for /f %%x in ('dir /b ..\root\Licenses16\project???vl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\standardvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\visio???vl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\project???vl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\standardvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
for /f %%x in ('dir /b ..\root\Licenses16\visio???vl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul
cscript ospp.vbs /inpkey:NYH39-6GMXT-T39D4-WVXY2-D69YY >nul
cscript ospp.vbs /inpkey:7WHWN-4T7MP-G96JF-G33KR-W8GF4 >nul
cscript ospp.vbs /inpkey:RBWW7-NTJD4-FFK2C-TDJ7V-4C2QP >nul
cscript ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul
cscript ospp.vbs /inpkey:YG9NW-3K39V-2T3HJ-93F3Q-G83KT >nul
cscript ospp.vbs /inpkey:PD3PC-RHNGV-FXJ29-8JK7D-RJRJK >nul
goto :EOF
exit

:xptooff
cls
echo ����ǰϵͳ��WindowsXP �� Win2003����֧�ּ��
call :GetOfficePath 14 Office2010
call :ActOffice 14 Office2010
exit

:fail
cls
echo.
echo        �޷����ӵ�����������kms������ܿ��á�
echo               ��ѡ����ִ�еĲ�����
echo ---------------------------------------------------
echo  ��1�������������ӷ�����
echo  ��2��Ԥ����ģʽ����֧�� Windows 7 x64 �¼���32λ Office��
echo  ��3���˳�
echo ---------------------------------------------------
choice /c 123 /n /m "������ѡ��ǰ�����: "
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP%==1 goto start
IF %ERRORTEMP%==2 goto starta
IF %ERRORTEMP%==3 goto exit

:oem7
cls
echo ��ǰϵͳ��֧��Windows���
echo �Ƿ��Լ���Office��
echo ---------------------------------------------------
echo  ��1������Office
echo  ��2���˳�
echo ---------------------------------------------------
choice /c 123 /n /m "������ѡ��ǰ�����: "
SET ERRORTEMP=%ERRORLEVEL%
IF %ERRORTEMP%==1 goto office
IF %ERRORTEMP%==2 goto exit
exit

:exit
exit

:localkms
echo 
exit

:finish
cls
echo.
echo    ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo    ::                                                ::
echo    ::    ����ũ�ִ�ѧ У԰������滯 ����ű�        ::
echo    ::                                                ::
echo    ::           ��л֧��У԰������滯               ::
echo    ::                                                ::
echo    ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo    ��ʾ��������ɣ�10����Զ��˳���
echo          �´μ����������д˽ű����ɡ�
choice /t 10 /d y /n >nul 
exit