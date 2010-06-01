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
		<xsl:call-template name="forum-head"/>
		<body>
			<xsl:call-template name="header"/>
			<xsl:call-template name="navigation-menus"/>
			<xsl:call-template name="submenu"/>
			<div id="page">
				<div class="box">
					<div id="forum-panel">
						<div class="body lists">
							<h2>Forum</h2>
							<xsl:call-template name="login-panel"/>
							<xsl:apply-templates select="data" mode="side-panel"/>
							<xsl:call-template name="whos-online"/>
						</div>
					</div>
					<div id="forum-content">
						<div class="body">
							<xsl:apply-templates/>
						</div>
					</div>
				</div>
			</div>
			<xsl:call-template name="footer"/>
			<script type="text/javascript" src="{$workspace}/assets/js/wmd/wmd.js"></script>
		</body>
	</html>
</xsl:template>

<xsl:template name="forum-head">
	<head>
		<title><xsl:value-of select="$website-name"/> - <xsl:value-of select="$section-title"/></title>
		<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/public.css"/>
		<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/fixed-width.css" title="fixed-width" />
		<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/designadmin/fixed-narrow.css" title="fixed-narrow" />
		<script type="text/javascript" src="{$workspace}/assets/js/jquery/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="{$workspace}/assets/js/system.js"></script>
		<script type="text/javascript" src="{$workspace}/assets/js/syntax-xml.js"></script>
	</head>
</xsl:template>

<xsl:template name="login-panel">
	<form id="login-panel" action="{$current-url}" method="post">
		<fieldset>
			<ul>
				<xsl:choose>
					<xsl:when test="/data/events/member-login-info/role = 'Inactive'">
						<li>Account is not active.</li>
						<li><a class="button" href="{$root}/forum/members/activate/">Activate</a></li>
						<li> or </li>
						<li><a class="button" href="?member-action=logout">Logout</a></li>
					</xsl:when>
					<xsl:when test="/data/events/member-login-info/@logged-in = 'true'">
						<li>
							<a href="{$root}/forum/members/{$member-username}/">
								<xsl:text>Hello, </xsl:text>
								<xsl:value-of select="$member-username"/>
							</a>
						</li>
						<li>
							<a class="button" href="?member-action=logout&amp;redirect={$root}/forum/">Logout</a>
						</li>
					</xsl:when>
					<xsl:when test="/data/events/member-login-info/@failed-login-attempt = 'true'">
						<li>Login Failed, </li>
						<li><input id="submit" type="submit" name="reset" value="Try Again" class="button"/></li>
						<li class="reset"><span>or </span><a class="button" href="{$root}/forum/members/reset-pass/">Reset Password</a></li>
					</xsl:when>
					<xsl:otherwise>
						<li><input name="username" title="username" type="text" value="username" class="clear-on-focus"/></li>
						<li><input name="password" title="chipmonk" type="password" value="chipmonk" class="clear-on-focus"/></li>
						<li><input name="redirect" type="hidden" value="{$root}/forum/"/><input id="submit" type="submit" name="member-action[login]" value="Log In" class="button"/></li>
						<li class="register"><span>or </span><a href="{$root}/forum/members/new/" class="register button">Register an Account</a></li>
					</xsl:otherwise>
				</xsl:choose>
			</ul>
		</fieldset>
	</form>
</xsl:template>

<xsl:template match="data" mode="side-panel">
	<h3>Search</h3>
	<div id="search">
		<form method="get" action="">
			<fieldset>
				<input id="query" class="clear-on-focus" name="query" type="text" title="Search" value="" />
				<input type="submit" value="Search" />
			</fieldset>
		</form>
	</div>
	<xsl:if test="$logged-in = 'true'">
		<h3>Actions</h3>
		<ul class="links">
			<li>
				<a id="create" href="{$root}/forum/discussions/new/">Start a new discussion</a>
			</li>
			<li>
				<a href="?forum-action=mark-all-as-read">Mark All as Read</a>
			</li>
		</ul>
		<h3>Filters</h3>
		<ul class="categories">
			<li>
				<a href="{$root}/forum/" title="View all discussions">All Discussions</a>
			</li>
			<li>
				<a href="{$root}/forum/forum-filter/" title="Filter discussions">My Discussions</a>
			</li>
		</ul>
	</xsl:if>
</xsl:template>

<xsl:template name="whos-online">
	<div id="whos-online">
		<h3><xsl:value-of select="concat('Currently Online (', count(data/whos-online/member), ')')"/></h3>
		<ul>
			<xsl:for-each select="data/whos-online/member">
				<li>
					<a href="{$root}/forum/members/{.}">
						<img src="http://www.gravatar.com/avatar/{@email-hash}?s=25&amp;d=http%3A%2F%2Fsymphony-cms.com%2Fworkspace%2Fassets%2Fimages%2Ficons%2Fsymphony-avatar.png" width="25" height="25" />
						<xsl:value-of select="concat(' ',.)"/>
					</a>
				</li>						
			</xsl:for-each>
		</ul>
	</div>
</xsl:template>

</xsl:stylesheet>