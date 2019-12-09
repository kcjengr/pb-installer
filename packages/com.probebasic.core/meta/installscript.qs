function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();

    component.addOperation("Execute", "pip", "install", "qtpyvcp");
    component.addOperation("Execute", "pip", "install", "probe-basic");
}
