TEMPLATE = aux

INSTALLER = ProbeBasic-Installer-$$(PB_VERSION).run

INPUT = $$PWD/config/config.xml $$PWD/packages/

INPUT += $$PWD/packages/com.kcjengr.qtpyvcp/meta/package.xml
INPUT += $$PWD/packages/com.kcjengr.qtpyvcp/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.core/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.core/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.fonts/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.fonts/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.sim/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.sim/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.nc/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.nc/meta/installscript.qs

probebasic.input = INPUT
probebasic.output = $$INSTALLER
probebasic.commands += $$(HOME)/Qt/QtIFW-3.2.0/bin/binarycreator -p $$PWD/packages --config $$PWD/config/config.xml $$PWD/bin/${QMAKE_FILE_OUT};
probebasic.commands += $$(HOME)/Qt/QtIFW-3.2.0/bin/repogen -p $$PWD/packages -i com.kcjengr.qtpyvcp,com.probebasic.core,com.probebasic.fonts,com.probebasic.nc,com.probebasic.sim $$PWD/repo;

probebasic.CONFIG += target_predeps no_link combine

QMAKE_EXTRA_COMPILERS += probebasic

OTHER_FILES = README

DISTFILES +=
