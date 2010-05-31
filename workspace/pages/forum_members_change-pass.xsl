<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/forum-master.xsl"/>

<xsl:variable name="event-action" select="'members-change-password'"/>
<xsl:variable name="event" select="/data/events/*[name()=$event-action]"/>

<xsl:template match="data">
	<xsl:choose>
		<xsl:when test="$event/@result = 'success'"><xsl:apply-templates select="." mode="success"/></xsl:when>
		<xsl:when test="$event/@result = 'error'"><xsl:apply-templates select="." mode="failed"/></xsl:when>
		<xsl:otherwise><xsl:apply-templates select="." mode="change-pass"/></xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="data" mode="change-pass">
	<h2 class="heading">Change your password</h2>
	<xsl:call-template name="change-password-form"/>
</xsl:template>

<xsl:template match="data" mode="success">
	<h2 class="heading">Change your password</h2>
	<h3>Success!</h3>
	<p>Password changed successfully.</p>
</xsl:template>

<xsl:template match="data" mode="failed">
	<h2 class="heading">Change your password</h2>
	<div id="system-message">
		<h3>Oh Noes!</h3>
		<p class="error">The old password provided doesn't seem to be correct.</p>
	</div>
	<xsl:call-template name="change-password-form"/>
</xsl:template>

<xsl:template name="change-password-form">
	<form method="post" action="{$current-url}" class="form-complex">
		<fieldset>
			<p>
				<xsl:if test="$event/old-password">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="name">Old Password</label>
				<input id="name" name="fields[old-password]" type="password" />
			</p>
			<p>
				<xsl:if test="$event/new-password">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="name">New Password</label>
				<input id="name" name="fields[new-password]" type="password" />
			</p>
			<div id="submission">
				<input id="submit" name="action[{$event-action}]" type="submit" value="Change Password" class="button"/>
				<a id="cancel" href="{$root}/forum/members/{$member/username-and-password/@username}/" class="button">Cancel and go back</a>
			</div>
		</fieldset>
	</form>
</xsl:template>

</xsl:stylesheet>