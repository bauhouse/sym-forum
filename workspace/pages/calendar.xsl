<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/calendar-master.xsl"/>

<xsl:param name="calendar-xml" select="document('../xml/calendar.xml')"/>
<xsl:param name="holidays-xml" select="document('../xml/holidays.xml')"/>

<xsl:template match="data">	
	<xsl:param name="is-today">
		<xsl:choose>
			<xsl:when test="not($year) or $year='today' or $today = concat($year,'-',$month,'-',$day)">1</xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="not-month">
		<xsl:choose>
			<xsl:when test="not($month)">1</xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="not-day">
		<xsl:choose>
			<xsl:when test="not($day)">1</xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="date">
		<xsl:choose>
			<xsl:when test="not($year) or $year='today'">
				<xsl:value-of select="$today"/>
			</xsl:when>
			<xsl:when test="$year and not($month)">
				<xsl:value-of select="concat($year,'-01-00')"/>
			</xsl:when>
			<xsl:when test="$year and $month and not($day)">
				<xsl:value-of select="concat($year,'-',$month,'-00')"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day">
				<xsl:value-of select="concat(format-number($year,'0000'),'-',format-number($month,'00'),'-',format-number($day,'00'))"/>
			</xsl:when>
		</xsl:choose>
	</xsl:param>
    <xsl:param name="day">
    	<xsl:choose>
    		<xsl:when test="not($year) or $year='today'">
    			<xsl:value-of select="substring($date,9,2)"/>
    		</xsl:when>
    		<xsl:otherwise>
    			<xsl:value-of select="format-number($day,'00')"/>
    		</xsl:otherwise>
    	</xsl:choose>
    </xsl:param>
    <xsl:param name="month">
    	<xsl:choose>
    		<xsl:when test="not($year) or $year='today'">
    			<xsl:value-of select="substring($date,6,2)"/>
    		</xsl:when>
    		<xsl:when test="not($month) and $year!='today'">
    			<xsl:value-of select="'01'"/>
    		</xsl:when>
    		<xsl:otherwise>
    			<xsl:value-of select="format-number($month,'00')"/>
    		</xsl:otherwise>
    	</xsl:choose>
    </xsl:param>
    <xsl:param name="year">
    	<xsl:choose>
    		<xsl:when test="not($year) or $year='today'">
    			<xsl:value-of select="substring($date,1,4)"/>
    		</xsl:when>
    		<xsl:otherwise>
    			<xsl:value-of select="format-number($year,'0000')"/>
    		</xsl:otherwise>
    	</xsl:choose>
    </xsl:param>
	<xsl:param name="month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="next-month-days">
		<xsl:call-template name="next-month-days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="previous-month-days">
		<xsl:call-template name="previous-month-days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="previous-week">
		<xsl:call-template name="previous-week">
			<xsl:with-param name="date" select="concat($year,'-',$month,'-',$day)"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="next-week">
		<xsl:call-template name="next-week">
			<xsl:with-param name="date" select="concat($year,'-',$month,'-',$day)"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="current-date-url">
		<xsl:choose>
			<xsl:when test="$is-today = 1">
				<xsl:value-of select="concat($year,'/',$month,'/',$day,'/')"/>
			</xsl:when>
			<xsl:when test="$year and $not-month = 1">
				<xsl:value-of select="concat($year,'/')"/>
			</xsl:when>
			<xsl:when test="$year and $month and $not-day = 1">
				<xsl:value-of select="concat($year,'/',$month,'/')"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day = 0">
				<xsl:value-of select="concat($year,'/',$month,'/')"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day &gt; 0">
				<xsl:value-of select="concat($year,'/',$month,'/',$day,'/')"/>
			</xsl:when>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="previous-week-url">
		<xsl:value-of select="concat(substring($previous-week,1,4),'/',substring($previous-week,6,2),'/',substring($previous-week,9,2))"/>
	</xsl:param>
	<xsl:param name="next-week-url">
		<xsl:value-of select="concat(substring($next-week,1,4),'/',substring($next-week,6,2),'/',substring($next-week,9,2))"/>
	</xsl:param>
	<xsl:param name="previous-year-url">
		<xsl:choose>
			<xsl:when test="$is-today = 1">
				<xsl:value-of select="concat($year - 1,'/',$month,'/',substring($date,9,2))"/>
			</xsl:when>
			<xsl:when test="$year and $not-month = 1">
				<xsl:value-of select="$year - 1"/>
			</xsl:when>
			<xsl:when test="$year and $month and $not-day = 1">
				<xsl:value-of select="concat($year - 1,'/',$month)"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day and $day = 0">
				<xsl:value-of select="concat($year - 1,'/',$month)"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day and $day > 0">
				<xsl:value-of select="concat($year - 1,'/',$month,'/',$day)"/>
			</xsl:when>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="next-year-url">
		<xsl:choose>
			<xsl:when test="$is-today = 1">
				<xsl:value-of select="concat($year + 1,'/',$month,'/',substring($date,9,2))"/>
			</xsl:when>
			<xsl:when test="$year and $not-month = 1">
				<xsl:value-of select="$year + 1"/>
			</xsl:when>
			<xsl:when test="$year and $month and $not-day = 1">
				<xsl:value-of select="concat($year + 1,'/',$month)"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day and $day = 0">
				<xsl:value-of select="concat($year + 1,'/',$month)"/>
			</xsl:when>
			<xsl:when test="$year and $month and $day and $day > 0">
				<xsl:value-of select="concat($year + 1,'/',$month,'/',$day)"/>
			</xsl:when>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="previous-month-url">
		<xsl:choose>
			<xsl:when test="$month - 1 &lt; 1">
				<xsl:choose>
					<xsl:when test="$is-today = 1">
						<xsl:value-of select="concat($year - 1,'/12/',substring($date,9,2))"/>
					</xsl:when>
					<xsl:when test="($year and $not-month = 1) or ($year and $month and $not-day = 1)">
						<xsl:value-of select="concat($year - 1,'/12')"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day">
						<xsl:value-of select="concat($year - 1,'/12/',$day)"/>
					</xsl:when>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="$is-today = 1">
						<xsl:value-of select="concat($year,'/',format-number($month - 1,'00'),'/',substring($date,9,2))"/>
					</xsl:when>
					<xsl:when test="$year and $not-month = 1">
						<xsl:value-of select="concat($year,'/',format-number($month - 1,'00'))"/>
					</xsl:when>
					<xsl:when test="$year and $month and $not-day = 1">
						<xsl:value-of select="concat($year,'/',format-number($month - 1,'00'))"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day = 0">
						<xsl:value-of select="concat($year,'/',format-number($month - 1,'00'))"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day &gt; 0 and $day &lt;= $previous-month-days">
						<xsl:value-of select="concat($year,'/',format-number($month - 1,'00'),'/',$day)"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day &gt; $previous-month-days">
						<xsl:value-of select="concat($year,'/',format-number($month - 1,'00'),'/',$previous-month-days)"/>
					</xsl:when>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="next-month-url">
		<xsl:choose>
			<xsl:when test="$month + 1 &gt; 12">
				<xsl:choose>
					<xsl:when test="$is-today = 1">
						<xsl:value-of select="concat($year + 1,'/01/',substring($date,9,2))"/>
					</xsl:when>
					<xsl:when test="($year and $not-month = 1) or ($year and $month and $not-day = 1)">
						<xsl:value-of select="concat($year + 1,'/01')"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day">
						<xsl:value-of select="concat($year + 1,'/01/',$day)"/>
					</xsl:when>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="$is-today = 1">
						<xsl:value-of select="concat($year,'/',format-number($month + 1,'00'),'/',substring($date,9,2))"/>
					</xsl:when>
					<xsl:when test="$year and $not-month = 1">
						<xsl:value-of select="concat($year,'/',format-number($month + 1,'00'))"/>
					</xsl:when>
					<xsl:when test="$year and $month and $not-day = 1">
						<xsl:value-of select="concat($year,'/',format-number($month + 1,'00'))"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day = 0">
						<xsl:value-of select="concat($year,'/',format-number($month + 1,'00'))"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day &gt; 0 and $day &lt;= $next-month-days">
						<xsl:value-of select="concat($year,'/',format-number($month + 1,'00'),'/',$day)"/>
					</xsl:when>
					<xsl:when test="$year and $month and $day &gt; $next-month-days">
						<xsl:value-of select="concat($year,'/',format-number($month + 1,'00'),'/',$next-month-days)"/>
					</xsl:when>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="previous-month-date">
		<xsl:choose>
			<xsl:when test="$month - 1 &lt; 1">
				<xsl:value-of select="concat($year - 1,'-12-00')"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat($year,'-',format-number($month - 1,'00'),'-00')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="next-month-date">
		<xsl:choose>
			<xsl:when test="$month + 1 &gt; 12">
				<xsl:value-of select="concat($year + 1,'-01-00')"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat($year,'-',format-number($month + 1,'00'),'-00')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<div class="body">
		<xsl:choose>
			<xsl:when test="$year = 'NaN' or $year &lt; 1001 or $year &gt; 3000 or $month &gt; 12 or $month &lt; 1 or $day &gt; 31 or $day &lt; 1">
				<h2>Calendar</h2>
				<h4>Not a Valid Date</h4>
				<p>Please enter a date in the address fields in the form of /calendar/yyyy/mm/dd/ to view a calendar. Or you can find out what the date is <a href="{$root}/calendar/today/">today</a>. (This calendar does not calculate dates previous to 1,001 AD or greater than 3,000 AD.)</p>
			</xsl:when>
			<xsl:otherwise>
				<div class="calendar current-month">
					<div class="calendar-head">
						<ul class="calendar-menu">
							<li><a href="{$root}/calendar/{$previous-month-url}/">Previous Month</a></li>
							<li><a href="{$root}/calendar/{$next-month-url}/">Next Month</a></li>
							<li><a href="{$root}/calendar/{$previous-year-url}/">Previous Year</a></li>
							<li><a href="{$root}/calendar/{$next-year-url}/">Next Year</a></li>
							<li>
								<xsl:if test="$is-today = 1">
									<xsl:attribute name="class">
										<xsl:value-of select="'current'"/>
									</xsl:attribute>
								</xsl:if>
								<a href="{$root}/calendar/today/">Today</a>
							</li>
							<li><a href="{$root}/calendar/day/{$current-date-url}">Day</a></li>
							<li><a href="{$root}/calendar/week/{$current-date-url}">Week</a></li>
							<li class="current"><a href="{$root}/calendar/{$current-date-url}">Month</a></li>
							<li><a href="{$root}/calendar/year/{$current-date-url}">Year</a></li>
						</ul>
						<h2>
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="$date"/>
								<xsl:with-param name="format" select="'M Y'"/>
							</xsl:call-template>
						</h2>
					</div>
					<xsl:call-template name="calendar-month">
						<xsl:with-param name="year" select="substring($date,1,4)"/>
						<xsl:with-param name="month" select="substring($date,6,2)"/>
						<xsl:with-param name="day" select="substring($date,9,2)"/>
					</xsl:call-template>
				</div>
				<div class="calendar previous-month">
					<div class="calendar-head">
						<h3>
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="$previous-month-date"/>
								<xsl:with-param name="format" select="'M Y'"/>
							</xsl:call-template>
						</h3>
					</div>
					<xsl:call-template name="calendar-month">
						<xsl:with-param name="year" select="substring($previous-month-date,1,4)"/>
						<xsl:with-param name="month" select="substring($previous-month-date,6,2)"/>
						<xsl:with-param name="day" select="substring($previous-month-date,9,2)"/>
						<xsl:with-param name="weekday-format" select="'short'"/>
					</xsl:call-template>
				</div>
				<div class="calendar next-month">
					<div class="calendar-head">
						<h3>
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="$next-month-date"/>
								<xsl:with-param name="format" select="'M Y'"/>
							</xsl:call-template>
						</h3>
					</div>
					<xsl:call-template name="calendar-month">
						<xsl:with-param name="year" select="substring($next-month-date,1,4)"/>
						<xsl:with-param name="month" select="substring($next-month-date,6,2)"/>
						<xsl:with-param name="day" select="substring($next-month-date,9,2)"/>
						<xsl:with-param name="weekday-format" select="'short'"/>
					</xsl:call-template>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</div>
