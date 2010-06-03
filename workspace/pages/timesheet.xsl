<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:param name="page-datasource" select="timesheet-pages/entry"/>
	<xsl:param name="filter"/>
	<xsl:param name="sort"/>
	<xsl:param name="selected-page">
		<xsl:choose>
			<xsl:when test="$page">
				<xsl:value-of select="$page"/>
			</xsl:when>
			<xsl:otherwise>1</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="total-pages" select="/data/timesheet-pages/pagination-info/@total-pages"/>
	<div class="breadcrumbs">
		<div class="box">
			<p class="login-info"><xsl:copy-of select="$login-info"/></p>
			<p>
				<a href="{$root}/timesheet/{$current-page}/">
					<xsl:value-of select="$page-title"/>
				</a>
			</p>
		</div>
	</div>
	<div class="box">
		<xsl:choose>
			<xsl:when test="not($entry)">
				<div id="content" class="content-1col">
					<div class="body">
						<div class="pagination">
							<xsl:choose>
								<xsl:when test="$selected-page &gt; 1">
									<a class="first" href="{$root}/timesheet/page/1/">
										<xsl:value-of select="'First'"/>
									</a>
									<a class="previous" href="{$root}/timesheet/page/{$selected-page - 1}/">
										<xsl:value-of select="'Previous'"/>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<a class="first na" href="{$root}/timesheet/page/1/">
										<xsl:value-of select="'First'"/>
									</a>
									<a class="previous na" href="{$root}/timesheet/page/1/">
										<xsl:value-of select="'Previous'"/>
									</a>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:call-template name="create-page-links">
								<xsl:with-param name="total-pages" select="$total-pages"/>
							</xsl:call-template>
							<xsl:choose>
								<xsl:when test="$selected-page &lt; $total-pages">
									<a class="next" href="{$root}/timesheet/page/{$selected-page + 1}/">
										<xsl:value-of select="'Next'"/>
									</a>
									<a class="last" href="{$root}/timesheet/page/{$total-pages}/">
										<xsl:value-of select="'Last'"/>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<a class="next na" href="{$root}/timesheet/page/{$total-pages}/">
										<xsl:value-of select="'Next'"/>
									</a>
									<a class="last na" href="{$root}/timesheet/page/{$total-pages}/">
										<xsl:value-of select="'Last'"/>
									</a>
								</xsl:otherwise>
							</xsl:choose>
						</div>
						<h2><a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a></h2>
						<table class="timesheet">
							<thead>
								<tr>
									<th>
										<xsl:choose>
											<xsl:when test="$filter='date'">
												<a href="{$root}/{$current-page}/date/" class="current">Date</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/date/">Date</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th>Start</th>
									<th>Stop</th>
									<th>
										<xsl:choose>
											<xsl:when test="$filter='client'">
												<a href="{$root}/{$current-page}/client/" class="current">Client</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/client/">Client</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th>
										<xsl:choose>
											<xsl:when test="$filter='project'">
												<a href="{$root}/{$current-page}/project/" class="current">Project</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/project/">Project</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th>
										<xsl:choose>
											<xsl:when test="$filter='number'">
												<a href="{$root}/{$current-page}/number/" class="current">Ticket</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/number/">Ticket</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th>
										<xsl:choose>
											<xsl:when test="$filter='function'">
												<a href="{$root}/{$current-page}/function/" class="current">Function</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/function/">Function</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
									<th>
										<xsl:choose>
											<xsl:when test="$filter='hours'">
												<a href="{$root}/{$current-page}/hours/" class="current">Hours</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/hours/">Hours</a>
											</xsl:otherwise>
										</xsl:choose>
									</th>
								</tr>
							</thead>
							<tbody>
								<xsl:choose>
									<xsl:when test="not($sort)">
										<xsl:choose>
											<xsl:when test="not($filter) or $filter='number'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="number" order="descending"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='date'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="date"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='client'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="client/item"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='project'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="project"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='title'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="title"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='task'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="task/item"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='hours'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="hours"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:otherwise>
												<xsl:for-each select="$page-datasource[client/item/@handle=$filter]">
													<xsl:sort select="@handle" order="descending"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="$page-datasource[project/item/@entry-handle=$sort]">
											<xsl:sort select="@handle" order="descending"/>
											<xsl:call-template name="list-timesheet-entries"/>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</tbody>
							<tfoot>
								<tr class="totals">
									<td>TOTALS</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>
										<xsl:choose>
											<xsl:when test="($filter) and not($sort)">
												<xsl:choose>
													<xsl:when test="
															$filter='number' or
															$filter='date' or
															$filter='client' or
															$filter='project' or
															$filter='title' or
															$filter='task' or
															$filter='hours'
															">
														<xsl:call-template name="total-column">
															<xsl:with-param name="node-set" select="$page-datasource/hours"/>
														</xsl:call-template>
													</xsl:when>
													<xsl:otherwise>
														<xsl:call-template name="total-column">
															<xsl:with-param name="node-set" select="$page-datasource[client/item/@handle=$filter]/hours"/>
														</xsl:call-template>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:when test="($sort)">
												<xsl:call-template name="total-column">
													<xsl:with-param name="node-set" select="$page-datasource[project/item/@entry-handle=$sort]/hours"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="total-column">
													<xsl:with-param name="node-set" select="$page-datasource/hours"/>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
									</td>
								</tr>
								<tr>
									<td colspan="8" class="admin-links">
										<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=5">
											New Entry
										</a>
										| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=5">
											List Entries
										</a>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="box">
					<div id="box-content">
						<div id="content" class="content-2col">
							<xsl:for-each select="timesheet-entry/entry">
								<h2>
									<a href="{$root}/timesheet/">Timesheet</a>
									<xsl:if test="$client and $client != 'previous' and $client != 'next'">
										<xsl:text> : </xsl:text>
										<xsl:call-template name="link-to-timesheet-client-name">
											<xsl:with-param name="client-handle" select="$client"/>
										</xsl:call-template>
									</xsl:if>
									<xsl:if test="$client and $client = 'previous' or $client = 'next'">
										<xsl:text> : </xsl:text>
										<xsl:call-template name="link-to-timesheet-client-name" />
									</xsl:if>
									<xsl:if test="$project and $client != 'previous' and $client != 'next'">
										<xsl:text> : </xsl:text>
										<xsl:call-template name="link-to-timesheet-project-title" />
									</xsl:if>
									<xsl:if test="$project and $client = 'previous' or $client = 'next'">
										<xsl:text> : </xsl:text>
										<xsl:call-template name="link-to-timesheet-project-title" />
									</xsl:if>
								</h2>
								<div class="colA">
									<div id="entries">
										<div class="entry">
											<p class="entry-data">
												<xsl:call-template name="link-to-timesheet-entry-number"/>
											</p>
											<div class="entry-body">
												<h2>
													<xsl:call-template name="link-to-timesheet-title"/>
												</h2>
												<xsl:if test="(details)">
													<xsl:copy-of select="details/*"/>
												</xsl:if>
												<p class="entry-info"><span>Date </span>
													<xsl:call-template name="format-date">
														<xsl:with-param name="date" select="start-time"/>
														<xsl:with-param name="format" select="'x M Y'"/>
													</xsl:call-template>
												</p>
												<p class="entry-info"><span>Start </span>
													<xsl:call-template name="format-date">
														<xsl:with-param name="date" select="start-time"/>
														<xsl:with-param name="format" select="'t'"/>
													</xsl:call-template>
												</p>
												<p class="entry-info"><span>Stop </span>
													<xsl:call-template name="format-date">
														<xsl:with-param name="date" select="stop-time"/>
														<xsl:with-param name="format" select="'t'"/>
													</xsl:call-template>
												</p>
												<p class="entry-info"><span>Client </span>
													<xsl:call-template name="link-to-client-name"/>
												</p>
												<p class="entry-info"><span>Project </span>
													<xsl:call-template name="link-timesheet-to-project-title"/>
												</p>
												<xsl:if test="function/item">
													<p class="entry-info"><span>Function </span>
														<xsl:value-of select="function/item"/>
													</p>
												</xsl:if>
												<p class="entry-info"><span>Hours </span>
													<xsl:value-of select="hours"/>
												</p>
												<xsl:if test="$logged-in='true' and $member-info/role='Administrator'">
													<p class="entry-info"><span>Symphony </span>
														<a href="{$root}/symphony/publish/tickets/edit/{@id}/">
															Edit Ticket
														</a>
														| <a href="{$root}/symphony/publish/tickets/new/">
															Create Ticket
														</a>
														| <a href="{$root}/symphony/publish/tickets/">
															List Tickets
														</a>
													</p>
												</xsl:if>
											</div>
										</div>
									</div>
								</div>
								<div class="colB">
									<div class="lists">
										<h3>Recent Entries</h3>
										<p class="admin-links">
											<a href="{$root}/symphony/publish/tickets/new/">
												New Ticket
											</a>
											| <a href="{$root}/symphony/publish/tickets/">
												List Tickets
											</a>
										</p>
										<ul class="entries-list">
											<xsl:for-each select="/data/timesheet-recent/entry">
												<li>
													<xsl:call-template name="link-to-timesheet-recent-entry"/>
												</li>
											</xsl:for-each>
										</ul>
									</div>
								</div>
							</xsl:for-each>
						</div>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</div>
