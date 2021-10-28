'''
    Pyabr OS

    Python Cloud Operating System Platform (c) 2021 PyFarsi. Free Software GNU General Public License v3.0

    - Informations

    * Name:             Pyabr
    * Founder:          Mani Jamali
    * Developers:       PyFarsi Community
    * Package Manager:  Paye, PyPI
    * License:          GNU General Publice License v3.0

    - Official Website

    * Persian Page:     https://pyabr.ir
    * English Page:     https://en.pyabr.ir
'''

from pyabr.core import *
from pyabr.quick import *

class MainApp (MainApp):

    def __init__(self):
        super(MainApp, self).__init__()

        self.load (res.get('@layout/calendar'))
        self.setProperty('title',res.get('@string/calendar'))

        self.Jalali = self.findChild('Jalali')
        self.Gregorian = self.findChild('Gregorian')

        x = res.getuserdata ('type')

        if x==None:
            x = control.read_record ('type','/etc/default/calendar')
        
        if x=='0':
            self.Gregorian.setProperty('visible',True)
        elif x=='1':
            self.Jalali.setProperty('visible',True)


application = QtGui.QGuiApplication([])
application.setWindowIcon (QIcon(res.get(res.etc('calendar','logo'))))

w = MainApp()
application.exec()