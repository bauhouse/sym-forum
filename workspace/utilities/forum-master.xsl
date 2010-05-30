<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/common.xsl"/>
<xsl:include href="../utilities/typography.xsl"/>

<xsl:output
	method="xml" 
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8" 
	indent="yes" />

<xsl:variable name="member" select="/data/events/member-login-info"/>
<xsl:variable name="logged-in" select="/data/events/member-login-info/@logged-in"/>
<xsl:variable name="permissions" select="/data/events/member-login-info/permissions"/>

<xsl:template match="/">
	<html>
		<xsl:call-template name="forum-head"/>
		<body>
			<xsl:call-template name="header"/>
			<xsl:call-template name="navigation-menus"/>
			<div id="page">
				<div class="box">
					<xsl:call-template name="forum" />
					<!--xsl:apply-templates/-->
				</div>
			</div>
			<xsl:call-template name="footer"/>
			<script type="text/javascript" src="{$workspace}/assets/js/wmd/wmd.js"></script>
		</body>
	</html>
</xsl:template>

<xsl:template name="forum">
	<div id="package">
		<div id="sidebar">
			<xsl:apply-templates select="data" mode="side-panel"/>
			<xsl:call-template name="whos-online"/>
		</div>
		<div id="content">
			<xsl:apply-templates/>
		</div>
	</div>
</xsl:template>

<xsl:template name="whos-online">
	<div id="whos-online">
		<h3><xsl:value-of select="concat('Currently Online (', count(data/whos-online/member), ')')"/></h3>
		<ul>
			<xsl:for-each select="data/whos-online/member">
				<li>
					<a href="{$root}/members/{.}">
						<img src="http://www.gravatar.com/avatar/{@email-hash}?s=25&amp;d=http%3A%2F%2Fsymphony-cms.com%2Fworkspace%2Fassets%2Fimages%2Ficons%2Fsymphony-avatar.png" width="25" height="25" />
						<xsl:value-of select="concat(' ',.)"/>
					</a>
				</li>
			</xsl:for-each>
		</ul>
	</div>
</xsl:template>

<xsl:template name="forum-head">
	<head>
		<title><xsl:value-of select="$website-name"/> - <xsl:value-of select="$section-title"/></title>
		<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/public.css"/>
		<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/fixed-width.css" title="fixed-width" />
		<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/fixed-narrow.css" title="fixed-narrow" />

		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/assets/css/designadmin/forum.css" />
		<script type="text/javascript" src="{$workspace}/assets/js/jquery/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="{$workspace}/assets/js/system.js"></script>
		<script type="text/javascript" src="{$workspace}/assets/js/syntax-xml.js"></script>
	</head>
</xsl:template>

</xsl:stylesheet>