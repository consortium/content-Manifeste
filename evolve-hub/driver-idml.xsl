<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:saxon="http://saxon.sf.net/"
  xmlns:dbk="http://docbook.org/ns/docbook"
  xmlns:letex="http://www.le-tex.de/namespace"
  xmlns:idml2xml="http://www.le-tex.de/namespace/idml2xml"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:css="http://www.w3.org/1996/css"
  xmlns:hub="http://www.le-tex.de/namespace/hub"
  xmlns="http://docbook.org/ns/docbook"
  xpath-default-namespace="http://docbook.org/ns/docbook"
  exclude-result-prefixes="xs saxon letex xlink hub dbk idml2xml"
  version="2.0">
 
  <xsl:import href="http://customers.le-tex.de/generic/book-conversion/adaptions/common/evolve-hub/driver-idml.xsl"/>
  
  <xsl:template match="para[@role='review_head'][not(preceding-sibling::*[1]/@role = 'review_head')]" mode="hub:preprocess-hierarchy">
    <title>
      <xsl:apply-templates select="@*" mode="#current"/>
      <xsl:text>TITLE: </xsl:text>
      <xsl:apply-templates select="node()" mode="#current"/>
    </title>
    <para>subtitle</para>
  </xsl:template>
  
  
</xsl:stylesheet>