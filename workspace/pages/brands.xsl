<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:param name="current-section">
		<xsl:choose>
			<xsl:when test="not($section)">all</xsl:when>
			<xsl:otherwise><xsl:value-of select="sections/entry/title/@handle[.=$section]"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:call-template name="breadcrumbs" />
	<xsl:choose>
		<xsl:when test="$brand">
			<xsl:call-template name="brand-content"/>
		</xsl:when>
		<xsl:otherwise>
			<div class="box">
				<div id="brand-panel">
					<xsl:call-template name="brands-panel"/>
				</div>
				<div id="brand-content">
					<div class="body" id="discussion">
						<h2>Brand Identity Assets &amp; Guidelines</h2>
						<h3><a href="{$root}/{$current-page}/">Brand Identities</a></h3>
						<ul id="discussions">
							<xsl:for-each select="brands/entry">
								<li class="discussion">
									<h4><a href="{$root}/brands/{brand-name/@handle}/" title="View brand identity assets for {brand-name}"><xsl:value-of select="brand-name"/></a></h4>
									<ul>
										<li><xsl:value-of select="description"/></li>
									</ul>
								</li>
							</xsl:for-each>
						</ul>
					</div>
				</div>
			</div>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="brand-content">
	<xsl:param name="brand-name" select="brands/entry/brand-name[@handle = $brand]"/>
	<xsl:param name="current-section">
		<xsl:choose>
			<xsl:when test="not($section)">all</xsl:when>
			<xsl:otherwise><xsl:value-of select="sections/entry/title/@handle[.=$section]"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<div id="box">
		<div id="brands">
			<xsl:call-template name="brands-panel"/>
		</div>
		<div id="brand-assets">
			<div class="body lists">
				<h2>Brand Assets</h2>
				<h3><a href="{$root}/brands/{$brand}/guidelines/">Guidelines</a></h3>
				<ul class="documents">
					<xsl:for-each select="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'guidelines']">
						<li class="document">
							<a href="{$root}/brands/{$brand}/guidelines/{asset/@handle}/">
								<xsl:value-of select="asset"/>
							</a>
						</li>
					</xsl:for-each>
					<xsl:for-each select="brands-entries/entry">
						<li class="document">
							<a href="{$root}/brands/{$brand}/guidelines/{title/@handle}/">
								<xsl:value-of select="title"/>
							</a>
						</li>
					</xsl:for-each>
				</ul>
				<xsl:if test="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'identity']">
					<h3><a href="{$root}/brands/{$brand}/identity/">Identity</a></h3>
					<xsl:call-template name="list-brand-assets">
						<xsl:with-param name="asset-type" select="'identity'"/>
					</xsl:call-template>
				</xsl:if>
				<xsl:if test="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'elements']">
					<h3><a href="{$root}/brands/{$brand}/elements/">Elements</a></h3>
					<xsl:call-template name="list-brand-assets">
						<xsl:with-param name="asset-type" select="'elements'"/>
					</xsl:call-template>
				</xsl:if>
				<xsl:if test="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'applications']">
					<h3><a href="{$root}/brands/{$brand}/applications/">Applications</a></h3>
					<xsl:call-template name="list-brand-assets">
						<xsl:with-param name="asset-type" select="'applications'"/>
					</xsl:call-template>
				</xsl:if>
			</div>
		</div>
	</div>
	<div id="branding-content">
		<xsl:choose>
			<xsl:when test="$asset">
				<div class="body" id="discussion">
					<xsl:for-each select="/data/brand-assets/entry[brand/item/@handle = $brand and asset/@handle = $asset]">
						<xsl:choose>
							<xsl:when test="not(parent-asset) and $type = 'identity'">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="asset"/></h3>
								<xsl:copy-of select="description/*"/>
								<xsl:if test="image/item/path">
									<img src="{$root}/{image/item/path}" alt="{brand} {asset}"/>
								</xsl:if>
								<xsl:if test="overview">
									<xsl:copy-of select="overview/*"/>
								</xsl:if>
								<xsl:if test="body">
									<xsl:copy-of select="body/*"/>
								</xsl:if>
								<xsl:for-each select="/data/brand-assets/entry[parent-asset/@handle = $asset]">
									<xsl:call-template name="logo-and-details"/>
								</xsl:for-each>
							</xsl:when>
							<xsl:when test="parent-asset and $type = 'identity'">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="parent-asset"/></h3>
								<xsl:call-template name="logo-and-details"/>
							</xsl:when>
							<xsl:when test="not(parent-asset) and $category = 'colors'">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="asset"/></h3>
								<xsl:copy-of select="description/*"/>
								<xsl:if test="overview">
									<xsl:copy-of select="overview/*"/>
								</xsl:if>
								<xsl:if test="body">
									<xsl:copy-of select="body/*"/>
								</xsl:if>
								<xsl:if test="image/item/path">
									<img src="{$root}/{image/item/path}" alt="{brand} {asset}"/>
								</xsl:if>
								<xsl:for-each select="/data/brand-assets/entry[parent-asset/@handle = $asset]">
									<div class="color">
										<xsl:if test="image/item/path">
											<a href="{$root}/{$current-page}/{$brand}/{$type}/{$category}/{@handle}/" title="{description}">
												<img src="{$root}/{image/item/path}" alt="{brand/item} {asset}"/>
											</a>
										</xsl:if>
										<xsl:if test="body">
											<xsl:copy-of select="body/*"/>
										</xsl:if>
									</div>
								</xsl:for-each>
							</xsl:when>
							<xsl:when test="parent-asset and $category = 'colors'">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="asset"/></h3>
								<div class="color">
									<xsl:if test="image/item/path">
										<a href="{$root}/{$current-page}/{$brand}/{$type}/{$category}/{@handle}/" title="{description}">
											<img src="{$root}/{image/item/path}" alt="{brand/item} {asset}"/>
										</a>
									</xsl:if>
									<xsl:if test="body">
										<xsl:copy-of select="body/*"/>
									</xsl:if>
								</div>
							</xsl:when>
							<xsl:when test="not(parent-asset) and $category != 'colors'">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="asset"/></h3>
								<xsl:copy-of select="description/*"/>
								<xsl:if test="image/item/path">
									<img src="{$root}/{image/item/path}" alt="{brand} {asset}"/>
								</xsl:if>
								<xsl:if test="overview">
									<xsl:copy-of select="overview/*"/>
								</xsl:if>
								<xsl:if test="body">
									<xsl:copy-of select="body/*"/>
								</xsl:if>
								<xsl:for-each select="/data/brand-assets/entry[parent-asset/@handle = $asset]">
									<h4><xsl:value-of select="parent-asset"/> &#8211; <xsl:value-of select="description"/></h4>
									<xsl:if test="image/item/path">
										<img src="{$root}/{image/item/path}" alt="{brand/item} {asset}"/>
									</xsl:if>
									<xsl:if test="overview">
										<xsl:copy-of select="overview/*"/>
									</xsl:if>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="parent-asset"/></h3>
								<h4><xsl:value-of select="parent-asset"/> &#8211; <xsl:value-of select="description"/></h4>
								<xsl:if test="image/item/path">
									<img src="{$root}/{image/item/path}" alt="{brand/item} {asset}"/>
								</xsl:if>
								<xsl:if test="overview">
									<xsl:copy-of select="overview/*"/>
								</xsl:if>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</div>
			</xsl:when>
			<xsl:when test="$category">
				<div class="body" id="discussion">
					<xsl:choose>
						<xsl:when test="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = $type and asset/@handle = $category]">
							<xsl:for-each select="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = $type and asset/@handle = $category]">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="asset"/></h3>
								<xsl:if test="image/item/path">
									<p><img class="brand-identity" src="{$root}/{image/item/path}" alt="{asset}"/></p>
								</xsl:if>
								<xsl:copy-of select="description/*"/>
								<xsl:copy-of select="body/*"/>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<xsl:for-each select="brands-entries/entry[title/@handle = $category]">
								<h2><xsl:value-of select="$brand-name"/></h2>
								<h3><xsl:value-of select="title"/></h3>
								<xsl:if test="image/item/path">
									<p><img class="brand-identity" src="{$root}/{image/item/path}" alt="{asset}"/></p>
								</xsl:if>
								<xsl:copy-of select="description/*"/>
								<xsl:copy-of select="body/*"/>
							</xsl:for-each>
						</xsl:otherwise>
					</xsl:choose>
				</div>
			</xsl:when>
			<xsl:when test="$type">
				<div class="body" id="discussion">
					<xsl:if test="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = $type]">
						<h2><xsl:value-of select="$brand-name"/></h2>
						<h3>Brand Identity Assets</h3>
						<xsl:for-each select="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = $type and parent-asset]">
							<xsl:call-template name="logo-and-details"/>
						</xsl:for-each>
					</xsl:if>
					<xsl:if test="$type = 'guidelines'">
						<xsl:for-each select="brands-entries/entry">
							<h3><xsl:value-of select="title"/></h3>
							<xsl:copy-of select="description/*"/>
							<xsl:copy-of select="body/*"/>
						</xsl:for-each>
					</xsl:if>
				</div>
			</xsl:when>
			<xsl:when test="$brand">
				<div class="body" id="discussion">
					<xsl:for-each select="brands/entry[brand-name/@handle = $brand]">
						<h2>
							<a href="{$root}/brands/{brand-name/@handle}/" title="{$brand-name} Brand Identity">
								<xsl:value-of select="$brand-name"/>
							</a>
						</h2>
						<xsl:for-each select="/data/brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'guidelines']">
							<h3><xsl:value-of select="asset"/></h3>
							<xsl:if test="image/item/path">
								<p>
									<a href="{$root}/brands/{brand/item/@handle}/" title="{$brand-name} Brand Identity">
										<img class="brand-identity" src="{$root}/{image/item/path}" alt="{asset}"/>
									</a>
								</p>
							</xsl:if>
							<xsl:copy-of select="description/*"/>
							<xsl:copy-of select="body/*"/>
						</xsl:for-each>
					</xsl:for-each>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="body" id="discussion">
					<h2>Brand Identity Assets &amp; Guidelines</h2>
					<h3><a href="{$root}/{$current-page}/">Brand Identities</a></h3>
					<ul id="discussions">
						<xsl:for-each select="brands/entry">
							<li class="discussion">
								<h4><a href="{$root}/brands/{brand-name/@handle}/"><xsl:value-of select="brand-name"/></a></h4>
								<ul>
									<li><xsl:value-of select="description"/></li>
								</ul>
							</li>
						</xsl:for-each>
					</ul>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</div>
