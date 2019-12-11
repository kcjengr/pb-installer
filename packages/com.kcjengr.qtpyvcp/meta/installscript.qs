function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "pip", "install", "qtpyvcp==v0.2.8", "UNDOEXECUTE", "pip", "uninstall", "--yes", "qtpyvcp==v0.2.8");
}
