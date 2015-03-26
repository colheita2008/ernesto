@echo off

setlocal
cd %~dp0..
cmd /C npm install
node_modules\.bin\hubot.cmd --name "ernesto" %*
