@echo off
set type=Release
set build_dir=build-%type%
set qt_dir=D:\dev\Qt\5.15.0\msvc2019
if not exist %build_dir% (
md %build_dir%
cd %build_dir%
cmake .. -DCMAKE_BUILD_TYPE=%type% -G "Visual Studio 16 2019" -A Win32 -DCMAKE_PREFIX_PATH=%qt_dir%
) else (
cd %build_dir%
)