</xsl:template>

<xsl:template name="brands-panel">
	<div class="body lists">
		<h2><a href="{$root}/brands/">Brands</a></h2>
		<h3>Brand Names</h3>
		<ul class="portfolios">
			<xsl:for-each select="brands/entry">
				<li>
					<xsl:if test="brand-name/@handle = $brand">
						<xsl:attribute name="class">current</xsl:attribute>
					</xsl:if>
					<a href="{$root}/brands/{brand-name/@handle}/">
						<xsl:value-of select="brand-name"/>
					</a>
				</li>
			</xsl:for-each>
		</ul>
		<h3>Members</h3>
		<ul class="links">
			<xsl:choose>
				<xsl:when test="$logged-in='true'">
					<li>Signed in as <xsl:value-of select="$member-username"/></li>
					<li><a href="?member-action=logout">Logout</a></li>
				</xsl:when>
				<xsl:otherwise>
					<li><a href="{$root}/login/">Login</a></li>
				</xsl:otherwise>
			</xsl:choose>
		</ul>
	</div>
</xsl:template>

<xsl:template name="list-brand-assets">
	<xsl:param name="asset-type" select="asset-type/item/@handle"/>
	<xsl:param name="brand-assets" select="brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = $asset-type]"/>
	<ul class="folders">
		<xsl:for-each select="$brand-assets[not(parent-asset)]">
			<li>
				<xsl:if test="asset-category/item/@handle = $category and asset/@handle = $asset">
					<xsl:attribute name="class">current</xsl:attribute>
				</xsl:if>
				<a href="{$root}/brands/{$brand}/{$asset-type}/{asset-category/item/@handle}/{asset/@handle}/">
					<xsl:value-of select="asset"/>
				</a>
				<xsl:if test="asset-category/item/@handle = $category">
					<xsl:call-template name="list-brand-asset-children">
						<xsl:with-param name="brand-assets" select="$brand-assets"/>
						<xsl:with-param name="parent-asset" select="asset"/>
					</xsl:call-template>
				</xsl:if>
			</li>
		</xsl:for-each>
	</ul>
