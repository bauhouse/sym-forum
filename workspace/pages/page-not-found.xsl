<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/public-master.xsl"/>

<xsl:template match="data">
	<div id="content">
		<div class="body">
			<h2 class="heading">404: Page Not Found</h2>
			<h3>Genuinely lost or have you been nosing about?</h3>
			<p>If you're trying to get the inside scoop, why don't you <a href="{$root}/members/new/">join our ranks</a>?</p>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>