function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "pip", "install", "--upgrade", "qtpyvcp==v0.2.9", "UNDOEXECUTE", "pip", "uninstall", "--yes", "qtpyvcp==v0.2.9");
}
