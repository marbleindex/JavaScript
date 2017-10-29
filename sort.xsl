  <?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 104. -->

<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
xmlns:c = "http://www.ineasysteps.com/xsd" >

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match = "c:doc">

<html><head><title>XSL Output</title></head><body>

<table style = "width:450px">0

<tr style="color:white; background:green">
<th>Make</th> <th>Model</th> <th>Liters</th> <th>Cyls</th>
<th>HP</th> <th>$</th>
</tr>

<xsl:for-each select = "c:item" >

<xsl:sort select = "c:ltr" order = "ascending" data-type = "number" />

<tr style= "color:black;background:lime;text-align:center" >
<td> 	<xsl:value-of select = "c:make" /> 	</td>
<td> 	<xsl:value-of select = "c:model" /> 	</td>
<td> 	<xsl:value-of select = "c:ltr" /> 	</td>
<td> 	<xsl:value-of select = "c:cyl" /> 	</td>
<td> 	<xsl:value-of select = "c:hp" /> 	</td>
<td> 	<xsl:value-of select = "c:price" /> 	</td>
</tr>

</xsl:for-each>

</table>

</body></html>

</xsl:template>

</xsl:stylesheet>
