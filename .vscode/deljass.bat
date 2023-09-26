@echo off
::设置为UTF-8编码
chcp 65001

set jasspath=%vscodePath%\wurst\war3map.j
if exist jasspath (
rm jasspath
)

