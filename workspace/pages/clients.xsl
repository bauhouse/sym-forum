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
				<xsl:if test="($client)">
					<xsl:text> : </xsl:text>
					<xsl:for-each select="clients/entry[@handle=$client]">
						<a href="{$root}/{$current-page}/{@handle}/">
							<xsl:value-of select="fields/client-code"/>
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
											<a href="{$root}/projects/{@handle}/" title="View projects for {fields/client-name}">
												<xsl:value-of select="fields/client-code"/>
											</a>
										</td>
										<td class="link">
											<a href="{$root}/clients/{@handle}/" title="View details for {fields/client-name}">
												<xsl:value-of select="fields/client-name"/>
											</a>
										</td>
										<xsl:choose>
											<xsl:when test="(fields/website-url)">
												<td class="link">
													<a href="http://{fields/website-url}" title="View website: {fields/website-url}">
														<xsl:value-of select="fields/website-url"/>
													</a>
												</td>
											</xsl:when>
											<xsl:otherwise><td></td></xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="(fields/contact-name)">
												<xsl:choose>
													<xsl:when test="(fields/email)">
														<td class="link">
															<a href="mailto:{fields/email}" title="Send email to {fields/email}">
																<xsl:value-of select="fields/contact-name"/>
															</a>
														</td>
													</xsl:when>
													<xsl:otherwise>
														<td><xsl:value-of select="fields/contact-name"/></td>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise><td></td></xsl:otherwise>
										</xsl:choose>
										<td>
											<xsl:value-of select="fields/phone"/>
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
									<xsl:for-each select="clients/entry[@handle=$client]">
										<p class="entry-data"><xsl:value-of select="fields/client-code"/></p>
										<div class="entry-body">
											<h2>
												<a href="{$root}/clients/{@handle}/">
													<xsl:value-of select="fields/client-name"/>
												</a>
											</h2>
											<xsl:if test="(fields/client-description)">
												<xsl:copy-of select="fields/client-description"/>
											</xsl:if>
											<p class="entry-info"><span>Type </span>
												<xsl:value-of select="fields/client-type"/>
											</p>
											<xsl:if test="(fields/contact-name)">
												<p class="entry-info">
													<span>Main Contact </span>
													<xsl:choose>
														<xsl:when test="(fields/email) and not(fields/job-title)">
															<a href="mailto:{fields/email}" title="Send email to {fields/email}">
																<xsl:value-of select="fields/contact-name"/>
															</a>
														</xsl:when>
														<xsl:when test="(fields/email) and (fields/job-title)">
															<a href="mailto:{fields/email}" title="Send email to {fields/email}">
																<xsl:value-of select="fields/contact-name"/>
															</a>
															<xsl:text> | </xsl:text>
															<xsl:value-of select="fields/job-title"/>
														</xsl:when>
														<xsl:when test="not(fields/email) and (fields/job-title)">
															<xsl:value-of select="fields/contact-name"/>
															<xsl:text> | </xsl:text>
															<xsl:value-of select="fields/job-title"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="fields/contact-name"/>
														</xsl:otherwise>
													</xsl:choose>
												</p>
											</xsl:if>
											<xsl:if test="(fields/email)">
												<p class="entry-info">
													<span>Email </span>
													<a href="mailto:{fields/email}" title="Send email to {fields/email}">
														<xsl:value-of select="fields/email"/>
													</a>
												</p>
											</xsl:if>
											<xsl:if test="(fields/website-url)">
												<p class="entry-info">
													<span>Website </span>
													<a href="http://{fields/website-url}" title="View website: {fields/website-url}">
														<xsl:value-of select="fields/website-url"/>
													</a>
												</p>
											</xsl:if>
											<xsl:if test="(fields/cell)">
												<p class="entry-info"><span>Cell </span><xsl:value-of select="fields/cell"/></p>
											</xsl:if>
											<xsl:if test="(fields/phone)">
												<p class="entry-info"><span>Phone </span><xsl:value-of select="fields/phone"/></p>
											</xsl:if>
											<xsl:if test="(fields/fax)">
												<p class="entry-info"><span>Fax </span><xsl:value-of select="fields/fax"/></p>
											</xsl:if>
											<xsl:if test="(fields/address)">
												<p class="entry-info"><span>Address </span>
													<xsl:value-of select="fields/address"/>
												</p>
											</xsl:if>
											<xsl:if test="(fields/city)">
												<p class="entry-info"><span>City </span>
													<xsl:value-of select="fields/city"/>
													<xsl:text> </xsl:text>
													<xsl:value-of select="fields/province"/>
													<xsl:text> </xsl:text>
													<xsl:value-of select="fields/postal-code"/>
												</p>
											</xsl:if>
											<xsl:if test="$owner-logged-in='true' or $admin-logged-in='true'">
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
										<li><a href="{$root}/{$current-page}/{@handle}/"><xsl:value-of select="fields/client-name"/></a></li>
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