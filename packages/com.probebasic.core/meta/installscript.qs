function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();

    component.addElevatedOperation("Execute", "apt", "install", "--assume-yes", "python-pyqt5", "python-pyqt5.qtquick", "python-dbus.mainloop.pyqt5", "python-pyqt5.qtopengl", "python-pyqt5.qsci", "python-pyqt5.qtmultimedia", "qml-module-qtquick-controls", "gstreamer1.0-plugins-bad", "libqt5multimedia5-plugins", "pyqt5-dev-tools", "python-dev", "python-setuptools", "python-pip", "git", "python-pyqtgraph", "python-pyqt5.qtwebkit");

    component.addOperation("Execute", "python", "-m", "pip", "install", "--user", "--upgrade", "probe-basic==%ProductVersion%", "UNDOEXECUTE", "python", "-m", "pip", "uninstall", "--yes", "probe-basic==%ProductVersion%");
    component.addOperation("Execute", "mkdir", "-p", "@HomeDir@/.local/share/applications/");
    component.addOperation("InstallIcons", "@TargetDir@/ProbeBasicIcon.png");
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=linuxcnc @HomeDir@linuxcnc/configs/probe_basic/probe_basic/probe_basic.ini\nName=ProbeBasic SIM\nIcon=@HomeDir@/.local/share/pixmaps/probebasic.png");
    // component.addOperation("Copy", "@TargetDir@/ProbeBasicIcon.png", "@HomeDir@/.local/share/pixmaps/");
    // component.addOperation("Copy", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "@HomeDir@/Desktop/");
}

