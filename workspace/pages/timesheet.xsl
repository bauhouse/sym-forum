<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<xsl:param name="page-datasource" select="timesheet-pages/entry"/>
	<xsl:param name="maximum-list-entries" select="20"/>
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
												<a href="{$root}/{$current-page}/number/" class="current">Description</a>
											</xsl:when>
											<xsl:otherwise>
												<a href="{$root}/{$current-page}/number/">Description</a>
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
													<xsl:sort select="fields/number" order="descending"/>
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
													<xsl:sort select="fields/client/item"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='project'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="fields/project"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='description'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="fields/description"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='task'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="fields/task/item"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:when test="$filter='hours'">
												<xsl:for-each select="$page-datasource">
													<xsl:sort select="fields/hours"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:when>
											<xsl:otherwise>
												<xsl:for-each select="$page-datasource[fields/client/item/@entry-handle=$filter]">
													<xsl:sort select="@handle" order="descending"/>
													<xsl:call-template name="list-timesheet-entries"/>
												</xsl:for-each>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="$page-datasource[fields/project/item/@entry-handle=$sort]">
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
															$filter='description' or
															$filter='task' or
															$filter='hours'
															">
														<xsl:call-template name="total-column">
															<xsl:with-param name="node-set" select="$page-datasource/fields/hours"/>
														</xsl:call-template>
													</xsl:when>
													<xsl:otherwise>
														<xsl:call-template name="total-column">
															<xsl:with-param name="node-set" select="$page-datasource[fields/client/item/@entry-handle=$filter]/fields/hours"/>
														</xsl:call-template>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:when test="($sort)">
												<xsl:call-template name="total-column">
													<xsl:with-param name="node-set" select="$page-datasource[fields/project/item/@entry-handle=$sort]/fields/hours"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="total-column">
													<xsl:with-param name="node-set" select="$page-datasource/fields/hours"/>
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
				<div id="content" class="content-2col">
					<div class="colA">
						<div id="articles">
							<div class="entry">
								<xsl:for-each select="timesheet/year/month/day/entry[@handle=$entry]">
									<p class="entry-data">
										<xsl:call-template name="link-to-timesheet-entry-number"/>
									</p>
									<div class="entry-body">
										<h2>
											<xsl:call-template name="link-to-timesheet-description"/>
										</h2>
										<xsl:if test="(fields/details)">
											<xsl:copy-of select="fields/details/*"/>
										</xsl:if>
										<p class="entry-info"><span>Date </span>
											<xsl:call-template name="get-formatted-date">
												<xsl:with-param name="date" select="date"/>
												<xsl:with-param name="format-type" select="'long'"/>
											</xsl:call-template>
										</p>
										<p class="entry-info"><span>Start </span>
											<xsl:call-template name="get-formatted-time">
												<xsl:with-param name="time" select="fields/start-time"/>
											</xsl:call-template>
										</p>
										<p class="entry-info"><span>Stop </span>
											<xsl:call-template name="get-formatted-time">
												<xsl:with-param name="time" select="fields/stop-time"/>
											</xsl:call-template>
										</p>
										<p class="entry-info"><span>Client </span>
											<xsl:call-template name="link-to-client-name"/>
										</p>
										<p class="entry-info"><span>Project </span>
											<xsl:call-template name="link-timesheet-to-project-title"/>
										</p>
										<p class="entry-info"><span>Phase </span>
											<xsl:value-of select="fields/phase/item"/>
										</p>
										<xsl:if test="fields/task/item">
											<p class="entry-info"><span>Task </span>
												<xsl:value-of select="fields/task/item"/>
											</p>
										</xsl:if>
										<p class="entry-info"><span>Hours </span>
											<xsl:value-of select="fields/hours"/>
										</p>
										<xsl:if test="$owner-logged-in='true' or $admin-logged-in='true'">
											<p class="entry-info"><span>Symphony </span>
												<a href="{$root}/symphony/?page=/publish/section/edit/&amp;_sid=5&amp;id={@id}">
													Edit Entry
												</a>
												| <a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=5">
													Create New
												</a>
												| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=5">
													List Entries
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
							<h3>Recent Entries</h3>
							<p class="admin-links">
								<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=5">
									New Entry
								</a>
								| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=5">
									List Entries
								</a>
							</p>
							<ul class="entries-list">
								<xsl:for-each select="timesheet-recent-list/entry[position() &lt;= $maximum-list-entries]">
									<li>
										<xsl:call-template name="link-to-timesheet-recent-entry"/>
									</li>
								</xsl:for-each>
							</ul>
						</div>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</div>