</xsl:template>

<xsl:template name="calendar-month">
    <xsl:param name="year" select="$year"/>
    <xsl:param name="month" select="$month"/>
    <xsl:param name="day" select="$day"/>
    <xsl:param name="weekday-format"/>
	<table summary="calendar">
		<thead>
			<tr>
				<xsl:choose>
					<xsl:when test="$weekday-format='one-letter'">
						<th>S</th>
						<th>M</th>
						<th>T</th>
						<th>W</th>
						<th>T</th>
						<th>F</th>
						<th>S</th>
					</xsl:when>
					<xsl:when test="$weekday-format='short'">
						<th>Sun</th>
						<th>Mon</th>
						<th>Tue</th>
						<th>Wed</th>
						<th>Thu</th>
						<th>Fri</th>
						<th>Sat</th>
					</xsl:when>
					<xsl:otherwise>
						<th>Sunday</th>
						<th>Monday</th>
						<th>Tuesday</th>
						<th>Wednesday</th>
						<th>Thursday</th>
						<th>Friday</th>
						<th>Saturday</th>
					</xsl:otherwise>
				</xsl:choose>
			</tr>
		</thead>
		<tbody>
			<xsl:call-template name="month">
				<xsl:with-param name="year" select="$year"/>
				<xsl:with-param name="month" select="$month"/>
				<xsl:with-param name="day" select="$day"/>
			</xsl:call-template>
		</tbody>
	</table>
