## Шаблонизатор для лабораторных работ в LaTeX
### Руководство по эксплуатации:
- С помощью *conf.json* можно определить переменные, используемые в лабораторной. Например, если в conf.json имеется строка "LabNum": 1, то внутри .tex файлов можно использовать команду \LabNum, которая будет заменена на "1".
- Кастомные команды записываются в файл *config.tex*. Этот файл автоматически генерируется скриптом build.py
- Основной файл - *lab.tex*
- Титульный лист генерируется автоматически на основе config.tex
- **ДОБАВЛЕНЫ СКРИПТЫ СБОРКИ** - make.bat, make.sh. Просто запустить файл.