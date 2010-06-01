<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/public-master.xsl"/>

<xsl:variable name="member" select="/data/events/member-login-info"/>
<xsl:variable name="username" select="$member/username-and-password/@username"/>
<xsl:variable name="logged-in" select="/data/events/member-login-info/@logged-in"/>
<xsl:variable name="permissions" select="/data/events/member-login-info/permissions"/>

<xsl:template match="data">
	<div id="content">
		<div class="body">
			<xsl:choose>
				<xsl:when test="$logged-in='true'">
					<h2>Logged In</h2>
					<h3>Hello,
						<xsl:value-of select="$member/name"/>
					</h3>
					<p>You are currently logged in as <strong><xsl:value-of select="$username"/></strong>, <xsl:value-of select="$member/role"/>.</p>
					<form action="?member-action=logout&amp;redirect={$current-url}" method="post">
						<p>To end your session, click on the logout button.</p>
						<input type="submit" class="submit" value="Logout"/>
					</form>
				</xsl:when>
				<xsl:otherwise>
					<h2>Login</h2>
					<xsl:choose>
						<xsl:when test="$section = 'failed'">
							<h3 class="failure">Login Failed</h3>
						</xsl:when>
						<xsl:otherwise>
							<h3>Login Required</h3>
						</xsl:otherwise>
					</xsl:choose>
					<p>You will require a user name and password to access this Login Area. Please login.</p>
					<form action="{$current-url}" method="post">
						<fieldset>
							<label>Username <input name="username" class="text"/></label>
							<label>Password <input name="password" class="text" type="password" /></label>
							<!--label class="checkbox"><input name="remember" type="checkbox" checked="checked" /> Remember me</label-->
							<input name="redirect" type="hidden" value="{$current-url}"/>
							<input name="member-action[login]" type="submit" class="submit" value="Login" />
						</fieldset>
					</form>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>