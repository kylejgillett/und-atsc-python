<p align="center"><img width="500" alt="atsc_logo" src="https://github.com/user-attachments/assets/e1887f29-e747-48b8-89bb-077b1a042341" /></p>

<div align="center">

# Python Environment for UND ATSC courses

If you have questions or run into issues, reach out to Dr. Jordan Christian (jordan.i.christian@und.edu) or Kyle Gillett (kyle.gillett@und.edu)

<br>

</div>

## **Contents**
Primary steps:
* [Overview](#overview)
* [Prerequisite Installations](#prerequisite-installations)

  * [Python Installation](#python-installation)
  * [JupyterLab Installation](#jupyterlab-installation)
* [Creating the UND ATSC Python Environment](#creating-the-und-atsc-python-environment)
* [Running JupyterLab](#running-jupyterlab)
* [Have Questions?](#have-questions)

Other resources:
* [Updating the UND ATSC Python Environment](#updating-the-und-atsc-python-environment)
* [Activating the UND ATSC Python Environment](#activating-the-und-atsc-python-environment)
* [Testing Your Installation](#testing-your-installation)


<br>

## **Overview**
This repository contains installation instructions, scripts, and environments to set up Python on personal computers to complete coding assignments in UND ATSC courses.

<br>

## **Prerequisite Installations**
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

- ### Mac

    1. Open a Terminal, and type: 
        ```bash
        python3.11 --version
        ```

        If the output shows `Python 3.11.x`, move on to the JupyterLab installation, otherwise, follow the steps below to install Python 3.11.

        Install [Python 3.11 for Mac](https://www.python.org/downloads/macos/) by downloading the macOS 64-bit universal2 install under Python 3.11.9.

        After the install is complete, type `python3.11 --version` in a Terminal to verify installation.

<br> 

### **JupyterLab Installation**

- ### Windows
    
    1. Open the Command Prompt, and type: 
        ```cmd
        pip install jupyterlab 
        ```
        
        or 
        
        ```cmd
        py -m pip install jupyterlab
        ```
        > **Note:** Depending on your python install, you may need to use `python`, `python3` or `py` at the beginning of the above command.

- ### Mac
    
    1. Open a Terminal, and type:
    
        ```bash
        python3.11 -m pip install jupyterlab
        ```

<br>
<br>

## **Creating the UND ATSC Python Environment**

- ### Windows
    Open the Command Prompt, and use the `cd` command and navigate to the directory where you would like to keep the UND ATSC Python environment.

    1. If the Command Prompt, type: 
        ```cmd
        git clone https://github.com/jordanichristian/und-atsc-python.git
        ```
        > **Note:** If the above command doesn't work, [download and install Git for Windows](https://gitforwindows.org/). Keep all of the default selected options during the install. After installation is complete, close the Command Prompt, open a new Command Prompt, and try the `git clone` command again in the Command Prompt.

    2. Then enter the new directory: 
    
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
    Open the Command Prompt, and use the `cd` command and navigate to the directory where you would like to keep the UND ATSC Python environment.

    1. In the Terminal, type: 
        ```bash
        git clone https://github.com/jordanichristian/und-atsc-python.git
        ```

    2. Then enter the new directory:
        ```bash
        cd und-atsc-python
        ```
    
    3. Then, run the script `create_python_env_mac_linux.sh` by typing: 
        ```bash
        ./create_python_env_mac_linux.sh
        ```

        > **Note:** If the script doesn't run, make it "executable" by typing: `chmod u+x create_python_env_mac_linux.sh` then try running the script again.


        **If successful, you should see the output: <br>`"ATSC Python environment setup complete!"`**

<br>
<br>

## **Running JupyterLab**

After Python 3.11 and JupyterLab have been installed and the UND ATSC Python environment is set up, JupyterLab can be started with the following commands:

- ### Windows: 

    1. Open a Command Prompt and type:

        ```cmd
        jupyter lab
        ```
        or:

        ```cmd
        py -m jupyterlab
        ```

    <br>

- ### Mac:

    1. Open a Terminal and type:

        ```bash
        jupyter lab
        ```

<br>


- ### After opening a Jupyter notebook: 
    The above commands will open a browser tab that will allow you to work with Jupyter notebooks (`.ipynb` files).

    Click the current kernel name (usually **Python 3 (ipykernel)**) in the top-right corner of the notebook and change it to **und_atsc_kernel**. This ensures the notebook uses the packages installed in the UND ATSC Python environment.


<br>
<br>

## **Have questions?**

Reach out to Dr. Jordan Christian (jordan.i.christian@und.edu) or Kyle Gillett (kyle.gillett@und.edu)

<br>
<br>
<br>
<br>
<br>

## **Updating the UND ATSC Python Environment**

When updates are made to the UND ATSC Python environment, you may update your local environment using `git pull`

The setup scripts automatically remove the existing `und_atsc_env` and create a fresh environment using the latest `requirements.txt`.

*Your personal Python scripts, notebooks, and other files are not affected!*

- ### Windows

    1. Open Command Prompt and navigate to your `und_atsc_env` directory using the `cd` command. Once inside, use `git pull` to "pull down" the updates from GitHub:
        ```cmd
        git pull --ff-only
        ```

    2. Then rebuild the environment:
        ```cmd
        create_python_env_windows.bat
        ```

<br>

- ### Mac / Linux

    1. Open Command Prompt and navigate to your `und_atsc_env` directory using the `cd` command. Once inside, use `git pull` to "pull down" the updates from GitHub:

        ```bash
        git pull --ff-only
        ```

    2. Then rebuild the environment:

        ```bash
        ./create_python_env_mac_linux.sh
        ```


<br>
<br>

## **Activating the UND ATSC Python Environment**

**FOR ADVANCED USERS ONLY:** To troubleshoot issues, install or update packages, or run Python commands directly within the UND ATSC environment, first activate the environment. This also varies by operating system:

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

- ### Mac/Linux

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
<br> 

## **Testing your installation**

1. Follow the instructions above to [activate your `und_atsc_env` environment.](#activating-the-und-atsc-python-environment)
2. When your environment is activated, type the following command into your terminal (Mac) or command prompt (Windows):

    ```cmd
    sounderpy --help
    ```

    If a message pops up with instructions for using SounderPy, your environment is working and up to date!

    > **Note**: If that doesn't work, you may need to use ``python -m sounderpy --help`` (also try ``python3`` and ``py``)
