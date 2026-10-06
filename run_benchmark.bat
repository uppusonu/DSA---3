@echo off
title Network Flow Comparative Benchmark
echo ===================================================================
echo     Running Network Flow Comparative Performance Benchmarks
echo ===================================================================

cd /d "%~dp0"
if not exist "bin" mkdir bin

if not exist "bin\Main.class" (
    echo Compiling Java source files...
    javac -encoding UTF-8 -d bin src/model/*.java src/algorithms/*.java src/data/*.java src/benchmark/*.java src/ui/*.java src/Main.java test/*.java
)

java -cp bin Main --benchmark
pause