</xsl:template>

<!-- Called only once for root -->
<!-- Uses recursion with index + 7 for each week -->
<xsl:template name="month">
	<xsl:param name="year" select="'2007'"/>
	<xsl:param name="month" select="'07'"/>
	<xsl:param name="day" select="'24'"/>
    <xsl:param name="date" select="concat($year,'-',$month,'-',$day)"/>
	<xsl:param name="first-day-of-the-month" select="concat($year,'-',$month,'-01')"/>
	<xsl:param name="leap-year">
		<xsl:call-template name="is-leap-year">
			<xsl:with-param name="year" select="$year"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="first-day">
		<xsl:call-template name="calculate-day-of-the-week">
			<xsl:with-param name="date" select="$first-day-of-the-month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="month" select="$month"/>
			<xsl:with-param name="leap-year" select="$leap-year"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="start" select="$first-day"/>
	<xsl:param name="count" select="$month-days"/>
	<xsl:param name="total" select="$start + $count - 1"/>
	<xsl:param name="overflow" select="$total mod 7"/>
	<xsl:param name="nelements">
		<xsl:choose>
			<xsl:when test="$overflow &gt; 0"><xsl:value-of select="$total + 7 - $overflow"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="$total"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="index" select="1"/>

	<xsl:if test="$index &lt; $nelements">
		<xsl:call-template name="week">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
			<xsl:with-param name="day" select="$day"/>
			<xsl:with-param name="index" select="$index"/>
		</xsl:call-template>
		<xsl:call-template name="month">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
			<xsl:with-param name="day" select="$day"/>
			<xsl:with-param name="index" select="$index + 7"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>

