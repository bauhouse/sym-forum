<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/public-master.xsl"/>

<xsl:param name="primary-account" select="/data/events/login-info[@primary-account = 'yes']" />
<xsl:param name="event-action" select="'send-message'" />
<xsl:param name="form-event" select="/data/events/*[name() = $event-action]" />

<xsl:template match="data">
	<div id="content">
		<div class="body">
			<xsl:for-each select="section/entry">
				<h2><xsl:value-of select="title"/></h2>
				<h3><xsl:value-of select="heading"/></h3>
				<xsl:copy-of select="description/*"/>
				<xsl:copy-of select="body/*"/>
			</xsl:for-each>
			<div id="contact-form">
				<xsl:call-template name="contact-email-form">
					<xsl:with-param name="admin-contact" select="$primary-account/username"/>
				</xsl:call-template>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template name="contact-email-form">
	<xsl:param name="admin-contact"/>
	<form action="" method="post">
		<xsl:apply-templates select="events/send-message"/>
		<label for="name">Name</label><br />
		<input class="text" type="text" name="fields[name]" id="name" value="{$form-event/post-values/name}"  maxlength="100" /><br />
		<label for="email">Email</label><br />
		<input class="text" type="text" name="fields[email]" id="email" value="{$form-event/post-values/email}"  maxlength="100" /><br />
		<label for="email">Subject</label><br />
		<input class="text" type="text" name="fields[subject]" id="subject" value="{$form-event/post-values/subject}"  maxlength="100" /><br />
		<label for="message">Message</label><br />
		<textarea name="fields[message]" id="message" rows="6" cols="50">
			<xsl:value-of select="$form-event/post-values/message" />
		</textarea><br />
		<input name="send-email[sender-email]" value="fields[email]" type="hidden" />
		<input name="send-email[sender-name]" value="fields[name]" type="hidden" />
		<input name="send-email[subject]" value="fields[subject]" type="hidden" />
		<input name="send-email[body]" value="fields[message]" type="hidden" />
		<input name="send-email[recipient]" value="{$admin-contact}" type="hidden" />
		<input id="submit" type="submit" name="action[{$event-action}]" value="Send Message" />
	</form>
</xsl:template>

<xsl:template match="events/send-message">
	<xsl:choose>
		<xsl:when test="@result = 'success'">
			<p>Thank you. Your message has been sent successfully.</p>
		</xsl:when>
		<xsl:otherwise>
			<xsl:if test="filter/@status = 'failed'">
				<ul>
					<xsl:for-each select="filter">
						<li><strong><xsl:value-of select="@name" /></strong>: <xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul>
			</xsl:if>
			<xsl:if test="*/@type = 'missing'">
				<ul>
					<xsl:for-each select="*[@type = 'missing']">
						<li><xsl:value-of select="@message" /></li>
					</xsl:for-each>
				</ul>
			</xsl:if>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>