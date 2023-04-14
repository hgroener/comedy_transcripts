<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
   <xsl:text>&#xa;</xsl:text>
   <doc
     xmlns="https://www.xmlaugh.com"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xsi:schemaLocation="https://www.xmlaugh.com xsd_example.xsd">
   <xsl:text>&#xa;</xsl:text>
   <head>
   <xsl:text>&#xa;</xsl:text>
     <lang>
      <xsl:value-of select="html/@lang" />
     </lang>
   <xsl:text>&#xa;</xsl:text>
   <xsl:apply-templates select="//title"/>
   <xsl:text>&#xa;</xsl:text>
   <description>
     <xsl:value-of select="//meta[@name='description']/@content"/>
   </description>
   <xsl:text>&#xa;</xsl:text>
   <link>
   <xsl:value-of select="//link[@rel='canonical']/@href"/>
   </link> 
   <xsl:text>&#xa;</xsl:text>
   <author>
     <xsl:value-of select="//meta[@name='author']/@content"/>
   </author>
   <xsl:text>&#xa;</xsl:text>
   <est_reading_time>
     <xsl:value-of select="//meta[@name='twitter:data2']/@content"/>
   </est_reading_time>
   <xsl:text>&#xa;</xsl:text>
   </head>
   <xsl:text>&#xa;</xsl:text>
   <body>
   <xsl:for-each select="//p[@style='text-align: justify;']">
      <xsl:text>&#xa;</xsl:text>
      <xsl:value-of select="." disable-output-escaping="yes"/>
    </xsl:for-each>
   <xsl:text>&#xa;</xsl:text>
   </body>
   <xsl:text>&#xa;</xsl:text>
   </doc> 
 </xsl:template>
  
 <xsl:template match="//title">
   <xsl:analyze-string select="." regex="(.*): (.*) \((\d+)\)">
     <xsl:matching-substring>
       <comedian xmlns="https://www.w3schools.com"><xsl:value-of select="regex-group(1)"/></comedian>
       <xsl:text>&#xa;</xsl:text>
       <title xmlns="https://www.w3schools.com"><xsl:value-of select="regex-group(2)"/></title>
       <xsl:text>&#xa;</xsl:text>
       <year xmlns="https://www.w3schools.com"><xsl:value-of select="regex-group(3)"/></year>
     </xsl:matching-substring>
   </xsl:analyze-string>
   
 </xsl:template>



  
</xsl:stylesheet> 