<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/date-time.xsl"/>

<xsl:variable name="member-info" select="/data/events/member-login-info"/>
<xsl:variable name="logged-in" select="/data/events/member-login-info/@logged-in"/>
<xsl:variable name="permissions" select="/data/events/member-login-info/permissions"/>

<xsl:param name="section" />
<xsl:param name="section-title">
	<xsl:choose>
		<xsl:when test="$section">
			<xsl:value-of select="/data/sections/entry[@handle=$section]/fields/title"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$page-title"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:param>

<xsl:template name="head">
	<head>
		<title><xsl:value-of select="$website-name"/> - <xsl:value-of select="$section-title"/></title>
		<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/public.css"/>
		<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/fixed-width.css" title="fixed-width" />
		<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/fixed-narrow.css" title="fixed-narrow" />
	</head>
</xsl:template>

<xsl:template name="header">
	<div id="header">
		<div class="box">
			<h1><a href="{$root}/">The <strong>Design</strong> Administration</a></h1>
		</div>
	</div>
</xsl:template>

<xsl:template name="navigation-menus">
	<div id="navigation">
		<div class="box">
			<ul class="main">
				<xsl:for-each select="data/navigation/entry[navigation/item/@handle='main']">
					<li>
						<xsl:if test="page/page/@handle=$current-page or page/page/@handle=$root-page">
							<xsl:attribute name="class">
								<xsl:text>current</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<a>
							<xsl:choose>
								<xsl:when test="page/page/@handle='home'">
									<xsl:attribute name="href"><xsl:value-of select="$root"/>/</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="href"><xsl:value-of select="$root"/>/<xsl:value-of select="page/page/@handle"/>/</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:value-of select="title"/>
						</a>
					</li>
				</xsl:for-each>
			</ul>
			<ul class="content">
				<xsl:for-each select="data/sections/entry[fields/menu/@handle='content']">
					<xsl:sort select="fields/sort"/>
					<li>
						<xsl:if test="@handle=$section">
							<xsl:attribute name="class">
								<xsl:text>current</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<a href="{$root}/content/{@handle}/"><xsl:value-of select="fields/title"/></a>
					</li>
				</xsl:for-each>
			</ul>
		</div>
	</div>
</xsl:template>

<xsl:template name="submenu">
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
				<ul class="right">
					<xsl:choose>
						<xsl:when test="$logged-in = 'true'">
							<li>
								<xsl:if test="$current-page = 'logout'">
									<xsl:attribute name="class">
										<xsl:text>current</xsl:text>
									</xsl:attribute>
								</xsl:if>
								<a href="?member-action=logout&amp;redirect={$root}/login/">Logout</a>
							</li>
							<xsl:if test="$member-info/role = 'Administrator'">
								<li><a href="{$root}/symphony/">Admin</a></li>
							</xsl:if>
						</xsl:when>
						<xsl:otherwise>
							<li>
								<xsl:if test="$current-page = 'login'">
									<xsl:attribute name="class">
										<xsl:text>current</xsl:text>
									</xsl:attribute>
								</xsl:if>
								<a href="{$root}/login/">Login</a>
							</li>
						</xsl:otherwise>
					</xsl:choose>
				</ul>
			</ul>
		</div>
	</div>
</xsl:template>

<xsl:template name="side">
	<div id="side">
		<div id="links">
			<div class="body lists">
				<h2>Journal</h2>
				<xsl:call-template name="list-recent-entries"/>
				<xsl:call-template name="list-archive-months"/>
			</div>
		</div>
		<div id="meta">
			<div class="body lists">
				<h2>Links</h2>
				<xsl:call-template name="list-sites"/>
				<xsl:call-template name="list-bookmarks"/>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template name="list-recent-entries">
	<h3>Recent Entries</h3>
	<ul class="posts">
		<xsl:for-each select="data/entries/year/month/entry">
			<li>
				<a href="{$root}/journal/{../../@value}/{../@value}/{substring(date, 9, 2)}/{title/@handle}/"><xsl:value-of select="title"/></a>
			</li>
		</xsl:for-each>
	</ul>
</xsl:template>

<xsl:template name="list-archive-months">
	<h3>Archives by Month</h3>
	<ul class="categories">
		<xsl:for-each select="/data/entries/year/month">
			<li>
				<a href="{$root}/journal/archive/{../@value}/{@value}/">
					<xsl:call-template name="format-month">
						<xsl:with-param name="month" select="@value"/>
						<xsl:with-param name="format" select="'M'"/>
					</xsl:call-template>
					<xsl:text> </xsl:text>
					<xsl:call-template name="format-year">
						<xsl:with-param name="year" select="../@value"/>
						<xsl:with-param name="format" select="'Y'"/>
					</xsl:call-template>
					<span>
						<xsl:text> (</xsl:text><xsl:value-of select="count(entry)"/>)
					</span>
				</a>
			</li>
		</xsl:for-each>
	</ul>
</xsl:template>

<xsl:template name="list-sites">
	<h3>Sites</h3>
	<ul class="links">
		<xsl:for-each select="data/sites/entry">
			<li>
				<a href="{url}" title="{description/p}"><xsl:value-of select="title"/></a>
			</li>
		</xsl:for-each>
	</ul>
</xsl:template>

<xsl:template name="list-bookmarks">
	<h3>Bookmarks</h3>
	<ul class="links">
		<xsl:for-each select="data/bookmarks/entry">
			<li>
				<a href="{url}" title="{description/p}"><xsl:value-of select="title"/></a>
			</li>
		</xsl:for-each>
	</ul>
</xsl:template>

<xsl:template name="footer">
	<div id="footer">
		<div class="box">
			<!--form id="switchform">
				<select name="switchcontrol">
					<option value="none" selected="selected">Full Width</option>
					<option value="fixed-width">Fixed Width</option>
					<option value="fixed-narrow">Fixed Width - Narrow</option>
				</select>
			</form-->
			<ul>
				<li class="copyright">&#169; Copyright <xsl:value-of select="$this-year"/>
					<xsl:text> </xsl:text>
					<a href="http://bauhouse.ca/">Bauhouse Design</a>
				</li>
				<li>Powered by <a href="http://www.symphony-cms.com/">Symphony CMS</a></li>
			</ul>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>