@echo off
echo 1.mp3
echo 2.wav
echo 3.flac
echo;
set /P audio-format="•ÏX‚µ‚½‚¢ŠÖ”‚Ì”Ô†‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢: "

if "%audio-format%" == "1" (
		set format=mp3
	) else if "%audio-format%" == "2" (
		set format=wav
	) else if "%audio-format%" == "3" (
		set format=flac
	) else (
		echo ³‚µ‚¢”š‚ª“ü—Í‚³‚ê‚Ü‚¹‚ñ‚Å‚µ‚½B³‚µ‚¢”š‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢
		pause
		exit
	)

set /P youtube="DL‚µ‚½‚¢YoutubeURL: "

echo %format%
youtube-dl -x --audio-format %format% " "%Youtube%"
pause