<!-- Called repeatedly by month for each week -->
<xsl:template name="week">
	<xsl:param name="year" select="'2007'"/>
	<xsl:param name="month" select="'07'"/>
	<xsl:param name="day" select="'24'"/>
    <xsl:param name="index" select="1"/>
    <tr>
        <xsl:call-template name="days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
			<xsl:with-param name="day" select="$day"/>
            <xsl:with-param name="index" select="$index"/>
            <xsl:with-param name="counter" select="$index + 6"/>
        </xsl:call-template>
    </tr>
</xsl:template>

<!-- Called by week -->
<!-- Uses recursion with index + 1 for each day-of-week -->
<xsl:template name="days">
	<xsl:param name="year" select="'2007'"/>
	<xsl:param name="month" select="'07'"/>
	<xsl:param name="day" select="'24'"/>
	<xsl:param name="first-day-of-the-month" select="concat($year,'-',$month,'-01')"/>
	<xsl:param name="first-day">
		<xsl:call-template name="calculate-day-of-the-week">
			<xsl:with-param name="date" select="$first-day-of-the-month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="start" select="$first-day"/>
	<xsl:param name="count" select="$month-days"/>
	<xsl:param name="total" select="$start + $count - 1"/>
	<xsl:param name="overflow" select="$total mod 7"/>
	<xsl:param name="nelements">
		<xsl:choose>
			<xsl:when test="$overflow &gt; 0"><xsl:value-of select="$total + 7 - $overflow"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="$total"/></xsl:otherwise>
		</xsl:choose>
	</xsl:param>

	<xsl:param name="previous-month">
		<xsl:call-template name="previous-month">
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="previous-month-year">
		<xsl:call-template name="previous-month-year">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="next-month">
		<xsl:call-template name="next-month">
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="next-month-year">
		<xsl:call-template name="next-month-year">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="previous-month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$previous-month"/>
		</xsl:call-template>
	</xsl:param>

    <xsl:param name="index" select="1"/>
    <xsl:param name="counter" select="1"/>
    <xsl:param name="day-int" select="$index - $start + 1"/>
    <xsl:param name="day-dd" select="format-number($day-int,'00')"/>
    <xsl:param name="previous-day" select="$previous-month-days + $day-int"/>
    <xsl:param name="next-day" select="format-number($day-int - $month-days,'00')"/>
    <xsl:param name="this-date">
    	<xsl:choose>
    		<xsl:when test="$day-int &gt; 0 and $day-int &lt;= $month-days">
    			<xsl:value-of select="concat($year,'-',$month,'-',$day-dd)"/>
    		</xsl:when>
    		<xsl:when test="$day-int &lt; 1">
    			<xsl:value-of select="concat($previous-month-year,'-',$previous-month,'-',$previous-day)"/>
    		</xsl:when>
    		<xsl:when test="$day-int &gt; $month-days">
    			<xsl:value-of select="concat($next-month-year,'-',$next-month,'-',$next-day)"/>
    		</xsl:when>
    	</xsl:choose>
    </xsl:param>
    <xsl:param name="this-year" select="substring($this-date,1,4)"/>
    <xsl:param name="this-month" select="substring($this-date,6,2)"/>
    <xsl:param name="this-day" select="substring($this-date,9,2)"/>
    <xsl:param name="this-day-int" select="format-number($this-day,'0')"/>
    <xsl:param name="this-month-day" select="substring(translate($this-date, '-', ''),5)"/>
	<xsl:param name="is-today">
		<xsl:choose>
			<xsl:when test="$this-date = $today">1</xsl:when>
		</xsl:choose>
	</xsl:param>
	<xsl:param name="is-holiday">
		<xsl:for-each select="$holidays-xml/iCalendar/vcalendar[@x-wr-calname='Holidays']/vevent[substring(dtstart,5) = $this-month-day][not(rrule/item/@class='byday') and rrule/item[@class='freq']='yearly']">
			<xsl:if test="substring(dtstart,5) = $this-month-day">1</xsl:if>
		</xsl:for-each>
	</xsl:param>

	<!-- Define what get's displayed in the calendar cells here -->

    <xsl:choose>

        <!-- Previous Month -->
        <xsl:when test="$index &lt; $start">
            <td class="previous-month-day">
            	<span><a href="{$root}/calendar/{$this-year}/{$this-month}/{$this-day}/"><xsl:value-of select="$this-day-int"/></a></span>
            </td>
        </xsl:when>

        <!-- Next Month -->
        <xsl:when test="$day-int &gt; $count">
            <td class="next-month-day">
            	<span><a href="{$root}/calendar/{$this-year}/{$this-month}/{$this-day}/"><xsl:value-of select="$this-day-int"/></a></span>
            </td>
        </xsl:when>

        <!-- Current Month -->
        <xsl:when test="$index &gt; $start - 1">
            <td>

		        <!-- Selected Day -->
				<xsl:if test="$day-int = $day">
					<xsl:attribute name="class">current</xsl:attribute>
				</xsl:if>

		        <!-- Today -->
				<xsl:if test="$is-today = 1">
					<xsl:attribute name="id">today</xsl:attribute>
				</xsl:if>
            	<span><a href="{$root}/calendar/{$year}/{$month}/{$day-dd}/"><xsl:value-of select="$day-int"/></a></span>

		        <!-- Holidays -->
            	<xsl:if test="$is-holiday = 1">
            		<p class="holiday"><xsl:value-of select="$holidays-xml/iCalendar/vcalendar[@x-wr-calname='Holidays']/vevent[substring(dtstart,5) = $this-month-day]/summary"/></p>
            	</xsl:if>
            </td>
        </xsl:when>
    </xsl:choose>
    <xsl:if test="$counter &gt; $index">
        <xsl:call-template name="days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
			<xsl:with-param name="day" select="$day"/>
            <xsl:with-param name="index" select="$index + 1"/>
            <xsl:with-param name="counter" select="$counter"/>
        </xsl:call-template>
    </xsl:if>
