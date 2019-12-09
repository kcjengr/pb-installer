function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "pip", "install", "probe-basic", "UNDOEXECUTE", "pip", "uninstall", "--yes", "probe-basic");
}
