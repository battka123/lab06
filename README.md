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

![Снимок экрана (102)](https://user-images.githubusercontent.com/55855887/223981018-99369929-381f-46cf-8716-71eda6dd0426.png)

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

![Снимок экрана (104)](https://user-images.githubusercontent.com/55855887/223984002-f97e7ec3-3586-47e2-ba47-7c5c830f56ff.png)

### #Task_3