</xsl:template>

<xsl:template name="month-days">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:param name="month-int" select="format-number($month,'0')"/>
	<xsl:param name="leap-year">
		<xsl:call-template name="is-leap-year">
			<xsl:with-param name="year" select="$year"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:choose>
		<xsl:when test="$month-int!=2">
			<xsl:value-of select="$calendar-xml/calendar/year/month[@value=$month-int]/@days"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:choose>
				<xsl:when test="$leap-year!=1">
					<xsl:value-of select="$calendar-xml/calendar/year/month[@value=2]/@days"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$calendar-xml/calendar/year/month[@value=2]/@leap-year-days"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="previous-month">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:choose>
		<xsl:when test="$month - 1 &lt; 1">12</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="format-number($month - 1,'00')"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="next-month">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:choose>
		<xsl:when test="$month + 1 &gt; 12">01</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="format-number($month + 1,'00')"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="previous-month-year">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:choose>
		<xsl:when test="$month != 1">
			<xsl:value-of select="$year"/>
		</xsl:when>
		<xsl:when test="$month = 1">
			<xsl:value-of select="$year - 1"/>
		</xsl:when>
		<xsl:otherwise>0</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="next-month-year">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:choose>
		<xsl:when test="$month &lt; 12">
			<xsl:value-of select="$year"/>
		</xsl:when>
		<xsl:when test="$month = 12">
			<xsl:value-of select="$year + 1"/>
		</xsl:when>
		<xsl:otherwise>0</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="previous-week">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:param name="day" select="substring($date,9,2)"/>
	<xsl:param name="previous-month">
		<xsl:call-template name="previous-month">
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="previous-month-year">
		<xsl:call-template name="previous-month-year">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="previous-month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="year" select="$previous-month-year"/>
			<xsl:with-param name="month" select="$previous-month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:choose>
		<xsl:when test="$day - 7 &lt; 1 and $month = 1">
			<xsl:value-of select="concat($previous-month-year,'-',$previous-month,'-',format-number($previous-month-days - (7 - $day),'00'))"/>
		</xsl:when>
		<xsl:when test="$day - 7 &lt; 1 and $month &gt; 1">
			<xsl:value-of select="concat($year,'-',$previous-month,'-',format-number($previous-month-days - (7 - $day),'00'))"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="concat($year,'-',$month,'-',format-number($day - 7,'00'))"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="next-week">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:param name="day" select="substring($date,9,2)"/>
	<xsl:param name="month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="next-month">
		<xsl:call-template name="next-month">
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="next-month-year">
		<xsl:call-template name="next-month-year">
			<xsl:with-param name="year" select="$year"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:choose>
		<xsl:when test="$day + 7 &gt; $month-days">
			<xsl:value-of select="concat($next-month-year,'-',$next-month,'-',format-number($day + 7 - $month-days,'00'))"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="concat($year,'-',$month,'-',format-number($day + 7,'00'))"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="previous-month-days">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:param name="previous-month">
		<xsl:call-template name="previous-month">
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="leap-year">
		<xsl:call-template name="is-leap-year">
			<xsl:with-param name="year" select="$year"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:call-template name="month-days">
		<xsl:with-param name="leap-year" select="$leap-year"/>
		<xsl:with-param name="month" select="$previous-month"/>
	</xsl:call-template>
