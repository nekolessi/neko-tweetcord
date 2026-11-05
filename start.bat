@echo off
title Tweetcord Bot
cd /d "%~dp0"
call .venv\Scripts\activate.bat
python bot.py
pause
