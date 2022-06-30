function Component()
{
}

Component.prototype.createOperations = function()
{

    component.createOperations();

    // Get Version From Updates.xml if available
    var package_version = installer.componentByName("com.probebasic.core").value("Version")
 	var version = package_version.replace("+", "_");
 	 
    // Install Conversational Gcode
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "git+https://github.com/kcjengr/qtpyvcp.conversational-gcode.git@python3", "UNDOEXECUTE", "python3", "-m", "pip", "uninstall", "--yes", "qtpyvcp.conversational-gcode");

    // Install Probe Basic
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "@TargetDir@/dist/probe_basic-" + version + "-py3-none-any.whl", "UNDOEXECUTE", "python3", "-m", "pip", "uninstall", "--yes", "probe_basic");

    // Compile Resources
    component.addOperation("Execute", "@HomeDir@/.local/bin/qcompile", "@HomeDir@/.local/lib/python3.9/site-packages/probe_basic/")
    component.addOperation("Execute", "@HomeDir@/.local/bin/qcompile", "@HomeDir@/.local/lib/python3.9/site-packages/probe_basic_lathe/")

    // Create Directories
    component.addOperation("Execute", "mkdir", "-p", "@HomeDir@/.local/share/applications/");
    component.addOperation("Execute", "mkdir", "-p", "@HomeDir@/.local/share/icons/");

    // Create Desktop Icons
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/PBMaintenanceTool.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=@TargetDir@/PBMaintenanceTool\nName=ProbeBasic Updates\nIcon=ProbeBasicIcon");
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=linuxcnc @HomeDir@/linuxcnc/configs/probe_basic/probe_basic/probe_basic.ini\nName=ProbeBasic SIM\nIcon=ProbeBasicIcon");

    // Install Icons
    component.addOperation("InstallIcons", "@TargetDir@/icons");
}
