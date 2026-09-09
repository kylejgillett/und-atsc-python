<p align="center"><img width="500" alt="atsc_logo" src="https://github.com/user-attachments/assets/e1887f29-e747-48b8-89bb-077b1a042341" /></p>

# Python Environment for UND ATSC courses

<br>

## Overview
This repository contains installation instructions, scripts, and environments to set up Python on personal computers to complete coding assignments in UND ATSC courses.

<br>

## Prerequisite Installations
Before setting up the Python environment, two installations are required:
1) Python (**version 3.11**)
2) JupyterLab

### **Python Installation**

- ### Windows

    1. Open the Command Prompt, and type: 
    
    ```cmd
    python --version
    ```
    or 
    ```cmd
    py --version
    ```

    If the output shows `Python 3.11.x` for one of the commands typed above, **move on to the JupyterLab installation**, otherwise, follow the steps below to install Python 3.11.

    Install [Python 3.11 for Windows](https://www.python.org/downloads/windows/) by downloading the Windows installer (64-bit) under Python 3.11.9.

    After the install is complete, type `python --version` or `py --version` in the Command Prompt to verify installation.

<br>

- ### **Mac**

    1. Open a Terminal, and type: 
    ```cmd
    python3.11 --version
    ```

    If the output shows `Python 3.11.x`, move on to the JupyterLab installation, otherwise, follow the steps below to install Python 3.11.

    Install [Python 3.11 for Mac](https://www.python.org/downloads/macos/) by downloading the macOS 64-bit universal2 install under Python 3.11.9.

    After the install is complete, type `python3.11 --version` in a Terminal to verify installation.

<br> 

### JupyterLab Installation

- **Windows**
    
    1. Open the Command Prompt, and type: 
    
    ```cmd
    pip install jupyterlab 
    ```
    
    or 
    
    ```cmd
    py -m pip install jupyterlab
    ```
    > **Note:** Depending on your python install, you made need to use `python`, `python3` or `py` at the beginning of the above command.

- **Mac** 
    
    1. Open a Terminal, and type:
    
    ```cmd
    python3.11 -m pip install jupyterlab
    ```
<br>

## Creating the UND ATSC Python Environment

- ### Windows
    Open the Command Prompt, and use the `cd` command to change directories to a location where you would like to keep the Python environment. If you prefer to simply create the environment under \Users\your_username on your computer, skip to the next step.

    1. In the Command Prompt, type: 
    ```cmd
    git clone https://github.com/jordanichristian/und-atsc-python.git
    ```

    > **Note:** If the above command doesn't work, [download and install Git for Windows](https://gitforwindows.org/). Keep all of the default selected options during the install. After installation is complete, close the Command Prompt, open a new Command Prompt, and try the `git clone` command again in the Command Prompt.

    2. then enter the new directory: 
    
    ```cmd
    cd und-atsc-python
    ```

    3. Then, run the script `create_python_env_windows.bat` by typing: 
    ```cmd
    create_python_env_windows.bat
    ```

    **If successful, you should see the output: <br>`"ATSC Python environment setup complete!"`**
    
    <br>

- ### Mac
    Open a Terminal, and use the `cd` command to change directories to a location where you would like to keep the Python environment. If you prefer to simply create the environment under /Users/your_username on your computer, skip to the next step.

    1. In the Terminal, type: 

    ```cmd
    git clone https://github.com/jordanichristian/und-atsc-python.git
    ```

    2. then enter the new directory:

    ```cmd
    cd und-atsc-python
    ```
    
    3. Then, run the script `create_python_env_mac_linux.sh` by typing: 
    
    ```cmd
    ./create_python_env_mac_linux.sh
    ```

    > **Note:** If the script doesn't run, try typing: `chmod u+x create_python_env_mac_linux.sh` then try running the script again.



    **If successful, you should see the output: <br>`"ATSC Python environment setup complete!"`**

<br>


## Running JupyterLab

After Python 3.11 and JupyterLab have been installed and the UND ATSC Python environment is set up, JupyterLab can be started with the following commands:

- ### Windows: 

    Open a Command Prompt and type:

    ```cmd
    jupyter lab
    ```

    or:

    ```cmd
    py -m jupyterlab
    ```

    <br>

- ### Mac:

    Open a Terminal and type:

    ```bash
    jupyter lab
    ```

    This will open a browser tab that will allow you to work with Jupyter notebooks (`.ipynb` files).

    After opening a Jupyter notebook, click the current kernel name (usually **Python 3 (ipykernel)**) in the top-right corner of the notebook and change it to **und_atsc_kernel**. This ensures the notebook uses the packages installed in the UND ATSC Python environment.



## Activating the UND ATSC Python Environment

Should you run into any issues with the instructions above, if JupyterLab doesn't open, or if you want to try updating a package within the environment, do so by *activating* the environment. This also varies by operating system:

- ### Windows

    1. Open the Command Prompt and navigate to the `und-atsc-python` directory. For example:

    ```cmd
    cd und-atsc-python
    ```

    2. Then activate the environment by typing:

    ```cmd
    und_atsc_env\Scripts\activate
    ```

    After activation, you should see `(und_atsc_env)` at the beginning of the Command Prompt, similar to:

    ```text
    (und_atsc_env) C:\Users\your_username\und-atsc-python>
    ```

    To deactivate the environment when you are finished, type:

    ```cmd
    deactivate
    ```

    <br>

- ### Mac

    1. Open a Terminal and navigate to the `und-atsc-python` directory. For example:

    ```bash
    cd und-atsc-python
    ```

    2. Then activate the environment by typing:

    ```bash
    source und_atsc_env/bin/activate
    ```

    After activation, you should see `(und_atsc_env)` at the beginning of the Terminal prompt.

    To deactivate the environment when you are finished, type:

    ```bash
    deactivate
    ```

    > **Note:** The environment must be activated from the `und-atsc-python` directory unless you provide the full path to the `und_atsc_env` directory.

<br>


## Have questions ?

Reach out to Dr. Jordan Christian (jordan.i.christian@und.edu) or Kyle Gillett (kyle.gillett@und.edu)