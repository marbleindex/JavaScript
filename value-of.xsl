<?xml version = "1.0" encoding = "UTF-8" ?>

<!-- XML in easy steps - Page 100. -->

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:c = "http://www.ineasysteps.com/xsd" >

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match = "c:doc">

<html> <head><title>XSL Output</title> </head> <body>

<ul style = "list-style-type:square;color:red">

<li> <xsl:value-of select = "c:item/c:make" /> </li>
<li> <xsl:value-of select = "c:item/c:model" /> </li>
<li> <xsl:value-of select = "c:item/c:ltr" /> Liters </li>
<li> <xsl:value-of select = "c:item/c:cyl" /> Cylinders</li>
<li> <xsl:value-of select = "c:item/c:hp" /> Horsepower</li>
<li> $ <xsl:value-of select = "c:item/c:price" /> </li>

</ul> 

</body> </html>

</xsl:template>

</xsl:stylesheet>