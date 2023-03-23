# Homework

Чтобы получить файлы 3 лабы: `git clone https://github.com/battka123/lab03-Programming-technologies-and-methods.git` клонировал репозиторий.

Перешёл в каталог `cd lab03-Programming-technologies-and-methods`.

Отключил удаленный репозиторий с именем origin `git remote remove origin`.

Подключил удаленный репозиторий под именем origin `git remote add origin https://github.com/battka123/lab04-Programming-technologies-and-methods.git`.

Создал дирректорию и перешёл в неё `.github/workflows && cd .github/workflows`. Добавил файл CI.yml `touch CI.yml`. 

Структура этого файла:
```
name: CMake

on:
 push:
  branches: [master]
 pull_request:
  branches: [master]

jobs: 
 build_Linux:

  runs-on: ubuntu-latest

  steps:
  - uses: actions/checkout@v3

  - name: Configure Solver
    run: cmake ${{github.workspace}}/solver_application/ -B ${{github.workspace}}/solver_application/build

  - name: Build Solver
    run: cmake --build ${{github.workspace}}/solver_application/build

  - name: Configure HelloWorld
    run: cmake ${{github.workspace}}/hello_world_application/ -B ${{github.workspace}}/hello_world_application/build

  - name: Build HelloWorld
    run: cmake --build ${{github.workspace}}/hello_world_application/build

 build_Windows:

  runs-on: windows-latest

  steps:
  - uses: actions/checkout@v3

  - name: Configure Solver
    run: cmake ${{github.workspace}}/solver_application/ -B ${{github.workspace}}/solver_application/build

  - name: Build Solver
    run: cmake --build ${{github.workspace}}/solver_application/build

  - name: Configure HelloWorld
    run: cmake ${{github.workspace}}/hello_world_application/ -B ${{github.workspace}}/hello_world_application/build

  - name: Build HelloWorld
    run: cmake --build ${{github.workspace}}/hello_world_application/build
```
> name - имя процесса/шага

> on - задаёт тригеры (условия, при которых будет запуск)

> jobs - задаёт задачи

> build_Linux/Windows - название задачи

> runs-on - задаёт систему, на которой будет запущен

> steps - пункты задачи

> uses - действие, запускающее скрипты

> run - команда


Добавляю файл + дирректории, которые сохранились с прошлой лабы, в которых и была проверка (в репозитории 3 лабы их не было). Делаю коммит и пушу.
```
git add .github
git commit -m "Add files"
git push origin master
```

Проверяю на Github Action. Все тесты пройдены.
