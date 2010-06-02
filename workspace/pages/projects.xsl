<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:param name="page-datasource" select="/data/projects/entry"/>
	<xsl:param name="sort">
		<xsl:choose>
			<xsl:when test="not($project)">descending</xsl:when>
			<xsl:when test="$sort"><xsl:value-of select="$sort"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="$project"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="sort-switch">
		<xsl:choose>
			<xsl:when test="$sort = 'descending'">ascending</xsl:when>
			<xsl:when test="$sort = 'ascending'">descending</xsl:when>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="client-name">
		<xsl:call-template name="link-to-projects-client-name">
			<xsl:with-param name="client-handle" select="$client"/>
		</xsl:call-template>
	</xsl:param>
	<div class="breadcrumbs">
		<div class="box">
			<p class="login-info"><xsl:copy-of select="$login-info"/></p>
			<p>
				<a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a>
				<xsl:choose>
					<xsl:when test="$client and substring($client,5) = ''">
						<xsl:text> : </xsl:text>
						<xsl:for-each select="client-names/entry[@handle=$client]">
							<xsl:call-template name="link-to-client-code"/>
						</xsl:for-each>
					</xsl:when>
					<xsl:when test="$client='client' or $client='number' or $client='project-title' or $client='start-date' or $client='due-date' or $client='status'">
						<xsl:text> by </xsl:text>
						<xsl:value-of select="translate($client,'-',' ')"/>
						<xsl:text> in </xsl:text>
						<xsl:value-of select="$sort"/>
						<xsl:text> order</xsl:text>
					</xsl:when>
					<xsl:when test="$project">
						<xsl:text> : </xsl:text>
						<xsl:for-each select="$page-datasource[@handle=$project]">
							<xsl:call-template name="link-to-code-number"/>
						</xsl:for-each>
					</xsl:when>
				</xsl:choose>
			</p>
		</div>
	</div>
	<div class="box">
		<xsl:choose>
			<xsl:when test="not($project) or $project = 'ascending' or $project = 'descending'">
				<div id="content" class="content-1col">
					<div class="body">
						<h2>
							<a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a>
							<xsl:choose>
								<xsl:when test="$client and substring($client,5) = ''">
									<xsl:text> : </xsl:text>
									<xsl:copy-of select="$client-name"/>
								</xsl:when>
							</xsl:choose>
						</h2>
						<table class="client-list">
							<thead>
								<tr>
									<th class="client {$sort}">
										<xsl:choose>
											<xsl:when test="$client = 'client'">
												<a href="{$root}/{$current-page}/client/{$sort-switch}/" class="current">Client</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/client/">Client</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th class="number {$sort}">
										<xsl:choose>
											<xsl:when test="$client='number'">
												<a href="{$root}/{$current-page}/number/{$sort-switch}/" class="current">Number</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/number/">Number</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th class="project {$sort}">
										<xsl:choose>
											<xsl:when test="$client='project-title'">
												<a href="{$root}/{$current-page}/project-title/{$sort-switch}/" class="current">Project Title</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/project-title/">Project Title</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th class="start date {$sort}">
										<xsl:choose>
											<xsl:when test="$client='start-date'">
												<a href="{$root}/{$current-page}/start-date/{$sort-switch}/" class="current">Start Date</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/start-date/">Start Date</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th class="due date {$sort}">
										<xsl:choose>
											<xsl:when test="$client='due-date'">
												<a href="{$root}/{$current-page}/due-date/{$sort-switch}/" class="current">Due Date</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/due-date/">Due Date</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th class="status {$sort}">
										<xsl:choose>
											<xsl:when test="$client='status'">
												<a href="{$root}/{$current-page}/status/{$sort-switch}/" class="current">Status</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/status/">Status</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th class="timesheet">Timesheet</th>
								</tr>
							</thead>
							<tbody>
								<xsl:choose>
									<xsl:when test="not($client)">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="@handle" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:when test="$client='number'">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="@handle" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:when test="$client='client'">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="project-client/item/@entry-handle" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:when test="$client='project-title'">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="project-title/@handle" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:when test="$client='start-date'">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="date" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:when test="$client='due-date'">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="due-date" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:when test="$client='status'">
										<xsl:for-each select="$page-datasource">
											<xsl:sort select="project-status/@handle" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="$page-datasource[project-client/item/@entry-handle=$client]">
											<xsl:sort select="@handle" order="{$sort}"/>
											<xsl:call-template name="list-projects"/>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="8" class="admin-links">
										<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=2">
											New Project
										</a>
										| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=2">
											List Projects
										</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div id="box-content">
					<div id="content" class="content-2col">
						<h2>
							<a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a>
							<xsl:if test="$client">
								<xsl:text> : </xsl:text>
								<xsl:call-template name="link-to-projects-client-name">
									<xsl:with-param name="client-handle" select="$client"/>
								</xsl:call-template>
							</xsl:if>
						</h2>
						<div class="colA">
							<div id="entries">
								<div class="entry">
									<xsl:for-each select="projects/entry[@handle=$project]">
										<p class="entry-data">
											<xsl:call-template name="link-to-project-number"/>
										</p>
										<div class="entry-body">
											<h2>
												<xsl:call-template name="link-to-project-title"/>
											</h2>
											<xsl:if test="(project-description)">
												<xsl:copy-of select="project-description"/>
											</xsl:if>
											<p class="entry-info"><span>Client </span>
												<xsl:call-template name="link-to-client-name"/>
											</p>
											<p class="entry-info"><span>Start Date </span>
												<xsl:call-template name="format-date">
													<xsl:with-param name="date" select="start-date"/>
													<xsl:with-param name="format" select="'x M Y'"/>
												</xsl:call-template>
											</p>
											<xsl:if test="(due-date)">
												<p class="entry-info"><span>Due Date </span>
													<xsl:call-template name="format-date">
														<xsl:with-param name="date" select="due-date"/>
														<xsl:with-param name="format" select="'x M Y'"/>
													</xsl:call-template>
												</p>
											</xsl:if>
											<p class="entry-info"><span>Project Status </span>
												<xsl:value-of select="project-status"/>
											</p>
											<xsl:if test="$owner-logged-in='true' or $admin-logged-in='true'">
												<p class="entry-info"><span>Symphony </span>
													<a href="{$root}/symphony/?page=/publish/section/edit/&amp;_sid=2&amp;id={@id}">
														Edit Project
													</a>
													| <a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=2">
														Create New
													</a>
													| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=2">
														List Projects
													</a>
												</p>
											</xsl:if>
										</div>
									</xsl:for-each>
								</div>
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
									<xsl:for-each select="projects/entry[project-client/item/@entry-handle=$client]">
										<xsl:sort select="@handle" order="descending"/>
										<li><xsl:call-template name="link-to-project-title"/></li>
									</xsl:for-each>
								</ul>
							</div>
							<div class="lists">
								<h3>Project Items</h3>
								<p class="admin-links">
									<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=14">
										New Project Item
									</a>
									| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=14">
										List Project Items
									</a>
								</p>
								<ul class="entries-list">
									<xsl:for-each select="/data/project-items-by-client/entry">
										<xsl:sort select="@handle" order="ascending"/>
										<li><xsl:call-template name="link-to-project-item"/></li>
									</xsl:for-each>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</div>
