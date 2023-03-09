# Homework
### #Task_1
```
mkdir formatter_lib
cd formatter_lib
mkdir build
mkdir src
cd src
wget https://github.com/tp-labs/lab03/blob/master/formatter_lib/formatter.cpp
wget https://github.com/tp-labs/lab03/blob/master/formatter_lib/formatter.h
cd ..
cat >> CMakeLists.txt <<EOF
cmake_minimum_required(VERSION 3.22.1)
project(formatter_lib)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_library(formatter_lib STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/formatter.cpp)
EOF
```
Проверил: `cmake ..`, `cmake -B build`, `cmake --build build`.

![Снимок экрана (102)](https://user-images.githubusercontent.com/55855887/223981018-99369929-381f-46cf-8716-71eda6dd0426.png)

![Снимок экрана (112)](https://user-images.githubusercontent.com/55855887/224029341-6ab49816-789b-44e5-a365-c26ddd29ff0e.png)

### #Task_2
```
 mkdir formatter_ex
 cd formatter_ex
 mkdir src
 mkdir build
 cd src
 wget https://github.com/tp-labs/lab03/blob/master/formatter_ex_lib/formatter_ex.h
 wget https://github.com/tp-labs/lab03/blob/master/formatter_ex_lib/formatter_ex.cpp
 cd ..
 cat >> CMakeLists.txt <<EOF
 cmake_minimum_required(VERSION 3.22.1)
project(formatter_ex_lib)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib formatter_lib_dir)
add_library(formatter_ex_lib STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/formatter_ex.cpp)
target_include_directories(formatter_ex_lib PUBLIC
${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib
)
target_link_libraries(formatter_ex_lib formatter_lib)
EOF
```
Проверил: `cmake ..`, `cmake -B build`, `cmake --build build`.

![Снимок экрана (104)](https://user-images.githubusercontent.com/55855887/223984002-f97e7ec3-3586-47e2-ba47-7c5c830f56ff.png)

![Снимок экрана (113)](https://user-images.githubusercontent.com/55855887/224029488-604c2ff7-65ba-426c-9f8a-bb9a1ed1540d.png)

### #Task_3
```
cmake_minimum_required(VERSION 3.22.1)
project(hello_world)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib formatter_ex_lib_dir)
add_executable(hello_world ${CMAKE_CURRENT_SOURCE_DIR}/src/hello_world.cpp)
target_include_directories(hello_world PUBLIC
${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib
)
target_link_libraries(hello_world formatter_ex_lib)
```
Проверил: `cmake ..`, `cmake -B build`, `cmake --build build`.

![Снимок экрана (107)](https://user-images.githubusercontent.com/55855887/224024880-4dcf34c2-b3fc-4111-a4a1-8c09da0cab5d.png)

![Снимок экрана (114)](https://user-images.githubusercontent.com/55855887/224029598-65794bfc-6ad9-4bc4-86f7-3f2aec890810.png)

Проверяю работу `build/hello_world` .

![Снимок экрана (116)](https://user-images.githubusercontent.com/55855887/224030068-e3ea5a42-56ea-4074-9588-cb636fd0d028.png)

Cоберу библиотеку solver_lib.

Добавлю в файл: `#include <cmath>` и удалю `std::` в 2 местах .
Создал CMakeLists.txt .
```
cmake_minimum_required(VERSION 3.22.1)
project(solver_lib)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_library(solver_lib ${CMAKE_CURRENT_SOURCE_DIR}/solver.cpp)
```
В директории solver_application, создаю файл CMakeLists.txt .
```
cmake_minimum_required(VERSION 3.22.1)
project(solver)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib formatter_ex_lib_dir)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib solver_lib_dir)
add_executable(solver ${CMAKE_CURRENT_SOURCE_DIR}/equation.cpp)
target_include_directories(formatter_ex_lib PUBLIC
${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib
${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib
)
target_link_libraries(solver formatter_ex_lib solver_lib)
```
Прописываю: `cmake -B build` и `cmake --build build` , `build/hello_world`.

![Снимок экрана (120)](https://user-images.githubusercontent.com/55855887/224037601-1d0c25f0-3f11-4af3-9fcb-1dc2cadc5af2.png)



Всё работает!