</xsl:template>

<xsl:template name="list-timesheet-entries">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<tr>
		<td class="link">
			<a href="{$root}/timesheet/ticket/entry/{client/item/@handle}/{project/item/@id}/{@id}/"
				title="Timesheet : Entry {@id}">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="start-time"/>
					<xsl:with-param name="format" select="'x m Y'"/>
				</xsl:call-template>
			</a>
		</td>
		<td>
			<xsl:if test="(start-time)">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="start-time"/>
					<xsl:with-param name="format" select="'t'"/>
				</xsl:call-template>
			</xsl:if>
		</td>
		<td>
			<xsl:if test="(stop-time)">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="stop-time"/>
					<xsl:with-param name="format" select="'t'"/>
				</xsl:call-template>
			</xsl:if>
		</td>
		<td class="link">
			<xsl:call-template name="link-to-timesheet-client-code"/>
		</td>
		<td class="link">
			<xsl:call-template name="link-to-timesheet-project-number"/>
		</td>
		<td class="link">
			<xsl:call-template name="link-to-timesheet-title"/>
		</td>
		<td><xsl:value-of select="function/item"/></td>
		<xsl:choose>
			<xsl:when test="$logged-in='true' and $member-info/role='Administrator'">
				<td class="link">
					<a href="{$root}/symphony/publish/tickets/edit/{@id}/"
						title="Update Hours for Entry {@handle}">
						<xsl:value-of select="hours"/>
					</a>
				</td>
			</xsl:when>
			<xsl:otherwise>
				<td><xsl:value-of select="hours"/></td>
			</xsl:otherwise>
		</xsl:choose>
	</tr>
