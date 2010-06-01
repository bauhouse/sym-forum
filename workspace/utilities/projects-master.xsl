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

<xsl:param name="login-info">
	<xsl:text>Logged in as </xsl:text>
	<a href="{$root}/forum/members/{$member-username}/" title="{$member-info/name}"><xsl:value-of select="$member-username"/></a>
	<xsl:text>, </xsl:text>
	<xsl:value-of select="$member-info/role"/>
</xsl:param>

<xsl:template match="/">
	<html>
		<xsl:call-template name="projects-head"/>
		<body class="projects">
			<xsl:call-template name="header"/>
			<xsl:call-template name="navigation-menus"/>
			<xsl:call-template name="projects-submenu"/>
			<div id="page">
				<xsl:choose>
					<xsl:when test="$logged-in='true'">
						<xsl:apply-templates/>
					</xsl:when>
					<xsl:otherwise>
						<div class="body">
							<h2>Access Restricted Area</h2>
							<h3>Admin Login Required</h3>
							<p>You need to have administrative privileges to access this area.</p>
						</div>
					</xsl:otherwise>
				</xsl:choose>
			</div>
			<xsl:call-template name="footer"/>
		</body>
	</html>
</xsl:template>

<xsl:template name="projects-head">
	<head>
		<title><xsl:value-of select="$website-name"/> - <xsl:value-of select="$section-title"/></title>
		<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/public.css"/>
		<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/projects.css"/>
	</head>
</xsl:template>

<xsl:template name="projects-submenu">
	<div id="subheader">
		<div class="box">
			<ul id="submenu">
				<!--li>
					<xsl:if test="$current-page = 'project-brief'">
						<xsl:attribute name="class">current</xsl:attribute>
					</xsl:if>
					<a href="{$root}/project-brief/">New Project</a>
				</li>
				<li>
					<xsl:if test="$current-page = 'items' or $current-page = 'item'">
						<xsl:attribute name="class">current</xsl:attribute>
					</xsl:if>
					<a href="{$root}/projects/items/">Items</a>
				</li-->
				<xsl:call-template name="members-submenu" />
			</ul>
		</div>
	</div>
</xsl:template>

<xsl:template name="breadcrumbs">
	<div class="breadcrumbs">
		<div class="box">
			<p class="login-info"><xsl:copy-of select="$login-info"/></p>
			<p><a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a></p>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>