</xsl:template>

<xsl:template name="list-projects">
	<xsl:param name="admin-logged-in" select="$member-info[role='Administrator']/@logged-in"/>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="client/item"/>
	<xsl:param name="client-code" select="client/item"/>
	<xsl:param name="project-title" select="title"/>
	<xsl:param name="project-number" select="number"/>
	<xsl:param name="project-status" select="status/item"/>
	<tr>
		<td class="link">
			<xsl:call-template name="link-to-code"/>
		</td>
		<td class="link">
			<a href="{$root}/{$current-page}/project/{$client-handle}/{$project-number}/" 
				title="Projects : {$client-code}{$project-number}-{$project-title}">
				<xsl:value-of select="$project-number"/>
			</a>
		</td>
		<td class="link">
			<a href="{$root}/{$current-page}/project/{$client-handle}/{$project-number}/" 
				title="Projects : {$client-code}{$project-number}-{$project-title}">
				<xsl:value-of select="$project-title"/>
			</a>
		</td>
		<td class="date">
			<xsl:call-template name="format-date">
				<xsl:with-param name="date" select="start-date"/>
				<xsl:with-param name="format" select="'x m Y'"/>
			</xsl:call-template>
		</td>
		<td class="date">
			<xsl:call-template name="format-date">
				<xsl:with-param name="date" select="due-date"/>
				<xsl:with-param name="format" select="'x m Y'"/>
			</xsl:call-template>
		</td>
		<xsl:choose>
			<xsl:when test="$admin-logged-in='true'">
				<td class="link">
					<a href="{$root}/symphony/?page=/publish/section/edit/&amp;_sid=2&amp;id={@id}"
						title="Change Status: {$client-code}{$project-number}">
						<xsl:value-of select="$project-status"/>
					</a>
				</td>
			</xsl:when>
			<xsl:otherwise>
				<td><xsl:value-of select="$project-status"/></td>
			</xsl:otherwise>
		</xsl:choose>
		<td class="link">
			<a href="{$root}/timesheet/new-entry/{$client-handle}/{$project-number}/"
				title="Create new timesheet entry for this project: {$client-code}{$project-number}">New Entry</a>
		</td>
	</tr>