</xsl:template>

<xsl:template name="link-to-timesheet-entry">
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format" select="'x m Y'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-code" select="client/item"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<a href="{$root}/timesheet/entry/{$page}/{$client-handle}/{$project-number}/{number}/"
		title="Entry {@handle} | {$timesheet-entry-date} | {$client-code}{$project-number} | {task/item} | {hours} hr(s)">
		<xsl:value-of select="title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-recent-entry">
	<xsl:param name="this-entry-handle" select="@handle"/>
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="start-time"/>
			<xsl:with-param name="format" select="'x m Y'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<a href="{$root}/timesheet/ticket/entry/{$client-handle}/{$project-number}/{number}/"
		title="Entry {@id} | {$timesheet-entry-date} | {client/item}{$project-number} | {function/item} | {hours} hr(s)">
		<xsl:value-of select="title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-entry-time">
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format" select="'x m Y'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="timesheet-entry-time">
		<xsl:call-template name="format-date">
			<xsl:with-param name="time" select="time"/>
		</xsl:call-template>
	</xsl:param>
	<a href="{$root}/timesheet/entries/desc/{@handle}/" 
		title="Entry {@handle}">
		<xsl:value-of select="$timesheet-entry-time"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-entry-code">
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format" select="'x m Y'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<a href="{$root}/timesheet/ticket/entry/{$client-handle}/{$project-number}/{@id}/"
		title="{$timesheet-entry-date} | {task/item} | {hours} hr(s)">
		<xsl:value-of select="client/item"/>
		<xsl:value-of select="number"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-title">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<a href="{$root}/timesheet/ticket/entry/{$client-handle}/{$project-number}/{@id}/"
		title="Timesheet : Entry {@id}">
		<xsl:value-of select="title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-entry-number">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<a href="{$root}/timesheet/ticket/entry/{$client-handle}/{$project-number}/{@id}/" title="Timesheet : Entry {@id}">
		Ticket <xsl:value-of select="@id"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-client-code">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-code" select="client/item"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<a href="{$root}/timesheet/entries/{$client-handle}/" title="Timesheets : {$client-name}">
		<xsl:value-of select="$client-code"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-client-name">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-code" select="client/item"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<a href="{$root}/timesheet/entries/{$client-handle}/" title="Timesheets : {$client-name}">
		<xsl:value-of select="$client-name"/>
	</a>
