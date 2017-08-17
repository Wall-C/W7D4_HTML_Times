<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:svg="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:template match="/">
    <svg>
      <xsl:for-each select="//svg:defs:path">
        <use>
          <xsl:attribute name="x"><xsl:value-of select="position() mod 10 * 20"/></xsl:attribute>
          <xsl:attribute name="y"><xsl:value-of select="floor(position() div 10) * 20"/></xsl:attribute>
          <xsl:attribute name="xlink:href">resources/sprites.svg#<xsl:value-of select="@id"/></xsl:attribute>
        </use>
      </xsl:for-each>
    </svg>
  </xsl:template>
</xsl:stylesheet>