<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:value-of select="Buch/Titel" /> 
					(<xsl:value-of select="Buch/@isbn" />)
				</title>
			</head>
		  	<body>
		  		<xsl:apply-templates select="Buch" />
		 	</body>
		</html>
	</xsl:template>

	<xsl:template match="Buch">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="Titel">
		<h1>
			<xsl:value-of select="." />
		</h1>
		<p>ISBN: <xsl:value-of select="/Buch/@isbn" /></p>
	</xsl:template>
	
	<xsl:template match="Autor">
		<p>
			Autor: <xsl:value-of select="Vorname" />
			<xsl:text> </xsl:text><xsl:value-of select="Nachname" />
		</p>
	</xsl:template>
	
	<xsl:template match="Verlag">
		<p>
			Verlag: <xsl:value-of select="." />
		</p>
	</xsl:template>

</xsl:stylesheet>