</xsl:template>

<xsl:template name="list-timesheet-entries">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[fields/client-code/@handle=$client-handle]/fields/client-name"/>
	<tr>
		<td>
			<xsl:call-template name="get-formatted-date">
				<xsl:with-param name="date" select="date"/>
				<xsl:with-param name="format-type" select="'mixed'"/>
			</xsl:call-template>
		</td>
		<td>
			<xsl:if test="(fields/start-time)">
				<xsl:call-template name="get-formatted-time">
					<xsl:with-param name="time" select="fields/start-time"/>
				</xsl:call-template>
			</xsl:if>
		</td>
		<td>
			<xsl:if test="(fields/stop-time)">
				<xsl:call-template name="get-formatted-time">
					<xsl:with-param name="time" select="fields/stop-time"/>
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
			<xsl:call-template name="link-to-timesheet-description"/>
		</td>
		<td><xsl:value-of select="fields/function/item"/></td>
		<xsl:choose>
			<xsl:when test="$owner-logged-in='true' or $admin-logged-in='true'">
				<td class="link">
					<a href="{$root}/symphony/?page=/publish/section/edit/&amp;_sid=5&amp;id={@id}"
						title="Update Hours for Entry {@handle}">
						<xsl:value-of select="fields/hours"/>
					</a>
				</td>
			</xsl:when>
			<xsl:otherwise>
				<td><xsl:value-of select="fields/hours"/></td>
			</xsl:otherwise>
		</xsl:choose>
	</tr>
</xsl:template>

<xsl:template name="link-to-timesheet-entry">
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="get-formatted-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format-type" select="'mixed'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-code" select="fields/client/item"/>
	<xsl:param name="project-number" select="fields/project/item"/>
	<a href="{$root}/timesheet/entry/{$page}/{$client-handle}/{$project-number}/{@handle}/" 
		title="Entry {@handle} | {$timesheet-entry-date} | {$client-code} {$project-number} | {fields/task/item} | {fields/hours} hr(s)">
		<xsl:value-of select="fields/description"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-recent-entry">
	<xsl:param name="this-entry-handle" select="@handle"/>
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="get-formatted-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format-type" select="'mixed'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:for-each select="/data/timesheet/year/month/day/entry[@handle = $this-entry-handle]">
		<a href="{$root}/timesheet/entry/{fields/client/item/@entry-handle}/{fields/project/item}/{@handle}/" 
			title="Entry {@handle} | {$timesheet-entry-date} | {fields/client/item} {fields/project/item} | {fields/task/item} | {fields/hours} hr(s)">
			<xsl:value-of select="fields/description"/>
		</a>
	</xsl:for-each>
</xsl:template>

