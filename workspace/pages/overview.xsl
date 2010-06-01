<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:choose>
		<xsl:when test="$logged-in='true'">
			<div class="breadcrumbs">
				<div class="box">
					<!--p class="login-info"><xsl:copy-of select="$login-info"/></p-->
					<p><a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a></p>
				</div>
			</div>
			<div class="box">
				<div id="box-content">
					<div id="content" class="content-3col-wide">
						<h2><a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a></h2>
						<div class="colA">
							<div class="lists">
								<h3>Clients</h3>
								<p class="admin-links">
									<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=1">
										New Client
									</a>
									| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=1">
										List Clients
									</a>
								</p>
								<ul class="client-list">
									<xsl:for-each select="client-names/entry">
										<xsl:sort select="@handle"/>
										<li><a href="{$root}/clients/{@handle}/" title="View details for {fields/client-name}"><xsl:value-of select="fields/client-name"/></a></li>
									</xsl:for-each>
								</ul>
							</div>
						</div>
						<div class="colB">
							<div class="lists">
								<h3>Projects</h3>
								<p class="admin-links">
									<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=2">
										New Project
									</a>
									| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=2">
										List Projects
									</a>
								</p>
								<ul class="project-list">
									<xsl:for-each select="projects-current/entry">
										<xsl:sort select="@handle" order="descending"/>
										<li><xsl:call-template name="link-to-project-title"/></li>
									</xsl:for-each>
								</ul>
							</div>
						</div>
						<div class="colC">
							<div class="lists">
								<h3>Timesheet</h3>
								<p class="admin-links">
									<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=5">
										New Entry
									</a>
									| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=5">
										List Entries
									</a>
								</p>
								<ul class="entries-list">
									<xsl:for-each select="timesheet-recent/entry">
										<xsl:sort select="@handle" order="descending"/>
										<li>
											<xsl:call-template name="overview-link-to-timesheet-entry"/>
										</li>
									</xsl:for-each>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:when>
		<xsl:otherwise>
			<div class="box">
				<div id="box-content">
					<div class="body">
						<h2>Access Restricted Area</h2>
						<h3>Admin Login Required</h3>
						<p>You need to have administrative privileges to access this area.</p>
					</div>
				</div>
			</div>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="link-to-project-title">
	<xsl:param name="client-handle" select="fields/project-client/item/@entry-handle"/>
	<xsl:param name="project-title" select="fields/project-title"/>
	<a href="{$root}/projects/{$client-handle}/{@handle}/" title="Projects : {fields/project-client/item} {@handle}-{$project-title}">
		<xsl:value-of select="fields/project-client/item"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="@handle"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="overview-link-to-timesheet-entry">
	<xsl:param name="date" select="date"/>
	<xsl:param name="year" select="substring($date, 1, 4)"/>
	<xsl:param name="month" select="substring($date, 6, 2)"/>
	<xsl:param name="day" select="substring($date, 9, 2)"/>
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="get-formatted-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format-type" select="'mixed'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="project-number" select="fields/project/item"/>
	<a href="{$root}/timesheet/entry/{$client-handle}/{$project-number}/{@handle}/" 
		title="Entry {@handle} | {$timesheet-entry-date} | {fields/client/item} {fields/project/item} | {fields/function/item} | {fields/hours} hr(s)">
		<xsl:value-of select="fields/description"/>
	</a>
</xsl:template>

</xsl:stylesheet>