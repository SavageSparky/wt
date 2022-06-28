<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <style>
        *{
          margin:0;
          padding:0;
        }
        table,th,td{
          border:2px solid #888;
          border-collapse: collapse;
        }
        th{
          border:2px solid #555;
        }
        th,td{
          padding:.5rem 1rem;
        }
      </style>
      <body>
        <table>
          <thead>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Roll/Reg no</th>
          </thead>
          <tbody>
            <xsl:for-each select="breakfast_menu/food">
              <tr>
                <td><xsl:value-of select="name" /></td>
                <td><xsl:value-of select="price"/></td>
                <!-- <td><xsl:value-of select="description" /></td> -->
                <td><xsl:value-of select="calories" /></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
