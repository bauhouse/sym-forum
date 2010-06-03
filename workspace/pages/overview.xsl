<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:call-template name="breadcrumbs" />
	<div class="box">
		<div id="box-content">
			<div id="content" class="content-3col-wide">
				<h2><a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a></h2>
				<div class="colA">
					<div class="lists">
						<h3>Clients</h3>
						<p class="admin-links">
							<a href="{$root}/symphony/publish/clients/new/">
								New Client
							</a>
							| <a href="{$root}/symphony/publish/clients/">
								List Clients
							</a>
						</p>
						<ul class="client-list">
							<xsl:for-each select="client-names/entry">
								<xsl:sort select="code/@handle"/>
								<li><a href="{$root}/clients/{code/@handle}/" title="View details for {name}"><xsl:value-of select="name"/></a></li>
							</xsl:for-each>
						</ul>
					</div>
				</div>
				<div class="colB">
					<div class="lists">
						<h3>Projects</h3>
						<p class="admin-links">
							<a href="{$root}/symphony/publish/projects/new/">
								New Project
							</a>
							| <a href="{$root}/symphony/publish/projects/">
								List Projects
							</a>
						</p>
						<ul class="project-list">
							<xsl:for-each select="project-titles/entry">
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
							<a href="{$root}/symphony/publish/tickets/new/">
								New Ticket
							</a>
							| <a href="{$root}/symphony/publish/tickets/">
								List Tickets
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
</xsl:template>

<xsl:template name="link-to-project-title">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-title" select="title"/>
	<a href="{$root}/projects/{$client-handle}/{number}/" title="Projects : {client/item}{number}-{$project-title}">
		<xsl:value-of select="client/item"/>
		<xsl:value-of select="number"/>
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
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="start-time"/>
			<xsl:with-param name="format" select="'x m Y'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<a href="{$root}/timesheet/ticket/entry/{$client-handle}/{$project-number}/{@id}/"
		title="Entry {number} | {$timesheet-entry-date} | {client/item}{$project-number} | {function/item} | {hours} hr(s)">
		<xsl:value-of select="title"/>
	</a>
</xsl:template>

</xsl:stylesheet>