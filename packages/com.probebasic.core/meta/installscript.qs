function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "pip", "install", "probe-basic==v0.0.8", "UNDOEXECUTE", "pip", "uninstall", "--yes", "probe-basic==v0.0.8");
    component.addOperation("CreateDesktopEntry", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "Version=1.0\nType=Application\nTerminal=false\nExec=linuxcnc @HomeDir@linuxcnc/configs/probe_basic/xyzab/xyzab.ini\nName=ProbeBasic SIM\nIcon=@HomeDir@/.local/share/pixmaps/probebasic.png");
    component.addOperation("Copy", "@TargetDir@/ProbeBasicIcon.png", "@HomeDir@/.local/share/pixmaps/");
    component.addOperation("Copy", "@HomeDir@/.local/share/applications/ProbeBasicSim.desktop", "@HomeDir@/Escritorio/");
}
