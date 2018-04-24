# Installing Python, MNE-Python and ConPy

I have tried to provide clear installation instructions below. If they do not work for you, first try Googling around a bit, then send me an email at: marijn.vanvliet@aalto.fi 

## 1. Install a python environment

Install the Anaconda python distribution. It comes in two flavors: Anaconda and Miniconda. For the purposes of our exercise, Miniconda distribution will be enough. If you already have a working Anaconda installation, you can use that too.
 
### Linux

1. Download the installer here: https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
1. Open a terminal and run the following command: `bash ~/Downloads/Miniconda3-latest-Linux-x86_64.sh` (you may have to change the path to point to wherever you saved the installer script.)
1. Follow the installation instructions on the screen.
1. When prompted `Do you wish the installer to prepend the Miniconda3 install location to PATH in your ~/.bash_profile ? [yes|no]` type `yes` (unless you are running a different shell than BASH in which case it's up to you to add Miniconda3 to your `PATH`.)
1. Close the terminal window and open a new one. Try running the `conda` command. If you get a `conda: command not found` error, Miniconda3 is not properly set in your `PATH`. 

### Mac

1. Download the installer here: https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
1. Open `Terminal.app` and run the following command: `bash ~/Downloads/Miniconda3-latest-MacOSX-x86_64.sh` (you may have to change the path to point to wherever you saved the installer script.)
1. Follow the installation instructions on the screen.
1. When prompted `Do you wish the installer to prepend the Miniconda3 install location to PATH in your /Users/<username>/.bash_profile ? [yes|no]` choose yes (unless you are running a different shell than BASH in which case it's up to you to add Miniconda3 to your `PATH`.)
1. Close the terminal window and open a new one. Try running the `conda` command. If you get a `conda: command not found` error, Miniconda3 is not properly set in your `PATH`. 

### Windows

1. Download the installer here: https://repo.continuum.io/miniconda/Miniconda3-latest-Windows-x86_64.exe
1. Run it and follow the instructions on the screen.
1. The "Anaconda Prompt" application should now be available on your Start menu. Open it.
1. Try running the `conda` command in the terminal window that you just opened.
1. Install the Visual Studio Build Tools: https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=15


## 2. Create a new environment with the required Python packages: MNE-Python, Conpy

1. Download this file: https://raw.githubusercontent.com/wmvanvliet/NBEHBC/master/hs3/environment.yml
1. Open a terminal for running anaconda. On Linux and OSX, just open a regular terminal window. On windows, you can use the "Anaconda Prompt" entry in your Start menu. 
1. Run `conda env create -f ~/Downloads/environment.yml` (you may have to change the path to point to the location where you saved the `environment.yml` file.)
1. Watch the installation process scroll by.
1. On Linux or OSX, run `source activate nbehbc` to activate the new environment. On Windows, run `activate nbehbc`. Your prompt should change to indicate the `nbehbc` environment is now active.
1. Run `python -c "import mne, conpy"` to see if the installation was succesfull. The command should not give you any errors and finish silently.
1. Download the file: https://raw.githubusercontent.com/wmvanvliet/NBEHBC/master/hs3/check_system.py
1. With the `nbehbc` environment activated, run `python check_system.py`. The script will check your system and report any problems.


## 3. Launch the Jupyter Notebook environment

1. Download the preassignment notebook: https://raw.githubusercontent.com/wmvanvliet/NBEHBC/master/hs3/preassignment.ipynb
1. In your Miniconda3 terminal, change your working directory to the path you've saved the `preassignment.ipynb` file to (the command to do this is `cd`).
1. Make sure the `nbehbc` environment is active by running `source activate nbehbc` on Linux/Max or `activate nbehbc` on Windows.
1. In the directory where the `preassignment.ipynb` file lives, run the following command: `jupyter notebook`. This should open up a browser window showing the contents of your current working directory. It will also write the URL to the terminal so you can point your browser to it manually if need be.
1. In the browser, click on the `preassignment.ipynb` file to open it.


## 4. Learn some essential things about Python

1. Follow the short tour of Python provided in the `preassignment.ipynb` notebook.
