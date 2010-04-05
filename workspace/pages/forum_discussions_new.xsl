<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:variable name="event-action" select="'forum-create-discussion'"/>
<xsl:variable name="event" select="/data/events/*[name()=$event-action]"/>

<xsl:template match="data">
	<h2 class="heading">New Discussion</h2>
	<xsl:for-each select="$event[entry/@result = 'error']">
		<div id="system-message">
			<p class="message"><xsl:value-of select="entry/message"/></p>
			<xsl:for-each select="entry[@result = 'error']">
				<p class="error"><xsl:value-of select="@section-handle"/>: <xsl:value-of select="filter"/></p>
			</xsl:for-each>
		</div>
	</xsl:for-each>
	<form method="post" action="{$current-url}">
		<fieldset>
			<p>
				<xsl:if test="$event[@result = 'error']/topic">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="post-topic">Topic</label>
				<input id="post-topic" name="discussions[topic]" type="text" value="{$event/post-values/topic}"/>
			</p>
			<p>
				<xsl:if test="$event[@result = 'error']/comment">
					<xsl:attribute name="class">error</xsl:attribute>
				</xsl:if>
				<label for="post-comment">Comment</label>
				<span id="wmd-editor" class="wmd-panel">
					<span id="wmd-button-bar"></span>
					<textarea id="wmd-input" name="comments[comment]">
						<xsl:value-of select="$event/post-values/comment"/>
					</textarea>
				</span>
			</p>
			<input name="comments[created-by]" type="hidden" value="{$member/@id}"/>
			<input name="discussions[created-by]" type="hidden" value="{$member/@id}"/>
			<input name="discussions[last-post]" type="hidden" value="{$member/@id}"/>
			<div id="submission">
				<input id="submit" name="action[{$event-action}]" type="submit" value="Create discussion" class="button"/>
				<a id="cancel" href="{$root}/forum/" class="button">Cancel and go back</a>
			</div>
			<input name="redirect" type="hidden" value="{$root}/forum/discussions/"/>
		</fieldset>
	</form>
</xsl:template>

</xsl:stylesheet>