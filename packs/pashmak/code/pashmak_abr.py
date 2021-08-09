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
import sys, subprocess
from libabr import *

files = Files()
colors = Colors()

if sys.argv[1:]==[]:
    subprocess.call([sys.executable,'usr/app/pashmak_core.pyc'])

elif sys.argv[1].startswith('-'):
    subprocess.call([sys.executable,'usr/app/pashmak_core.pyc',sys.argv[1]])
else:
    subprocess.call([sys.executable,'usr/app/pashmak_core.pyc',files.input(sys.argv[1])])

if files.isdir ('__pashmam__'):
    files.removedirs ('__pashmam__')

if files.isdir ('/__pashmam__'):
    files.removedirs ('/__pashmam__')