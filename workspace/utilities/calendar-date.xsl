<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="calculate-day-of-the-week">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date, 1, 4)"/>
	<xsl:param name="month" select="substring($date, 6, 2)"/>
	<xsl:param name="day" select="substring($date, 9, 2)"/>
	<xsl:variable name="a" select="floor((14 - $month) div 12)"/>
	<xsl:variable name="y" select="$year - $a"/>
	<xsl:variable name="m" select="$month + 12 * $a - 2"/>
	<xsl:value-of select="(($day + $y + floor($y div 4) - floor($y div 100) + floor($y div 400) + floor((31 * $m) div 12)) mod 7) + 1"/>
</xsl:template>

<xsl:template name="get-day-of-the-week-name">
	<xsl:param name="date"/>
	<xsl:param name="day-of-the-week">
		<xsl:call-template name="calculate-day-of-the-week">
			<xsl:with-param name="date" select="$date"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:choose>
		<xsl:when test="$day-of-the-week = 1">Sunday</xsl:when>
		<xsl:when test="$day-of-the-week = 2">Monday</xsl:when>
		<xsl:when test="$day-of-the-week = 3">Tuesday</xsl:when>
		<xsl:when test="$day-of-the-week = 4">Wednesday</xsl:when>
		<xsl:when test="$day-of-the-week = 5">Thursday</xsl:when>
		<xsl:when test="$day-of-the-week = 6">Friday</xsl:when>
		<xsl:when test="$day-of-the-week = 7">Saturday</xsl:when>
		<xsl:otherwise>error: <xsl:value-of select="$day-of-the-week"/></xsl:otherwise>
	</xsl:choose>
</xsl:template>

<!-- Simply give this template 2 dates, original-date and new-date. It will find the days in between -->
<xsl:template name="calc-days-left">
	<xsl:param name="original-date"/>
	<xsl:param name="new-date"/>

	<xsl:variable name="then">
		<xsl:call-template name="map-date">
			<xsl:with-param name="date" select="$original-date"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:variable name="now">
		<xsl:call-template name="map-date">
			<xsl:with-param name="date" select="$new-date"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:variable name="year-tally">
		<xsl:call-template name="calc-year-diff">
			<xsl:with-param name="year" select="substring($original-date,1,4)"/>
			<xsl:with-param name="count" select="substring($new-date,1,4) - substring($original-date,1,4)"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:value-of select="($year-tally + $now) - $then"/>
</xsl:template>

<!-- Used by the calc-days-left template -->
<xsl:template name="map-date">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:param name="day" select="substring($date,9,2)"/>

	<xsl:variable name="leap">
		<xsl:call-template name="is-leap-year">
			<xsl:with-param name="year" select="$year"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:choose>
		<xsl:when test="$month = 01"><xsl:value-of select="$day"/></xsl:when>
		<xsl:when test="$month = 02"><xsl:value-of select="31 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 03"><xsl:value-of select="59 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 04"><xsl:value-of select="90 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 05"><xsl:value-of select="120 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 06"><xsl:value-of select="151 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 07"><xsl:value-of select="181 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 08"><xsl:value-of select="212 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 09"><xsl:value-of select="243 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 10"><xsl:value-of select="273 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 11"><xsl:value-of select="304 + $leap + $day"/></xsl:when>
		<xsl:when test="$month = 12"><xsl:value-of select="334 + $leap + $day"/></xsl:when>
	</xsl:choose>
</xsl:template>

<!-- Fnds out if a year is a leap year. If it is, it returns 1. Otherwise, it'll return 0 -->
<xsl:template name="is-leap-year">
	<xsl:param name="year"/>

	<xsl:choose>
		<xsl:when test="$year mod 4 = 0">
			<xsl:choose>
				<xsl:when test="$year mod 400 = 0">1</xsl:when>
				<xsl:when test="$year mod 100 = 0">0</xsl:when>
				<xsl:otherwise>1</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:otherwise>0</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<!-- Used by the calc-days-left template -->
<xsl:template name="calc-year-diff">
	<xsl:param name="year"/>
	<xsl:param name="tally" select="0"/>
	<xsl:param name="count" select="0"/>

	<xsl:variable name="leap">
		<xsl:call-template name="is-leap-year">
			<xsl:with-param name="year" select="$year"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:choose>
		<xsl:when test="$count &gt; 0">
			<xsl:call-template name="calc-year-diff">
				<xsl:with-param name="tally" select="$tally + 365 + $leap"/>
				<xsl:with-param name="year" select="$year + 1"/>
				<xsl:with-param name="count" select="$count - 1"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise><xsl:value-of select="$tally"/></xsl:otherwise>
	</xsl:choose>
</xsl:template>
</xsl:stylesheet>