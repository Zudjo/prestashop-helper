$XamppPath = "C:\xampp\htdocs"

icacls "$XamppPath\admin-dev\autoupgrade" /grant Everyone:F /t /c /q
icacls "$XamppPath\app\config" /grant Everyone:F /t /c /q
icacls "$XamppPath\cache" /grant Everyone:F /t /c /q
icacls "$XamppPath\config" /grant Everyone:F /t /c /q
icacls "$XamppPath\download" /grant Everyone:F /t /c /q
icacls "$XamppPath\img" /grant Everyone:F /t /c /q
icacls "$XamppPath\log" /grant Everyone:F /t /c /q
icacls "$XamppPath\mails" /grant Everyone:F /t /c /q
icacls "$XamppPath\modules" /grant Everyone:F /t /c /q
icacls "$XamppPath\override" /grant Everyone:F /t /c /q
icacls "$XamppPath\themes" /grant Everyone:F /t /c /q
icacls "$XamppPath\translations" /grant Everyone:F /t /c /q
icacls "$XamppPath\upload" /grant Everyone:F /t /c /q
icacls "$XamppPath\var" /grant Everyone:F /t /c /q