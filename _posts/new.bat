@echo off
chcp 65001
FOR /F "tokens=* USEBACKQ" %%F IN (`cd`) DO (
SET path23=%%F
)
for /f "tokens=1,2* delims= " %%i in  ('echo %date:/=-%') do ( set abasd=%%j %%i)
set middeel=%abasd% %time::=：%
echo --- >> "%path23%\%middeel:.=：%-%1.markup"
echo layout: post >> "%path23%\%middeel:.=：%-%1.markup"
echo title: "%1" >> "%path23%\%middeel:.=：%-%1.markup"
echo --- >> "%path23%\%middeel:.=：%-%1.markup"
echo # %middeel:.=：% >>  "%path23%\%middeel:.=：%-%1.markup"

@rem "F:\Microsoft VS Code\Code.exe" "%middeel:.=：%-%1.markup"
"F:\Sublime Text\sublime_text.exe" "%middeel:.=：%-%1.markup"