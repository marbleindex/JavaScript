<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>ABC Company Employees</h2>
    <table border="1">
      <tr style="background-color:#9acd32;">
      <th>Title</th>
      <th>Name</th>
    </tr>
    <xsl:for-each select="abccompany/emp">
    <xsl:if test="sal &lt; 100000">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="name"/></td>
	    </tr>
    </xsl:if>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