<xsl:template name="link-to-timesheet-entry-time">
	<xsl:param name="timesheet-entry-date">
		<xsl:call-template name="get-formatted-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format-type" select="'mixed'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="timesheet-entry-time">
		<xsl:call-template name="get-formatted-time">
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
		<xsl:call-template name="get-formatted-date">
			<xsl:with-param name="date" select="date"/>
			<xsl:with-param name="format-type" select="'mixed'"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="project-number" select="fields/project/item"/>
	<a href="{$root}/timesheet/entry/{$client-handle}/{$project-number}/{@handle}/" 
		title="{$timesheet-entry-date} | {fields/task/item} | {fields/hours} hr(s)">
		<xsl:value-of select="fields/client/item"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="fields/project/item"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="fields/description"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-description">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="project-number" select="fields/project/item"/>
	<a href="{$root}/timesheet/entry/{$client-handle}/{$project-number}/{@handle}/" 
		title="Timesheet : Entry {@handle}">
		<xsl:value-of select="fields/description"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-entry-number">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="project-number" select="fields/project/item"/>
	<a href="{$root}/timesheet/entry/{$client-handle}/{$project-number}/{@handle}/" title="Timesheet : Entry {@handle}">
		<xsl:value-of select="@handle"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-client-code">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-code" select="fields/client/item"/>
	<xsl:param name="client-name" select="/data/client-names/entry[fields/client-code/@handle=$client-handle]/fields/client-name"/>
	<a href="{$root}/timesheet/entries/{$client-handle}/" title="Timesheets : {$client-name}">
		<xsl:value-of select="$client-code"/>
	</a>
</xsl:template>

<xsl:template name="link-to-project-title">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="project-title" select="fields/project-title"/>
	<a href="{$root}/projects/{$client-handle}/{@handle}/" title="Projects : {fields/project/item} {@handle}-{$project-title}">
		<xsl:value-of select="fields/project/item"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="@handle"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="link-timesheet-to-project-title">
	<xsl:param name="client-code" select="fields/client/item"/>
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="project-number" select="fields/project/item"/>
	<xsl:param name="project-title" select="/data/project-titles/entry[fields/project-number=$project-number]/fields/project-title"/>
	<a href="{$root}/projects/{$client-handle}/{$project-number}/" title="Projects : {fields/project/item}">
		<xsl:value-of select="$client-code"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="$project-number"/>
		<xsl:text> - </xsl:text>
		<xsl:value-of select="$project-title"/>
	</a>
</xsl:template>

<xsl:template name="link-to-timesheet-project-number">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[fields/client-code/@handle=$client-handle]/fields/client-name"/>
	<xsl:param name="project-number" select="fields/project/item/@entry-handle"/>
	<xsl:param name="project-title" select="/data/project-titles/entry[@handle=$project-number]/fields/project-title"/>
	<a href="{$root}/timesheet/entries/{$client-handle}/{$project-number}/" title="Timesheet Entries : {fields/client/item} {fields/project/item} - {$project-title}">
		<xsl:value-of select="fields/project/item"/>
	</a>
</xsl:template>

<xsl:template name="link-to-client-name">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[fields/client-code/@handle=$client-handle]/fields/client-name"/>
	<a href="{$root}/clients/{$client-handle}/" title="Clients : {$client-name}">
		<xsl:value-of select="$client-name"/>
	</a>
</xsl:template>

<xsl:template name="link-to-code-number">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[fields/client-code/@handle=$client-handle]/fields/client-name"/>
	<xsl:param name="project-title" select="fields/project-title"/>
	<a href="{$root}/clients/{$client-handle}" title="Clients : {$client-name}">
		<xsl:value-of select="fields/project-client/item"/>
	</a>
	<xsl:text> : </xsl:text>
	<a href="{$root}/projects/{$client-handle}/{@handle}/" title="Clients : {fields/project-client/item} {@handle}-{$project-title}">
		<xsl:value-of select="@handle"/>
	</a>
</xsl:template>

<xsl:template name="link-to-code">
	<xsl:param name="client-handle" select="fields/client/item/@entry-handle"/>
	<xsl:param name="client-name" select="/data/client-names/entry[fields/client-code/@handle=$client-handle]/fields/client-name"/>
	<xsl:param name="project-title" select="fields/project"/>
	<a href="{$root}/clients/{$client-handle}/" title="Clients : {$client-name}">
		<xsl:value-of select="fields/client/item"/>
	</a>
</xsl:template>

<xsl:template name="total-column">
	<xsl:param name="node-set" select="/data/timesheet/year/month/day/entry/fields/hours"/>
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