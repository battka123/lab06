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
  cmake_minimum_required(VERSION 3.22.1 FATAL_ERROR)
  set(CMAKE_CXX_COMPILER "/usr/bin/g++-11") 
  project(formatter) 
  set(SOURCE_LIB ~/lab03/formatter_lib/src/formatter.cpp ~/lab03/formatter_lib/src/formatter.h)
  add_library(mylib STATIC ${SOURCE_LIB})
EOF
```
Проверил

> cmake ..

> cmake -B build

> cmake --build build

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
  cmake_minimum_required(VERSION 3.22.1 FATAL_ERROR)
  set(CMAKE_CXX_COMPILER "/usr/bin/g++-11") 
  project(formatter) 
  set(SOURCE_LIB ~/lab03/formatter_lib/src/formatter.cpp ~/lab03/formatter_lib/src/formatter.h)
  add_library(mylib STATIC ${SOURCE_LIB})
EOF
```
Проверил

> cmake ..

> cmake -B build

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
Проверил

> cmake ..

> cmake -B build

![Снимок экрана (107)](https://user-images.githubusercontent.com/55855887/224024880-4dcf34c2-b3fc-4111-a4a1-8c09da0cab5d.png)

![Снимок экрана (114)](https://user-images.githubusercontent.com/55855887/224029598-65794bfc-6ad9-4bc4-86f7-3f2aec890810.png)

