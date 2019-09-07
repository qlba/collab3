@echo off

set file1=conf.json
set file2=config.tex

if not exist %file2% ( 
    goto build
)

for %%i in (%file1%) do set date1=%%~ti
for %%i in (%file2%) do set date2=%%~ti

if "%date1%"=="%date2%" ( 
    goto build
)

for /f %%i in ('dir /b /o:d %file1% %file2%') do set newest=%%i
if "%newest%"=="%file1%" ( 
    goto build
) else ( 
    goto end
)

:build
python build.py

:end

pdflatex --shell-escape lab.tex