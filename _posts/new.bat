@echo off
chcp 65001
FOR /F "tokens=* USEBACKQ" %%F IN (`cd`) DO (
SET path23=%%F
)

set middeel=%abasd: =%-%time::=：%
echo --- >> "%path23%\%middeel:.=：%-%1.md"
echo layout: post >> "%path23%\%middeel:.=：%-%1.md"
echo title: "%1" >> "%path23%\%middeel:.=：%-%1.md"
echo --- >> "%path23%\%middeel:.=：%-%1.md"
echo # %middeel:.=：% >>  "%path23%\%middeel:.=：%-%1.md"

@rem "F:\Microsoft VS Code\Code.exe" "%middeel:.=：%-%1.md"
"F:\Sublime Text\sublime_text.exe" "%middeel:.=：%-%1.md"