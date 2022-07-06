# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys
from getpass import getpass
from pyrebase import pyrebase

from PySide2.QtGui import QGuiApplication , QIcon
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal

firebaseConfig = {

  "apiKey": "AIzaSyCPwwLmORWNqfE_RT6XeRp1uyzgJNifXBo",

  "authDomain": "rover-y-e2ef3.firebaseapp.com",


  "databaseURL": "https://<Project nick name>.firebaseio.com",

  "projectId": "rover-y-e2ef3",

  "storageBucket": "rover-y-e2ef3.appspot.com",

  "messagingSenderId": "788325002261",

  "appId": "1:788325002261:web:489e7e89f550f58625f21c",

  "measurementId" : "G-X9HS5X8JMP"

}
firebase = pyrebase.initialize_app(firebaseConfig)

auth = firebase.auth()


#user = auth.create_user_with_email_and_password(email, password)


class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)


    setName = Signal(str)

    setLogin = Signal(str)

    @Slot(str)
    def welcomeText(self,name):
        self.setName.emit("NOT FINDED,"+name)

    @Slot(str,str)
    def recister(self, email, password):
        user = auth.sign_in_with_email_and_password(email, password)
        self.setLogin.emit(":)")





if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    app.setWindowIcon(QIcon("logo.svg"))
    engine = QQmlApplicationEngine()


    main= MainWindow()
    engine.rootContext().setContextProperty("backend",main)


    engine.load(os.fspath(Path(__file__).resolve().parent / "qml/splashscreen.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
