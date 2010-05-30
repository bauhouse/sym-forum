<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/public-master.xsl"/>

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
					<xsl:with-param name="admin-contact" select="'bauhouse'"/>
				</xsl:call-template>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template name="contact-email-form">
	<xsl:param name="owner"/>
	<form action="" method="post">
		<xsl:apply-templates select="events/send-email"/>
		<label for="name">Name</label><br />
		<input class="text" type="text" name="name" id="name" value=""  maxlength="100" /><br />
		<label for="email">Email</label><br />
		<input class="text" type="text" name="email" id="email" value=""  maxlength="100" /><br />
		<label for="email">Subject</label><br />
		<input class="text" type="text" name="subject" id="subject" value=""  maxlength="100" /><br />
		<label for="message">Message</label><br />
		<textarea name="message" id="message" rows="6" cols="50"></textarea><br />
		<input type="hidden" name="recipient-username" value="" />
		<input id="submit" type="submit" name="action[send-email]" value="Send Message" />
	</form>
</xsl:template>

</xsl:stylesheet>