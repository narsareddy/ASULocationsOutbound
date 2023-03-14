<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:env="http://schemas.xmlsoap.org/soap/envelope/">

	<xsl:template match="/env:Envelope">
		<xsl:apply-templates />
	</xsl:template>
	<xsl:template match="env:Body">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>