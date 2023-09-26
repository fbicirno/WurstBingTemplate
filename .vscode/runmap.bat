@echo off
::设置为UTF-8编码
chcp 65001

::填写路径设置
set ydwePath=/d D:\War3\WorldEdit
set war3Path=D:\War3\war3_for_we




set mapName=buildmap
echo "欢迎使用ydwe编译地图wurst版，作者：冰冰"
timeout /t 1
set vscodePath=%~1
set extCmd=%~2
if not exist "%war3Path%\Maps\vscode" (
md %war3Path%\Maps\vscode
echo "无vscode文件夹，自动创建，，"
)
copy "%vscodePath%\_build\%mapName%.w3x" "%war3Path%\Maps\vscode\%mapName%.w3x"
cd %ydwePath%
if "%extCmd%"=="run" (
bin\ydweconfig.exe -launchwar3 -loadfile "%war3Path%\Maps\vscode\%mapName%.w3x"
)
