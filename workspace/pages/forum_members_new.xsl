<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/forum-master.xsl"/>
<xsl:import href="../utilities/timezone.xsl"/>

<xsl:variable name="event-action" select="'members-register'"/>
<xsl:variable name="event" select="/data/events/*[name()=$event-action]"/>

<xsl:template match="data">
	<h2 class="heading">Member Registration</h2>
	<xsl:for-each select="$event[@result = 'error']">
		<div id="system-message">
			<p class="message">There was a problem with your registration:</p>
			<xsl:if test="username-and-password/@type='invalid'">
				<p class="error"><xsl:value-of select="username-and-password/@message"/></p>
			</xsl:if>
			<xsl:if test="email-address/@type='missing' or email-address/@type='invalid'">
				<p class="error"><xsl:value-of select="email-address/@message"/></p>
			</xsl:if>
		</div>
	</xsl:for-each>
	<xsl:if test="$event[@result = 'success']">
		<div id="system-message">
			<p class="success">You have registered successfully. Please check your email for your activation code.</p>
		</div>
	</xsl:if>
	<form method="post" action="" class="form-complex">
		<fieldset>
			<p>
				<xsl:if test="$event/name">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="name">Full Name</label>
				<input id="name" name="fields[name]" type="text" value="{$event/post-values/name}" />
			</p>
			<p>
				<xsl:if test="$event/username-and-password">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="username">Username</label>
				<input id="username" name="fields[username-and-password][username]" type="text" value="{$event/post-values/username-and-password/username}" />
			</p>
			<p>
				<xsl:if test="$event/username-and-password">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="password">Password</label>
				<input id="password" name="fields[username-and-password][password]" type="password" />
			</p>
			<p>
				<xsl:if test="$event/email-address">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="email">Email</label>
				<input id="email" name="fields[email-address]" type="text" value="{$event/post-values/email-address}" />
			</p>					
			<p>
				<xsl:if test="$event/location">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="location">Country</label>
				<select id="location" name="fields[location]">
					<xsl:for-each select="location/item">
						<option value="{@value}">
							<xsl:choose>
								<xsl:when test="@value = 'AUS'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:when>
							</xsl:choose>
							<xsl:value-of select="."/>
						</option>
					</xsl:for-each>
				</select>
			</p>	
			<p>
				<xsl:if test="$event/city">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="city">City</label>
				<input id="city" name="fields[city]" type="text" value="{$event/post-values/city}" />
			</p>		
			<p>
				<label for="timezone">Timezone</label>
				<select id="timezone" name="fields[timezone-offset]">
					<xsl:call-template name="timezone-offset-options">
						<xsl:with-param name="ii">-12</xsl:with-param>
						<xsl:with-param name="count">12</xsl:with-param>
						<xsl:with-param name="selected">
							<xsl:choose>
								<xsl:when test="$event/post-values/timezone-offset">
									<xsl:value-of select="$event/post-values/timezone-offset"/>
								</xsl:when>
								<xsl:otherwise>10</xsl:otherwise>
							</xsl:choose>
						</xsl:with-param>	
					</xsl:call-template>								
				</select>
			</p>											
			<p>
				<xsl:if test="$event/website">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="website">Website</label>
				<input id="website" name="fields[website]" type="text" value="{$event/post-values/website}" />
			</p>					
			<p class="option">
				<label for="email-opt-in">Opt-in</label>
				<span>
					<input id="email-opt-in" name="fields[email-opt-in]" type="checkbox" value="yes" />
					<xsl:text> Send me email when there is important Symphony news.</xsl:text>
				</span>
			</p>				
			<div id="submission">
				<input id="submit" name="action[{$event-action}]" type="submit" value="Register" class="button"/>
				<a id="cancel" href="{$root}/forum/" class="button">Cancel and go back</a>
			</div>
		</fieldset>
	</form>
</xsl:template>

<xsl:template match="data[events/member-login-info/@logged-in='true']">
	<h2>Switching Secret Identities?</h2>
	<h3>You already have an account</h3>
	<p>According to our records, <xsl:value-of select="$member/name"/>, you are currently an existing agent. Coming here can only mean one thing: you're a double agent!</p>
	<p>We have alerted the authorities and <strong>depending on time and traffic</strong>, they will arrive in 4 to 8 weeks.</p>
</xsl:template>

</xsl:stylesheet>