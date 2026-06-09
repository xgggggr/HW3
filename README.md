# HW3
Проект из двух контейнеров. Первый генерирует CSV с данными, второй читает этот CSV и строит из него HTML-отчёт. Данные лежат на хосте, в папке data/
Команды:
для первого запуска:
```bash
chmod +x run.sh
```
остальные:
```bash
./run.sh build_generator     #собрать образ генератора
./run.sh run_generator       #создать data/data.csv
./run.sh create_local_data   #то же, но без Docker (в local_data/, для отладки)

./run.sh build_reporter      #собрать образ аналитика
./run.sh run_reporter        #создать data/report.html

./run.sh structure           #показать все файлы проекта
./run.sh clear_data          #удалить data.csv и data.html
./run.sh inside_generator    #Запускает контейнер генератора и выводит её содержимое data изнутри контейнера
./run.sh inside_reporter     #Аналогично предыдущей команде, но для контейнера аналитика
```
## Запускать из папки проекта!!!!
```bash
cd HW3
./run.sh build_generator
./run.sh run_generator
...
```
