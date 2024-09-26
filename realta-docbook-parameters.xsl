<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

<xsl:template name="user.head.content.extension">
<style>
@counter-style rightwardsdoublearrow {
    system: cyclic;
    symbols: "\21d2\a0\a0";
    suffix: '';
    prefix: '';
}

ul li[style="list-style-type: rightwardsdoublearrow"] {
 list-style-position: outside;
 list-style-type: "\21d2\a0\a0";
}

/*
ul li[style*="list-style-type: rightwardsdoublearrow"]:before { 
content: "\21d2\a0\a0";
float: left;
}

ul li[style*="list-style-type: rightwardsdoublearrow"] { 
list-style: none;
}
*/
</style>
</xsl:template>

<xsl:template name="next.itemsymbol">
  <xsl:param name="itemsymbol" select="'default'"/>
  <xsl:choose>
    <!-- Change this list if you want to change the order of symbols -->
    <xsl:when test="$itemsymbol = 'disc'">circle</xsl:when>
    <xsl:when test="$itemsymbol = 'circle'">square</xsl:when>
    <xsl:when test="$itemsymbol =
                      'rightwardsdoublearrow'">rightwardsdoublearrow</xsl:when>
    <xsl:otherwise>disc</xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="itemizedlist.label.markup">
  <xsl:param name="itemsymbol" select="'disc'"/>

  <xsl:choose>
    <xsl:when test="$itemsymbol='none'"></xsl:when>
    <xsl:when test="$itemsymbol='disc'">&#x2022;</xsl:when>
    <xsl:when test="$itemsymbol='bullet'">&#x2022;</xsl:when>
    <xsl:when test="$itemsymbol='endash'">&#x2013;</xsl:when>
    <xsl:when test="$itemsymbol='emdash'">&#x2014;</xsl:when>
    <xsl:when test="$itemsymbol='rightwardsdoublearrow'">&#x21d2;</xsl:when>
    <!-- Some of these may work in your XSL-FO processor and fonts -->
    <!--
    <xsl:when test="$itemsymbol='square'">&#x25A0;</xsl:when>
    <xsl:when test="$itemsymbol='box'">&#x25A0;</xsl:when>
    <xsl:when test="$itemsymbol='smallblacksquare'">&#x25AA;</xsl:when>
    <xsl:when test="$itemsymbol='circle'">&#x25CB;</xsl:when>
    <xsl:when test="$itemsymbol='opencircle'">&#x25CB;</xsl:when>
    <xsl:when test="$itemsymbol='whitesquare'">&#x25A1;</xsl:when>
    <xsl:when test="$itemsymbol='smallwhitesquare'">&#x25AB;</xsl:when>
    <xsl:when test="$itemsymbol='round'">&#x25CF;</xsl:when>
    <xsl:when test="$itemsymbol='blackcircle'">&#x25CF;</xsl:when>
    <xsl:when test="$itemsymbol='whitebullet'">&#x25E6;</xsl:when>
    <xsl:when test="$itemsymbol='triangle'">&#x2023;</xsl:when>
    <xsl:when test="$itemsymbol='point'">&#x203A;</xsl:when>
    <xsl:when test="$itemsymbol='hand'"><fo:inline 
                         font-family="Wingdings 2">A</fo:inline></xsl:when>
    -->
    <xsl:otherwise>&#x2022;</xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>