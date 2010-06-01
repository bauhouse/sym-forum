<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:param name="logged-in" select="events/user/@logged-in"/>
	<xsl:param name="current-section">
		<xsl:choose>
			<xsl:when test="not($section)">all</xsl:when>
			<xsl:otherwise><xsl:value-of select="sections/entry/fields/title/@handle[.=$section]"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:call-template name="breadcrumbs" />
	<div class="box">
		<div id="brand-panel">
			<div class="body lists">
				<h2><a href="{$root}/brands/">Brands</a></h2>
				<h3>Brand Names</h3>
				<ul class="portfolios">
					<xsl:for-each select="brands/entry">
						<li>
							<xsl:if test="@handle = $brand">
								<xsl:attribute name="class">current</xsl:attribute>
							</xsl:if>
							<a href="{$root}/branding/{@handle}/">
								<xsl:value-of select="fields/brand-name"/>
							</a>
						</li>
					</xsl:for-each>
				</ul>
				<h3>Members</h3>
				<ul class="links">
					<xsl:choose>
						<xsl:when test="$logged-in='true'">
							<li>Signed in as <xsl:value-of select="//events/user/username"/></li>
							<li><a href="{$root}/symphony/?page=/logout/">Logout</a></li>
						</xsl:when>
						<xsl:otherwise>
							<li><a href="{$root}/login/">Login</a></li>
						</xsl:otherwise>
					</xsl:choose>
				</ul>
			</div>
		</div>
		<div id="brand-content">
			<xsl:choose>
				<xsl:when test="not($brand)">
					<div class="body" id="discussion">
						<h2>Brand Identity Assets &amp; Guidelines</h2>
						<h3><a href="{$root}/{$current-page}/">Brand Identities</a></h3>
						<ul id="discussions">
							<xsl:for-each select="brands/entry">
								<li class="discussion">
									<h4><a href="{$root}/branding/{@handle}/" title="View brand identity assets for {fields/brand-name}"><xsl:value-of select="fields/brand-name"/></a></h4>
									<ul>
										<li><xsl:value-of select="fields/description"/></li>
									</ul>
								</li>
							</xsl:for-each>
						</ul>
					</div>
				</xsl:when>
				<xsl:when test="$brand and not($type)">
					<div class="body" id="discussion">
						<xsl:for-each select="brands/entry[@handle = $brand]">
							<h2><a href="{$root}/branding/{@handle}/" title="View brand identity assets for {fields/brand-name}"><xsl:value-of select="fields/brand-name"/></a></h2>
							<xsl:for-each select="/data/brand-overviews/entry[fields/brand/item/@entry-handle = $brand]">
								<h3><xsl:value-of select="fields/asset"/></h3>
								<xsl:if test="fields/image/item/path">
									<p><a href="{$root}/branding/{fields/brand/item/@entry-handle}/" title="View brand identity assets for {fields/brand-name}"><img class="brand-identity" src="{$root}/{fields/image/item/path}" alt="{fields/asset}"/></a></p>
								</xsl:if>
								<xsl:copy-of select="fields/description/*"/>
								<xsl:copy-of select="fields/body/*"/>
							</xsl:for-each>
							<p><a href="{$root}/branding/{@handle}/" title="View brand identity assets">View brand identity assets for <xsl:value-of select="fields/brand-name"/></a></p>
						</xsl:for-each>
					</div>
				</xsl:when>
			</xsl:choose>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>