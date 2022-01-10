function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();
    component.addElevatedOperation("Execute", "apt", "install", "--assume-yes", "linux-image-rt-amd64", "linux-headers-rt-amd64");
}
