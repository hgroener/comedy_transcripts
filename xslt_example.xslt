<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
   <xsl:text>&#xa;</xsl:text>
   <doc  xmlns="http://www.w3.org/TR/html4/">
   <xsl:text>&#xa;</xsl:text>
     <lang>
      <xsl:value-of select="html/@lang" />
     </lang>
   <xsl:text>&#xa;</xsl:text>
   <title>
      <xsl:value-of select="//title"/>
   </title>
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
   <transcript>
   <xsl:for-each select="//p[@style='text-align: justify;']">
      <xsl:text>&#xa;</xsl:text>
      <p>
      <xsl:value-of select="."/>
      </p>
    </xsl:for-each>
   <xsl:text>&#xa;</xsl:text>
   </transcript>
   <xsl:text>&#xa;</xsl:text>
   </doc> 
 </xsl:template>



  
</xsl:stylesheet> 