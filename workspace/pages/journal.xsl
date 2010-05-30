<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/public-master.xsl"/>

<xsl:template match="data">
	<div id="content">
		<div class="body">
			<xsl:choose>
				<xsl:when test="$entry">
					<xsl:for-each select="journal-entry/entry">
						<h2><a href="{$root}/journal/{substring(date,1,4)}/{substring(date,6,2)}/{substring(date,9,2)}/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
						<h3><xsl:value-of select="heading"/></h3>
						<xsl:copy-of select="description/*"/>
						<xsl:copy-of select="body/*"/>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<xsl:for-each select="journal-excerpts/entry">
						<h2><a href="{$root}/journal/{substring(date,1,4)}/{substring(date,6,2)}/{substring(date,9,2)}/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
						<h3><xsl:value-of select="heading"/></h3>
						<xsl:copy-of select="description/*"/>
					</xsl:for-each>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>