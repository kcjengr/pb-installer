function Component()
{
}

Component.prototype.createOperations = function()
{

    component.createOperations();

    // Get Version From Updates.xml if available
    var package_version = installer.componentByName("com.probebasic.core").value("Version")

    // Install Debian requirements
    // component.addElevatedOperation("Execute", "apt", "install", "--assume-yes", "python-pyqt5", "python-pyqt5.qtquick", "python-dbus.mainloop.pyqt5", "python-pyqt5.qtopengl", "python-pyqt5.qsci", "python-pyqt5.qtmultimedia", "qml-module-qtquick-controls", "gstreamer1.0-plugins-bad", "libqt5multimedia5-plugins", "pyqt5-dev-tools", "python-dev", "python-setuptools", "python-pip", "git", "python-pyqtgraph", "python-pyqt5.qtwebkit");
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "pip");
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "wheel");

    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "git+https://github.com/kcjengr/qtpyvcp.git", "UNDOEXECUTE", "python3", "-m", "pip", "uninstall", "--yes", "qtpyvcp");


    // Install Conversational Gcode
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "git+https://github.com/kcjengr/qtpyvcp.conversational-gcode.git", "UNDOEXECUTE", "python3", "-m", "pip", "uninstall", "--yes", "qtpyvcp.conversational-gcode");

    // Install Probe Basic
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "@TargetDir@/dist/probe_basic-" + package_version + "-py2-none-any.whl", "UNDOEXECUTE", "python3", "-m", "pip", "uninstall", "--yes", "probe_basic");

    // Compile Resources
    component.addOperation("Execute", "@HomeDir@/.local/bin/qcompile", "@HomeDir@/.local/lib/python2.7/site-packages/probe_basic/")
    component.addOperation("Execute", "@HomeDir@/.local/bin/qcompile", "@HomeDir@/.local/lib/python2.7/site-packages/probe_basic_lathe/")

    // Create Directories
    component.addOperation("Execute", "mkdir", "-p", "@HomeDir@/.local/share/applications/");
    component.addOperation("Execute", "mkdir", "-p", "@HomeDir@/.local/share/icons/");

    // Create Desktop Icons
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/PBMaintenanceTool.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=@TargetDir@/PBMaintenanceTool\nName=ProbeBasic Updates\nIcon=ProbeBasicIcon");
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=linuxcnc @HomeDir@/linuxcnc/configs/probe_basic/probe_basic/probe_basic.ini\nName=ProbeBasic SIM\nIcon=ProbeBasicIcon");

    // Install Icons
    component.addOperation("InstallIcons", "@TargetDir@/icons");
}
