function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addElevatedOperation("Execute", "apt", "install", "--assume-yes", "python-pyqt5", "python-pyqt5.qtquick", "python-dbus.mainloop.pyqt5", "python-pyqt5.qtopengl", "python-pyqt5.qsci", "python-pyqt5.qtmultimedia", "qml-module-qtquick-controls", "gstreamer1.0-plugins-bad", "libqt5multimedia5-plugins", "pyqt5-dev-tools", "python-dev", "python-setuptools", "python-pip", "git", "python-pyqtgraph");
    component.addOperation("Execute", "python", "-m", "pip", "install", "--user", "--upgrade", "qtpyvcp==v0.3.4", "UNDOEXECUTE", "python", "-m", "pip", "uninstall", "--yes", "qtpyvcp==v0.3.4");
}