</xsl:template>

<xsl:template name="link-to-project-title">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-title" select="project-title"/>
	<a href="{$root}/projects/{$client-handle}/{@handle}/" title="Projects : {project/item}{@id}-{$project-title}">
		<xsl:value-of select="project/item"/>
		<xsl:value-of select="@id"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="link-timesheet-to-project-title">
	<xsl:param name="client-code" select="client/item"/>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<xsl:param name="project-title" select="/data/project-titles/entry[number=$project-number]/title"/>
	<a href="{$root}/projects/{$client-handle}/{$project-number}/" title="Projects : {$project-title}">
		<xsl:value-of select="$client-code"/>
		<xsl:value-of select="$project-number"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-project-title">
	<xsl:param name="client-code" select="client/item"/>
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<xsl:param name="project-title" select="/data/project-titles/entry[@id=$project-number]/title"/>
	<a href="{$root}/timesheet/entries/{$client-handle}/{$project-number}/" title="Timesheet Entries : {$client-code}{$project-number} - {$project-title}">
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-project-number">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<xsl:param name="project-number" select="project/item/@id"/>
	<xsl:param name="project-title" select="/data/project-titles/entry[number=$project-number]/title"/>
	<a href="{$root}/timesheet/entries/{$client-handle}/{$project-number}/" title="Timesheet Entries : {client/item}{$project-number} - {$project-title}">
		<xsl:value-of select="project/item"/>
	</a>
</xsl:template>

<xsl:template name="link-to-client-name">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<a href="{$root}/clients/{$client-handle}/" title="Clients : {$client-name}">
		<xsl:value-of select="$client-name"/>
	</a>
</xsl:template>

<xsl:template name="link-to-code-number">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<xsl:param name="project-title" select="project-title"/>
	<a href="{$root}/clients/{$client-handle}" title="Clients : {$client-name}">
		<xsl:value-of select="project-client/item"/>
	</a>
	<xsl:text> : </xsl:text>
	<a href="{$root}/projects/{$client-handle}/{@handle}/" title="Clients : {project-client/item} {@handle}-{$project-title}">
		<xsl:value-of select="@handle"/>
	</a>
</xsl:template>

<xsl:template name="link-to-code">
	<xsl:param name="client-handle" select="client/item/@handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[code/@handle=$client-handle]/name"/>
	<xsl:param name="project-title" select="project"/>
	<a href="{$root}/clients/{$client-handle}/" title="Clients : {$client-name}">
		<xsl:value-of select="client/item"/>
	</a>
</xsl:template>

<xsl:template name="total-column">
	<xsl:param name="node-set" select="/data/timesheet/year/month/day/entry/hours"/>
	<xsl:param name="total-column" select="sum($node-set)"/>
	<xsl:value-of select="$total-column"/>
</xsl:template>

<xsl:template name="create-page-links">
	<xsl:param name="total-pages" select="/data/timesheet-pages/pagination-info/@total-pages"/>
	<xsl:param name="selected-page">
		<xsl:choose>
			<xsl:when test="$page and format-number($page,'0') != 'NaN'">
				<xsl:value-of select="$page"/>
			</xsl:when>
			<xsl:otherwise>1</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="start-page">
		<xsl:choose>
			<xsl:when test="not($page) or $page &lt; 6">1</xsl:when>
			<xsl:otherwise><xsl:value-of select="$page - 5"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="page-num" select="$start-page"/>
	<xsl:param name="end-page">
		<xsl:choose>
			<xsl:when test="$start-page + 9 &lt; $total-pages"><xsl:value-of select="$start-page + 9"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="$total-pages"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<a href="{$root}/timesheet/page/{$page-num}/">
		<xsl:if test="(not($page) and $page-num = 1) or $page-num = $page">
			<xsl:attribute name="class">current</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="$page-num"/>
	</a>
	<xsl:if test="$page-num &lt; $end-page">
		<xsl:text>  </xsl:text>
		<xsl:call-template name="create-page-links">
			<xsl:with-param name="page-num" select="$page-num + 1"/>
			<xsl:with-param name="start-page" select="$start-page"/>
			<xsl:with-param name="end-page" select="$end-page"/>
			<xsl:with-param name="total-pages" select="$total-pages"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>