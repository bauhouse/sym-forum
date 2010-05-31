<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/forum-master.xsl"/>
<xsl:import href="../utilities/forum-tools.xsl"/>
<xsl:import href="../utilities/time-ago.xsl"/>
<xsl:import href="../utilities/pagination.xsl"/>

<xsl:param name="url-query"/>

<xsl:template match="data">
	<h2>Discussions</h2>
	<h3>All Discussions</h3>
	<table id="discussions" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th class="topic">Topic</th>
				<th class="replies">Replies</th>
				<th class="last-active">Last Active</th>
				<th class="last-post">Last Post</th>
			</tr>
		</thead>
		<tbody>
			<xsl:apply-templates select="forum-discussions/entry"/>
			<xsl:apply-templates select="forum-discussions/error"/>
		</tbody>
	</table>
	<xsl:call-template name="pagination">
	    <xsl:with-param name="pagination-element" select="forum-discussions/pagination" />
	    <xsl:with-param name="display-number" select="'7'" />
	    <xsl:with-param name="url" select="concat($root, '/forum/$/')" />
	</xsl:call-template>
</xsl:template>

<xsl:template match="data[search-comments/query-string]">
	<h2 class="heading">Search Result for &#8220;<xsl:value-of select="search-comments/query-string"/>&#8221;</h2>
	<table id="discussions" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th class="topic">Detail</th>
				<th class="member">Member</th>
				<th class="date">Date</th>	
			</tr>
		</thead>
		<tbody>
			<xsl:apply-templates select="search-comments/entry"/>
			<xsl:apply-templates select="search-comments/error"/>
		</tbody>
	</table>
	<xsl:call-template name="pagination">
	    <xsl:with-param name="pagination-element" select="search-comments/pagination" />
	    <xsl:with-param name="display-number" select="'7'" />
	    <xsl:with-param name="url">
	    	<xsl:value-of select="$root"/>
	    	<xsl:text>/forum/?query=</xsl:text>
	    	<xsl:value-of select="search-comments/query-string/@encoded"/> 
	    	<xsl:text>&amp;pg=$</xsl:text>
	    </xsl:with-param>
	</xsl:call-template>
</xsl:template>

<!-- Lookup table to determine discussions have been read by member -->
<xsl:key name="read-discussions" match="forum-read-discussions/discussion" use="@id"/>

<!-- Discussions entry template -->
<xsl:template match="forum-discussions/entry">

	<!-- -1 to offset the first comment since it's a 'discussion' -->
	<xsl:variable name="total-replies" select="@comments - 1"/>

	<xsl:variable name="read-discussions" select="key('read-discussions', @id)"/>

	<xsl:variable name="read-replies" select="$read-discussions/@comments - 1"/>

	<!-- Get the difference between the read comments and the total comments in a discussion -->
	<xsl:variable name="new-comments">
		<xsl:choose>
			<xsl:when test="$read-replies &lt; $total-replies">
				<xsl:value-of select="$total-replies - $read-replies"/>
			</xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<!-- Different status types for a discussion -->
	<xsl:variable name="raw-status">
		<xsl:text> discussion </xsl:text>
		<xsl:if test="position() mod 2 = 0"> alternate </xsl:if>
		<xsl:if test="pinned = 'Yes'"> sticky </xsl:if>
		<xsl:if test="closed = 'Yes'"> closed </xsl:if>
		<xsl:if test="$logged-in = 'true' and ($new-comments &gt; 0 or string($read-replies) = 'NaN')"> unread </xsl:if>
		<xsl:if test="position() = last()"> last </xsl:if>
	</xsl:variable>

	<!-- Clean up the redundant spaces -->
	<xsl:variable name="status" select="normalize-space($raw-status)"/>

	<xsl:variable name="last-comment-page" select="1 + floor($total-replies div 20)"/>

	<xsl:variable name="next-unread-comment-page" select="1 + floor($read-discussions/@comments div 20)"/>

	<!-- +1 for main discussion offset and +1 for next comment -->
	<xsl:variable name="next-unread-comment" select="$read-replies + 2"/>

	<tr id="discussion-{@id}" class="{$status}">
		<td class="topic">
			<xsl:call-template name="tagify">
				<xsl:with-param name="string" select="topic"/>
				<xsl:with-param name="forum-id" select="@id"/>
			</xsl:call-template>
			<xsl:if test="$new-comments &gt; 0">
				<a href="{$root}/forum/discussions/{@id}/{$next-unread-comment-page}/#position-{$next-unread-comment}">
					<span class="new-comments"><xsl:value-of select="concat($new-comments, ' new')"/></span>
				</a>
			</xsl:if>
		</td>
		<td class="replies"><xsl:value-of select="$total-replies"/></td>
		<td class="last-active">
			<xsl:call-template name="time-ago">
				<xsl:with-param name="date" select="last-active"/>
			</xsl:call-template>
		</td>
		<td class="last-post">
			<a href="{$root}/forum/discussions/{@id}/{$last-comment-page}/#position-{@comments}">
				<xsl:value-of select="last-post"/>
			</a>
		</td>
	</tr>
