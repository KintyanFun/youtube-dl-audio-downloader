@echo off
echo 1.mp3
echo 2.wav
echo 3.flac
echo;
set /P audio-format="�ύX�������֐��̔ԍ�����͂��Ă�������: "

if "%audio-format%" == "1" (
		set format=mp3
	) else if "%audio-format%" == "2" (
		set format=wav
	) else if "%audio-format%" == "3" (
		set format=flac
	) else (
		echo ���������������͂���܂���ł����B��������������͂��Ă�������
		pause
		exit
	)

set /P youtube="DL������YoutubeURL: "

echo %format%
youtube-dl -x --audio-format %format% " "%Youtube%"
pause
