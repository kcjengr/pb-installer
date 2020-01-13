function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "pip", "install", "--upgrade", "qtpyvcp==v0.3.1", "UNDOEXECUTE", "pip", "uninstall", "--yes", "qtpyvcp==v0.3.1");
}
