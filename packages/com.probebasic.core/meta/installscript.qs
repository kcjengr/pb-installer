function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addOperation("Execute", "pip", "install", "probe-basic==v0.0.7", "UNDOEXECUTE", "pip", "uninstall", "--yes", "probe-basic==v0.0.7");
}
