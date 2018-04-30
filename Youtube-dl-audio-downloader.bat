@echo off
echo 1.mp3
echo 2.wav
echo 3.flac
echo;
set /P audio-format="変更したい関数の番号を入力してください: "

if "%audio-format%" == "1" (
		set format=mp3
	) else if "%audio-format%" == "2" (
		set format=wav
	) else if "%audio-format%" == "3" (
		set format=flac
	) else (
		echo 正しい数字が入力されませんでした。正しい数字を入力してください
		pause
		exit
	)

set /P youtube="DLしたいYoutubeURL: "

echo %format%
youtube-dl -x --audio-format %format% " "%Youtube%"
pause
