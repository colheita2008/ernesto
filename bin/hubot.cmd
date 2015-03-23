@echo off

setlocal
cd ..
cmd /C npm install
node_modules\.bin\hubot.cmd --name "ernesto" %*
