import os
import subprocess
import webbrowser
import time

# Path to your Django project
project_path = r'C:\Users\rafid\Downloads\project thesis\graph'
# Path to your virtual environment's Scripts folder
venv_activate = r'C:\Users\rafid\Downloads\project thesis\graph\venv\Scripts\activate.bat'

# Change to project directory
os.chdir(project_path)

# Activate virtual environment and run the server in one command
cmd = f'cmd /k "{venv_activate} & python manage.py runserver"'

# Start the server with the virtual environment activated
subprocess.Popen(cmd, shell=True)

# Wait a bit to let the server start
time.sleep(3)

# Open the development server in the browser
webbrowser.open("http://127.0.0.1:8000")