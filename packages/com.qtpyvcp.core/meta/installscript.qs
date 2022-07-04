function Component()
{
}

Component.prototype.createOperations = function()
{

    component.createOperations();

    // Get Version From Updates.xml if available
    var package_version = installer.componentByName("com.probebasic.core").value("Version")

    // Install Debian requirements
	component.addElevatedOperation("Execute", "apt", "update");
    component.addElevatedOperation("Execute", "apt", "install", "--assume-yes", "geany", "git", "debhelper", "dh-python", "libudev-dev", "bwidget", "tclx", "libeditreadline-dev", "docbook-xsl", "dvipng", "ghostscript", "graphviz", "groff", "imagemagick", "inkscape", "python3-lxml", "source-highlight", "w3c-linkchecker", "xsltproc", "texlive-extra-utils", "texlive-font-utils", "texlive-fonts-recommended", "texlive-lang-cyrillic", "texlive-lang-french", "texlive-lang-german", "texlive-lang-polish", "texlive-lang-spanish", "texlive-latex-recommended", "asciidoc-dblatex", "python3-dev", "python3-tk", "libgl1-mesa-dev", "libgtk2.0-dev", "libgtk-3-dev", "gettext", "intltool", "autoconf", "libboost-python-dev", "libmodbus-dev", "libusb-1.0-0-dev", "psmisc", "yapps2", "libepoxy-dev", "python3-xlib", "python3-pyqt5", "python3-dbus.mainloop.pyqt5", "python3-pyqt5.qtopengl", "python3-pyqt5.qsci", "python3-pyqt5.qtmultimedia", "python3-pyqt5.qtquick", "qml-module-qtquick-controls", "gstreamer1.0-plugins-bad", "libqt5multimedia5-plugins", "pyqt5-dev-tools", "python3-dev", "python3-setuptools", "python3-wheel", "python3-pip", "python3-yapps", "dpkg-dev", "python3-serial", "libtk-img", "qttools5-dev", "qttools5-dev-tools", "python3-wheel", "espeak", "espeak-data", "espeak-ng", "freeglut3", "gdal-data", "gstreamer1.0-tools", "libaec0", "libarmadillo10", "libarpack2", "libcfitsio9", "libcharls2", "libdap27", "libdapclient6v5", "libepsilon1", "libespeak1", "libfreexl1", "libfyba0", "libgdal28", "libgdcm3.0", "libgeos-3.9.0", "libgeos-c1v5", "libgeotiff5", "libgif7", "libglew2.1", "libgtksourceview-3.0-dev", "libhdf4-0-alt", "libhdf5-103-1", "libhdf5-hl-100", "libimagequant0", "libkmlbase1", "libkmldom1", "libkmlengine1", "liblept5", "libmariadb3", "libminizip1", "libnetcdf18", "libodbc1", "libogdi4.1", "libopencv-calib3d4.5", "libopencv-contrib4.5", "libopencv-core4.5", "libopencv-dnn4.5", "libopencv-features2d4.5", "libopencv-flann4.5", "libopencv-highgui4.5", "libopencv-imgcodecs4.5", "libopencv-imgproc4.5", "libopencv-ml4.5", "libopencv-objdetect4.5", "libopencv-photo4.5", "libopencv-shape4.5", "libopencv-stitching4.5", "libopencv-video4.5", "libopencv-videoio4.5", "libportaudio2", "libpq5", "libproj19", "libprotobuf23", "libqhull8.0", "librttopo1", "libsocket++1", "libspatialite7", "libsuperlu5", "libsz2", "libtbb2", "libtesseract4", "liburiparser1", "libxerces-c3.2", "libxml2-dev", "mariadb-common", "mesa-utils", "mysql-common", "odbcinst", "odbcinst1debian2", "proj-bin", "proj-data", "python3-configobj", "python3-espeak", "python3-gi-cairo", "python3-olefile", "python3-opencv", "python3-opengl", "python3-pil", "python3-pil.imagetk", "python3-pyqt5.qtsvg", "python3-pyqt5.qtwebkit", "tcl-tclreadline", "geotiff-bin", "gdal-bin", "glew-utils", "libgtksourceview-3.0-doc", "libhdf4-doc", "libhdf4-alt-dev", "hdf4-tools", "odbc-postgresql", "tdsodbc", "ogdi-bin", "libgle3", "python3-pil-dbg", "python3-pil.imagetk-dbg", "python3-sqlalchemy", "netcat");
    component.addElevatedOperation("Execute", "apt", "install", "--assume-yes", "python3-pyqt5", "python3-pyqt5.qtquick", "python3-dbus.mainloop.pyqt5", "python3-pyqt5.qtopengl", "python3-pyqt5.qsci", "python3-pyqt5.qtmultimedia", "qml-module-qtquick-controls", "gstreamer1.0-plugins-bad", "libqt5multimedia5-plugins", "pyqt5-dev-tools", "python3-dev", "python3-setuptools", "python3-pip", "git", "python3-pyqtgraph", "python3-pyqt5.qtwebkit");

    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "pip");
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "wheel");
    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "setuptools");

    component.addOperation("Execute", "python3", "-m", "pip", "install", "--user", "--upgrade", "git+https://github.com/kcjengr/qtpyvcp.git", "UNDOEXECUTE", "python3", "-m", "pip", "uninstall", "--yes", "qtpyvcp");

    // Compile Resources
    component.addOperation("Execute", "@HomeDir@/.local/bin/qcompile", "@HomeDir@/.local/lib/python3.9/site-packages/qtpyvcp/")

}
