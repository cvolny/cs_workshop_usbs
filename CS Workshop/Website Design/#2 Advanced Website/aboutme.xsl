<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes" />
	<xsl:template match="/">
		<html>
			<head>
				<title>About Me</title>
			</head>
			<body>
				<xsl:for-each select="person">
					<table>
						<tr>
							<td id="name-label">Name:</td>
							<td class="value" id="name"><xsl:value-of select="name" /></td>
						</tr>
						<tr>
							<td id="age-label">Age:</td>
							<td class="value" id="age"><xsl:value-of select="age" /></td>
						</tr>
						<tr>
							<td id="hometown-label">Hometown:</td>
							<td class="value" id="hometown"><xsl:value-of select="hometown" /></td>
						</tr>
						<tr>
							<td id="subject-label">Favorite Subject:</td>
							<td class="value" id="subject"><xsl:value-of select="favorites/subject" /></td>
						</tr>
						<tr>
							<td id="pizza-label">Favorite Pizza Topping:</td>
							<td class="value" id="pizza"><xsl:value-of select="favorites/pizza" /></td>
						</tr>
						<tr>
							<td id="sports-label">Favorite Sports Team:</td>
							<td class="value" id="sports"><xsl:value-of select="favorites/team" /></td>
						</tr>
						<tr>
							<td id="hobbies-label">Hobbies:</td>
							<td class="list" id="hobbies">
							<xsl:for-each select="hobbies/hobby">
								<li><xsl:value-of select="." /></li>
							</xsl:for-each>
							</td>
						</tr>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
