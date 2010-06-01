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

<xsl:param name="previous-month-date">
	<xsl:choose>
		<xsl:when test="$month - 1 &lt; 1">
			<xsl:value-of select="concat($year - 1,'-12-00')"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="concat($year,'-',format-number($month - 1,'00'),'-00')"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:param>
<xsl:param name="next-month-date">
	<xsl:choose>
		<xsl:when test="$month + 1 &gt; 12">
			<xsl:value-of select="concat($year + 1,'-01-00')"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="concat($year,'-',format-number($month + 1,'00'),'-00')"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:param>

<xsl:template match="/">
	<html>
		<xsl:call-template name="head"/>
		<body>
			<xsl:attribute name="class">
				 <xsl:value-of select="$current-page"/>
				 <xsl:text>-page</xsl:text>
				 <xsl:if test="$section">
					 <xsl:text> </xsl:text>
					 <xsl:value-of select="$section"/>
					 <xsl:text>-section</xsl:text>
				 </xsl:if>
			</xsl:attribute>
			<xsl:call-template name="header"/>
			<xsl:call-template name="navigation-menus"/>
			<xsl:call-template name="submenu"/>
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