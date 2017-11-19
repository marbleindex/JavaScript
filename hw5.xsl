<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/stock" >
<html>
<body>
<table border="2">
	<tr style="background-color:black" >
		<th>Symbol</th>
		<th>Price</th>
		<th>CEO</th>
	</tr>
			<xsl:for-each select = "stock:item" >
				<xsl:if test = "stock:price > 70.00">
				<xsl:choose>
					<xsl:when test= "position () mod 2 = 1" >
						<tr style= "background-color:cyan">
							<td>
								<xsl:value-of select= "stock:symbol" />
							</td>
								<xsl:value-of select= "stock:price" />
							<td>
								<xsl:value-of select= "stock:CEO" />
							</td>
						</tr>
					</xsl:when>

					<xsl:otherwise>
						<tr style="background-color:lightgray" >
							<td>
								<xsl:value-of select= "stock:symbol" />
							</td>
								<xsl:value-of select= "stock:price" />
							<td>
								<xsl:value-of select= "stock:CEO" />
							</td>
						</tr>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
