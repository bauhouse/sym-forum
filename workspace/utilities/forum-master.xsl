<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/common.xsl"/>

<xsl:output
	method="xml" 
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8" 
	indent="yes" />

<xsl:template match="/">
	<html>
		<xsl:call-template name="head"/>
		<body>
			<xsl:call-template name="header"/>
			<xsl:call-template name="navigation-menus"/>
			<div id="page">
				<div class="box">
				<xsl:apply-templates/>
				</div>
			</div>
			<xsl:call-template name="footer"/>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>