<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/projects-master.xsl"/>

<xsl:template match="data">
	<div class="breadcrumbs">
		<div class="box">
			<p class="login-info"><xsl:copy-of select="$login-info"/></p>
			<p>
				<a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a>
				<xsl:if test="$client">
					<xsl:text> : </xsl:text>
					<xsl:for-each select="clients/entry[code/@handle=$client]">
						<a href="{$root}/{$current-page}/{code/@handle}/">
							<xsl:value-of select="code"/>
						</a>
					</xsl:for-each>
				</xsl:if>
			</p>
		</div>
	</div>
	<div class="box">
		<xsl:choose>
			<xsl:when test="not($client)">
				<div id="content" class="content-1col">
					<div class="body">
						<h2><a href="{$root}/{$current-page}/"><xsl:value-of select="$page-title"/></a></h2>
						<table class="client-list">
							<thead>
								<tr>
									<th>Code</th>
									<th>Client Name</th>
									<th>Website</th>
									<th>Contact</th>
									<th>Phone</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="clients/entry">
									<xsl:sort select="@handle"/>
									<tr>
										<td class="link">
											<a href="{$root}/projects/{code/@handle}/" title="View projects for {name}">
												<xsl:value-of select="code"/>
											</a>
										</td>
										<td class="link">
											<a href="{$root}/clients/{code/@handle}/" title="View details for {name}">
												<xsl:value-of select="name"/>
											</a>
										</td>
										<xsl:choose>
											<xsl:when test="website-url">
												<td class="link">
													<a href="http://{website-url}" title="View website: {website-url}">
														<xsl:value-of select="website-url"/>
													</a>
												</td>
											</xsl:when>
											<xsl:otherwise><td></td></xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="primary-contact">
												<xsl:choose>
													<xsl:when test="email">
														<td class="link">
															<a href="mailto:{email}" title="Send email to {email}">
																<xsl:value-of select="primary-contact"/>
															</a>
														</td>
													</xsl:when>
													<xsl:otherwise>
														<td><xsl:value-of select="primary-contact"/></td>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise><td></td></xsl:otherwise>
										</xsl:choose>
										<td>
											<xsl:value-of select="phone"/>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="7" class="admin-links">
										<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=1">
											New Client
										</a>
										| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=1">
											List Clients
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
						</h2>
						<div class="colA">
							<div id="entries">
								<div class="entry">
									<xsl:for-each select="clients/entry[code/@handle=$client]">
										<p class="entry-data"><xsl:value-of select="client-code"/></p>
										<div class="entry-body">
											<h2>
												<a href="{$root}/clients/{code/@handle}/">
													<xsl:value-of select="name"/>
												</a>
											</h2>
											<xsl:if test="client-description">
												<xsl:copy-of select="client-description"/>
											</xsl:if>
											<xsl:if test="type">
												<p class="entry-info"><span>Type </span>
													<xsl:value-of select="type"/>
												</p>
											</xsl:if>
											<xsl:if test="primary-contact">
												<p class="entry-info">
													<span>Main Contact </span>
													<xsl:choose>
														<xsl:when test="email and not(job-title)">
															<a href="mailto:{email}" title="Send email to {email}">
																<xsl:value-of select="primary-contact"/>
															</a>
														</xsl:when>
														<xsl:when test="email and (job-title)">
															<a href="mailto:{email}" title="Send email to {email}">
																<xsl:value-of select="primary-contact"/>
															</a>
															<xsl:text> | </xsl:text>
															<xsl:value-of select="job-title"/>
														</xsl:when>
														<xsl:when test="not(email) and job-title">
															<xsl:value-of select="primary-contact"/>
															<xsl:text> | </xsl:text>
															<xsl:value-of select="job-title"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="primary-contact"/>
														</xsl:otherwise>
													</xsl:choose>
												</p>
											</xsl:if>
											<xsl:if test="email">
												<p class="entry-info">
													<span>Email </span>
													<a href="mailto:{email}" title="Send email to {email}">
														<xsl:value-of select="email"/>
													</a>
												</p>
											</xsl:if>
											<xsl:if test="website-url">
												<p class="entry-info">
													<span>Website </span>
													<a href="http://{website-url}" title="View website: {website-url}">
														<xsl:value-of select="website-url"/>
													</a>
												</p>
											</xsl:if>
											<xsl:if test="cell">
												<p class="entry-info"><span>Cell </span><xsl:value-of select="cell"/></p>
											</xsl:if>
											<xsl:if test="phone">
												<p class="entry-info"><span>Phone </span><xsl:value-of select="phone"/></p>
											</xsl:if>
											<xsl:if test="fax">
												<p class="entry-info"><span>Fax </span><xsl:value-of select="fax"/></p>
											</xsl:if>
											<xsl:if test="address">
												<p class="entry-info"><span>Address </span>
													<xsl:value-of select="address"/>
												</p>
											</xsl:if>
											<xsl:if test="city">
												<p class="entry-info"><span>City </span>
													<xsl:value-of select="city"/>
													<xsl:text> </xsl:text>
													<xsl:value-of select="province"/>
													<xsl:text> </xsl:text>
													<xsl:value-of select="postal-code"/>
												</p>
											</xsl:if>
											<xsl:if test="$logged-in='true'">
												<p class="entry-info"><span>Symphony </span>
													<a href="{$root}/symphony/?page=/publish/section/edit/&amp;_sid=1&amp;id={@id}">
														Edit Client
													</a>
													| <a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=1">
														Create New
													</a>
													| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=1">
														List Clients
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
								<h3>Client List</h3>
								<p class="admin-links">
									<a href="{$root}/symphony/?page=/publish/section/new/&amp;_sid=1">
										New Client
									</a>
									| <a href="{$root}/symphony/?page=/publish/section/&amp;_sid=1">
										List Clients
									</a>
								</p>
								<ul class="client-list">
									<xsl:for-each select="clients/entry">
										<xsl:sort select="@handle"/>
										<li><a href="{$root}/{$current-page}/{code/@handle}/"><xsl:value-of select="name"/></a></li>
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

</xsl:stylesheet>