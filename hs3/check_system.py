import os
import warnings

# Scientific stack message
stack_msg = ('Make sure the basic Python scientific stack (Numpy/Scipy/Matplotlib) is installed.'
             'We recommend using the Anaconda Python distribution for this: http://docs.continuum.io/anaconda/install')

# Check if dependencies are present
try:
    import numpy
except:
    raise ValueError('numpy is not installed. ' + stack_msg)

try:
    import scipy
except:
    raise ValueError('scipy is not installed. ' + stack_msg)

try:
    from matplotlib import pyplot
except:
    raise ValueError('matplotlib is not installed. ' + stack_msg)

try:
    import mne
except:
    raise ValueError('mne is not installed. Please run `pip install https://github.com/mne-tools/mne-python/zipball/master` to install it.')

try:
    from distutils.version import LooseVersion
    assert LooseVersion(mne.__version__) >= LooseVersion('0.16')
except:
    raise ValueError('your mne version is too old. Version %s is current installed, while version >= 0.16 is required. Please run `pip install --update https://github.com/mne-tools/mne-python/zipball/master` to install the lastest development version.')

try:
    from mayavi import mlab
except:
    raise ValueError('mayavi is not installed. Please run `conda install mayavi` to install it.')

try:
    import conpy
except:
    raise ValueError('conpy is not installed. Please run `pip install https://github.com/wmvanvliet/conpy/zipball/master` to install it.')

mne.sys_info()

print("\nAll seems to be in order. You are all set for the exercise!")