</xsl:template>

<xsl:template name="next-month-days">
	<xsl:param name="date"/>
	<xsl:param name="year" select="substring($date,1,4)"/>
	<xsl:param name="month" select="substring($date,6,2)"/>
	<xsl:param name="next-month">
		<xsl:call-template name="next-month">
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="leap-year">
		<xsl:call-template name="is-leap-year">
			<xsl:with-param name="year" select="$year"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:call-template name="month-days">
		<xsl:with-param name="leap-year" select="$leap-year"/>
		<xsl:with-param name="month" select="$next-month"/>
	</xsl:call-template>
</xsl:template>

<xsl:template name="week-number">
	<xsl:param name="date" select="$today"/>
	<xsl:param name="year" select="substring($date, 1, 4)" />
	<xsl:param name="leap" select="(not($year mod 4) and $year mod 100) or not($year mod 400)" />
	<xsl:param name="month" select="substring($date, 6, 2)" />
	<xsl:param name="day" select="substring($date, 9, 2)" />
	<xsl:param name="month-days">
		<xsl:call-template name="month-days">
			<xsl:with-param name="leap-year" select="$leap"/>
			<xsl:with-param name="month" select="$month"/>
		</xsl:call-template>
	</xsl:param>
	<xsl:param name="days">
	   <xsl:choose>
		  <xsl:when test="$leap and $month > 2">
			 <xsl:value-of select="$month-days + $day + 1" />
		  </xsl:when>
		  <xsl:otherwise>
			 <xsl:value-of select="$month-days + $day" />
		  </xsl:otherwise>
	   </xsl:choose>
	</xsl:param>
	<xsl:param name="y-1" select="$year - 1" />
	<xsl:param name="day-of-week" 
				  select="(($y-1 + floor($y-1 div 4) -
						   floor($y-1 div 100) + floor($y-1 div 400) +
						   $days) 
						   mod 7) + 1" />
	<xsl:choose>
	   <xsl:when test="($day - $day-of-week) mod 7">
		  <xsl:value-of select="floor(($day - $day-of-week) div 7) + 2" />
	   </xsl:when>
	   <xsl:otherwise>
		  <xsl:value-of select="floor(($day - $day-of-week) div 7) + 1" />
	   </xsl:otherwise>
	</xsl:choose>
</xsl:template>

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

</xsl:stylesheet>