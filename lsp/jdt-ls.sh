#!/bin/sh

ECLIPSE_JDTLS_HOME=/home/chris/s/jdt-language-server
ECLIPSE_WORKSPACE=/home/chris/.eclipse

# Must be java 17 or above.
java \
	-Declipse.application=org.eclipse.jdt.ls.core.id1 \
	-Dosgi.bundles.defaultStartLevel=4 \
	-Declipse.product=org.eclipse.jdt.ls.core.product \
	-Dlog.level=ALL \
	-Xmx1G \
	--add-modules=ALL-SYSTEM \
	--add-opens java.base/java.util=ALL-UNNAMED \
	--add-opens java.base/java.lang=ALL-UNNAMED \
	-jar $ECLIPSE_JDTLS_HOME/plugins/org.eclipse.equinox.launcher_*.jar \
	-configuration $ECLIPSE_JDTLS_HOME/config_linux \
	-data $ECLIPSE_WORKSPACE
