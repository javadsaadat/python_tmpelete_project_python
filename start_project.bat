@echo off

rem Create virtual environment
python -m venv venv

rem Dynamically modify activate.bat
echo rem Dynamically set PYTHONPATH >> venv\Scripts\activate.bat
echo for %%i in ("%%VIRTUAL_ENV%%") do set PROJECT_ROOT=%%~dpi >> venv\Scripts\activate.bat
echo set PROJECT_ROOT=%%PROJECT_ROOT:~0,-1%% >> venv\Scripts\activate.bat
echo set PYTHONPATH=%%PROJECT_ROOT%%;%%PYTHONPATH%% >> venv\Scripts\activate.bat

rem Activate the virtual environment
call venv\Scripts\activate

rem Install dependencies
if exist requirements.txt (
    pip install -r requirements.txt
)

echo Virtual environment is ready, and PYTHONPATH is dynamically configured.
