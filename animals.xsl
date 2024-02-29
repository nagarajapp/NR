<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:ac="http://www.atlassian.com/schema/confluence/4/ac/"
    xmlns:ri="http://www.atlassian.com/schema/confluence/4/ri/" >

<xsl:template match="/">
  <html>
  <body>
  <h2>Aninals</h2>
    <table border="1">
      <tr bgcolor="lightblue">
        <th>Name</th>
        <th>Type</th>
        <th>Breed</th>
        <th>Color</th>
        <th>Link</th>
      </tr>
      <xsl:for-each select="animals/animal">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="type"/></td>
        <td><xsl:value-of select="breed"/></td>
        <td><xsl:value-of select="color"/></td>
        <td>
        <ac:macro ac:name="link-page">
            <ac:parameter ac:name="linkText"><xsl:value-of select="name"/></ac:parameter>
            <ac:parameter ac:name="name">home</ac:parameter>
        </ac:macro>
        </td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>