</xsl:template>

<xsl:template match="search-comments/entry">
	<tr>
		<xsl:if test="position() = last()">
			<xsl:attribute name="class">last</xsl:attribute>
		</xsl:if>
		<td class="detail">
			<xsl:call-template name="tagify">
				<xsl:with-param name="string" select="topic"/>
				<xsl:with-param name="forum-id" select="@discussion-id"/>
			</xsl:call-template>
			<p>
				<xsl:copy-of select="comment/p[1]//text()"/>
				<xsl:if test="comment/*[2]"> &#8230;</xsl:if>
			</p>
		</td>
		<td class="member">
			<a href="{$root}/members/{member}/">
				<xsl:value-of select="member"/>
			</a>
		</td>
		<td class="date">
			<xsl:call-template name="time-ago">
				<xsl:with-param name="date" select="date"/>
			</xsl:call-template>
		</td>
	</tr>
</xsl:template>

<xsl:template match="error">
	<tr class="last">
		<td colspan="3">No records found</td>
	</tr>
</xsl:template>


<xsl:template match="data" mode="old">
	<xsl:param name="logged-in" select="events/user/@logged-in"/>
	<xsl:param name="current-section">
		<xsl:choose>
			<xsl:when test="not($section)">all</xsl:when>
			<xsl:otherwise><xsl:value-of select="sections/entry/fields/title/@handle[.=$section]"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<div id="forum-panel">
		<div class="body lists">
			<h2>Forum</h2>
			<h3>Sections</h3>
			<ul class="categories">
				<li><a href="{$root}/forum/">All Sections</a></li>
				<xsl:for-each select="sections/entry[fields/menu/@handle='content']">
					<li><a href="{$root}/forum/{@handle}/"><xsl:value-of select="fields/title"/></a></li>
				</xsl:for-each>
			</ul>
			<h3>Categories</h3>
			<ul class="categories">
				<xsl:for-each select="categories/entry">
					<li><a href="{$root}/forum/category/{@handle}/"><xsl:value-of select="fields/title"/></a></li>
				</xsl:for-each>
			</ul>
			<h3>Members</h3>
			<ul class="links">
				<xsl:choose>
					<xsl:when test="$logged-in='true'">
						<li>Signed in as <xsl:value-of select="//events/user/username"/></li>
						<li><a href="{$root}/forum/post/">Start a New Discussion</a></li>
						<li><a href="{$root}/symphony/?page=/logout/">Logout</a></li>
					</xsl:when>
					<xsl:otherwise>
						<li><a href="{$root}/login/">Login</a></li>
					</xsl:otherwise>
				</xsl:choose>
			</ul>
		</div>
	</div>
	<div id="forum-content">
		<div class="body">
			<xsl:choose>
				<xsl:when test="(events/user[@logged-in='true'])">
					<xsl:for-each select="events/user[@logged-in='true']">
						<h2>Start a Discussion</h2>
						<xsl:if test="//events/front-end-entry or //events/author-registration">
							<div id="messages">
								<xsl:if test="//events/front-end-entry/@success='false' or //events/author-registration/@success='false'">
									<h3>Errors were encountered</h3>
									<xsl:choose>
										<xsl:when test="//notices/missing or //notices/invalid or //notices/notice">
											<xsl:if test="//notices/missing">
												<h4>You did not fill the following required fields</h4>
												<ul>
												<xsl:for-each select="//notices/missing">
													<li><xsl:value-of select="." /></li>
												</xsl:for-each>
												</ul>							
											</xsl:if>
											<xsl:if test="//events/front-end-entry/notices/invalid">
												<h4>The information you entered into the following fields was invalid</h4>
												<ul>
												<xsl:for-each select="//events/front-end-entry/notices/invalid">
													<li><xsl:value-of select="." /></li>
												</xsl:for-each>
												</ul>							
											</xsl:if>
											<xsl:if test="//notices/notice">
												<h4>The following errors where encountered while attempting to post your comment</h4>
												<ul>
												<xsl:for-each select="//notices/notice">
													<li><xsl:value-of select="." /></li>
												</xsl:for-each>
												</ul>							
											</xsl:if>
										</xsl:when>
										<xsl:otherwise>
											<h4>An unknown error occurred while attempting to post your comment. Please contact the webhost</h4>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:if>
								<xsl:if test="//events/front-end-entry/@success='true'">
									<h3>You have successfully added a new forum discussion</h3>
								</xsl:if>
							</div>
						</xsl:if>		
						<form action="" method="POST">
							<fieldset>
								<input type="hidden" name="fields[username]" class="text" value="{username}" />
								<label class="forum-section">				
									Section
									<select name="fields[section]" class="text" id="forum-section"
										   value="{//events/front-end-entry/cookie/section}">
										<options>
											<xsl:for-each select="/data/sections/entry[fields/menu/@handle='content']">
												<option value="{fields/title}"><xsl:value-of select="fields/title"/></option>
											</xsl:for-each>
										</options>
									</select>
								</label>
								<label class="forum-category">				
									Category
									<select name="fields[category]" class="text" id="forum-category"
										   value="{//events/front-end-entry/cookie/category}">
										<options>
											<option value="General">General</option>
											<xsl:for-each select="/data/categories/entry">
												<option value="{fields/title}"><xsl:value-of select="fields/title"/></option>
											</xsl:for-each>
										</options>
									</select>
								</label>
								<label class="forum-topic">				
									Topic
									<input name="fields[topic]" class="text" id="forum-topic"
										   value="{//events/front-end-entry/cookie/topic}" />
								</label>
								<label class="forum-comments">				
									Comments
									<textarea 
										name="fields[comments]" 
										id="forum-comments"
										value="{//events/front-end-entry/cookie/comments}"
										rows="10">
									</textarea>
								</label>
							</fieldset>
							<input type="submit" class="submit" name="action[save]" value="Start Your Discussion" />
					 
							<!-- ENTRY CREATION CONFIGURATION -->
							<input type="hidden" name="notify" value="" />
							<input type="hidden" name="section-id" value="7" />
					
						</form>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<h2>Member Login</h2>
					<h3>Login Required</h3>
					<p>You will require a user name and password to access the <a href="{$root}/forum/">Members Forum</a> and to download resources. Please login.</p>
					<form action="{$current-url}" method="post">
						<fieldset>
							<label>Username <input name="username" class="text"/></label>
							<label>Password <input name="password" class="text" type="password" /></label>
							<input name="redirect" type="hidden" value="{$root}/"/>
							<input id="submit" type="submit" name="member-action[login]" value="Log In" class="button"/>
						</fieldset>
					</form>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>