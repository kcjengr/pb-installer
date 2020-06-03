function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "python", "-m", "pip", "install", "--user", "--upgrade", "probe-basic==%Version%", "UNDOEXECUTE", "python", "-m", "pip", "uninstall", "--yes", "probe-basic==%Version%");
    component.addOperation("Execute", "mkdir", "-p", "@HomeDir@/.local/share/applications/");
    component.addOperation("InstallIcons", "@TargetDir@/ProbeBasicIcon.png");
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=linuxcnc @HomeDir@linuxcnc/configs/probe_basic/probe_basic/probe_basic.ini\nName=ProbeBasic SIM\nIcon=@HomeDir@/.local/share/pixmaps/probebasic.png");
    // component.addOperation("Copy", "@TargetDir@/ProbeBasicIcon.png", "@HomeDir@/.local/share/pixmaps/");
    // component.addOperation("Copy", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "@HomeDir@/Desktop/");
}