</xsl:template>

<xsl:template name="link-to-client-name">
	<xsl:param name="client-handle" select="project-client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[client-code/@handle=$client-handle]/client-name"/>
	<a href="{$root}/clients/{$client-handle}/" title="Clients : {$client-name}">
		<xsl:value-of select="$client-name"/>
	</a>
</xsl:template>

<xsl:template name="link-to-projects-client-name">
	<xsl:param name="client-handle" select="project-client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[client-code/@handle=$client-handle]/client-name"/>
	<a href="{$root}/projects/{$client-handle}/" title="Projects : {$client-name}">
		<xsl:value-of select="$client-name"/>
	</a>
</xsl:template>

<xsl:template name="link-to-project-title">
	<xsl:param name="client-handle" select="project-client/item/@entry-handle"/>
	<xsl:param name="project-title" select="project-title"/>
	<xsl:param name="project-number" select="@handle"/>
	<a href="{$root}/projects/project/{$client-handle}/{$project-number}/" title="Projects : {project-client/item} {@handle}-{$project-title}">
		<xsl:value-of select="project-client/item"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$project-number"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-project-number">
	<xsl:param name="client-handle" select="project-client/item/@entry-handle"/>
	<xsl:param name="project-title" select="project-title"/>
	<xsl:param name="project-number" select="@handle"/>
	<a href="{$root}/projects/project/{$client-handle}/{$project-number}/" title="Projects : {project-client/item} {$project-number}-{$project-title}">
		<xsl:value-of select="project-client/item"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$project-number"/>
	</a>
</xsl:template>

<xsl:template name="link-to-code-number">
	<xsl:param name="client-handle" select="project-client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[@handle=$client-handle]/client-name"/>
	<xsl:param name="project-title" select="project-title"/>
	<xsl:param name="project-number" select="@handle"/>
	<a href="{$root}/projects/{$client-handle}/" title="Projects : {$client-name}">
		<xsl:value-of select="project-client/item"/>
	</a>
	<xsl:text> : </xsl:text>
	<a href="{$root}/projects/{$client-handle}/{$project-number}/" title="Projects : {project-client/item} {$project-number}-{$project-title}">
		<xsl:value-of select="$project-number"/>
	</a>
</xsl:template>

<xsl:template name="link-to-code">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[@handle=$client-handle]/client-name"/>
	<xsl:param name="project-title" select="title"/>
	<a href="{$root}/projects/{$client-handle}/" title="Projects : {$client-name}">
		<xsl:value-of select="client/item"/>
	</a>
</xsl:template>

<xsl:template name="link-to-client-code">
	<a href="{$root}/projects/{@handle}/" title="Projects : {client-name}">
		<xsl:value-of select="client-code"/>
	</a>
</xsl:template>

<xsl:template name="link-to-project-item">
	<xsl:param name="client-handle" select="client/item/@entry-handle"/>
	<xsl:param name="client-code" select="client/item/span"/>
	<xsl:param name="client-name" select="/data/client-name/entry[@handle = $client-code]/client-name"/>
	<xsl:param name="project-number" select="project/item"/>
	<xsl:param name="project-item-number" select="item-number"/>
	<xsl:param name="project-item" select="project-item"/>
	<a href="{$root}/projects/item/{$client-handle}/{$project-number}/{$project-item-number}/" title="Project Items : {$project-item-number}-{$project-item}">
		<xsl:value-of select="$project-item-number"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="$project-item"/>
	</a>
</xsl:template>

</xsl:stylesheet>