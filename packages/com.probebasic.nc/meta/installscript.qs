function Component()
{
}

Component.prototype.createOperationsForArchive = function(archive)
{
    component.addOperation("Extract", archive, "@HomeDir@/linuxcnc/nc_files/");
}
