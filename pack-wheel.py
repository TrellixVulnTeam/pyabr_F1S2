'''
    Pyabr OS

    Python Cloud Operating System Platform (c) 2021 PyFarsi. Free Software GNU General Public License v3.0

    - Informations

    * Name:             Pyabr
    * Founder:          Mani Jamali
    * Developers:       PyFarsi Community
    * Package Manager:  Paye, Apt, Dpkg, PyPI
    * License:          GNU General Publice License v3.0

    * Source code:      https://github.com/PyFarsi/pyabr
    * PyPI:             https://pypi.org/project/pyabr

    - Download Pyabr OS

    * AMD64, Intel64:   https://dl.pyabr.ir/pyabr-x86_64.iso     
    * ARM64:            https://dl.pyabr.ir/pyabr-arm64.img
    * Platform:         https://dl.pyabr.ir/stor.sb
    * Wheel Package:    https://dl.pyabr.ir/pyabr.whl
    
    - Channels:

    * Official Website: https://pyabr.ir
    * Telegram Channel: https://t.me/pyfarsi
    * Gap Channel:      https://gap.im/pyabr
    * Sorosh Channel:   https://splus.ir/pyabr
    * Instagram:        https://instagram.com/pyabrir
    * Hoorsa:           https://hoorsa.com/pyabr
    * Aparat:           https://aparat.com/pyabr

'''

import shutil, os, sys,py_compile
import base64

if not os.path.isdir ("build-packs"): os.mkdir ("build-packs")
if not os.path.isdir ("wheel/src"): os.mkdir("wheel/src")
shutil.unpack_archive('wheel/setup.zip','wheel/setup','zip') # Unpack setup wheel package

## Copy all files and dirs in wheel/setup/src ##

list = os.listdir('.')
list.remove('.git')
list.remove('.idea')
list.remove('wheel')
list.remove('clouddrive')
list.remove('build-packs.py')
list.remove('debug.py')
list.remove('debug_apps')
list.remove('debug_params')
list.remove('LICENSE')
list.remove('pack-wheel.py')
list.remove('README.md')
list.remove('requirments.txt')
list.remove('rootcopy')
list.remove('.circleci')
if '__pycache__' in list:
    list.remove('__pycache__')
for i in list:
    if os.path.isdir(i):
        shutil.copytree(i,'wheel/src/'+i)
    else:
        shutil.copyfile(i, 'wheel/src/'+i)


shutil.copyfile('LICENSE','wheel/setup/LICENSE')
shutil.copyfile('README.md','wheel/setup/README.md')
shutil.copyfile('wheel/setup-pack.py','wheel/setup/setup.py')
shutil.copyfile('wheel/setup-installer.py','wheel/setup/pyabr/setup.py')
file = open ("wheel/setup/pyabr/__main__.py","w");file.write('from pyabr import setup');file.close()

## Pack src to setup ##
shutil.make_archive('wheel/setup/pyabr/pyabr','zip','wheel/src')

## Build wheel package and save it to build-packs ##

os.system ("cd wheel/setup && \""+sys.executable+"\" setup.py bdist_wheel")

C = input('Do you want to clean the cache? [Y/n]: ')
if C.lower()=='y':
    import clean