</xsl:template>

<xsl:template name="list-brand-asset-children">
	<xsl:param name="brand-assets" select="/data/brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'identity']"/>
	<xsl:param name="brand-handle" select="brand/item/@handle"/>
	<xsl:param name="asset-type" select="asset-type/item/@handle"/>
	<xsl:param name="asset-category" select="asset-category/item/@handle"/>
	<xsl:param name="parent-asset" select="parent-asset"/>
	<xsl:param name="asset-handle" select="asset/@handle"/>
	<xsl:if test="$brand-assets[parent-asset = $parent-asset]">
		<ul class="documents">
			<xsl:for-each select="$brand-assets[parent-asset = $parent-asset]">
				<xsl:call-template name="brand-asset-child">
					<xsl:with-param name="brand-assets" select="$brand-assets"/>
				</xsl:call-template>
			</xsl:for-each>
		</ul>
	</xsl:if>
</xsl:template>

<xsl:template name="brand-asset-child">
	<xsl:param name="brand-assets" select="/data/brand-assets/entry[brand/item/@handle = $brand and asset-type/item/@handle = 'identity']"/>
	<xsl:param name="brand-handle" select="brand/item/@handle"/>
	<xsl:param name="asset-type" select="asset-type/item/@handle"/>
	<xsl:param name="asset-category" select="asset-category/item/@handle"/>
	<xsl:param name="parent-asset" select="parent-asset"/>
	<xsl:param name="asset-handle" select="asset/@handle"/>
	<li>
		<xsl:if test="$asset-handle = $asset">
			<xsl:attribute name="class">current</xsl:attribute>
		</xsl:if>
		<a href="{$root}/brands/{$brand}/{$asset-type}/{$asset-category}/{$asset-handle}/" title="{$parent-asset} - {description}">
			<xsl:value-of select="description"/>
		</a>
	</li>
</xsl:template>

<xsl:template name="logo-and-details">
	<div class="logo narrow">
		<xsl:if test="image/item/path">
			<a href="#">
				<xsl:choose>
					<xsl:when test="contains(description, 'White') and description != 'Black and White'">
						<xsl:attribute name="class">logo-preview white</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">logo-preview</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<img src="{$root}/{image/item/path}" alt="{brand/item} {asset}"/>
			</a>
		</xsl:if>
		<div class="logo-details">
			<h5><xsl:value-of select="parent-asset"/> &#8211; <xsl:value-of select="description"/></h5>
			<xsl:if test="overview">
				<xsl:copy-of select="overview/*"/>
			</xsl:if>
			<xsl:if test="body">
				<xsl:copy-of select="body/*"/>
			</xsl:if>
		</div>
		<p class="logo-format"><strong>File Name: </strong><xsl:value-of select="asset"/>
			<xsl:for-each select="file-formats/item/@handle">
				<xsl:text> | .</xsl:text>
				<xsl:choose>
					<xsl:when test=". = 'jpeg'">
						<xsl:value-of select="'jpg'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="."/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
			<xsl:text> |</xsl:text>
		</p>
	</div>
</xsl:template>

</xsl:stylesheet>