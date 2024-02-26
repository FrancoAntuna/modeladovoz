@echo off
setlocal

REM Clonar el repositorio desde GitHub
git clone https://github.com/FrancoAntuna/modelovoz.git "%~dp0project-main"

REM Cambiar al directorio recién creado
cd /d "%~dp0project-main"

REM Instalar los requisitos del proyecto
pip install -r "%~dp0project-main\requirements-safe.txt"

REM Instalar pyngrok y tensorflow en la versión específica
pip install pyngrok tensorflow==2.12.0

REM Eliminar la carpeta sample_data
rmdir /s /q "%~dp0project-main\sample_data"

REM Crear la carpeta dataset
mkdir "%~dp0dataset"

endlocal
