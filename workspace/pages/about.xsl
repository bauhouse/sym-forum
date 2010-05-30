<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/public-master.xsl"/>

<xsl:template match="data">
	<div id="content">
		<div class="body">
			<xsl:for-each select="section/entry">
				<h2><xsl:value-of select="title"/></h2>
				<h3><xsl:value-of select="heading"/></h3>
				<xsl:copy-of select="description/*"/>
				<xsl:copy-of select="body/*"/>
			</xsl:for-each>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>
