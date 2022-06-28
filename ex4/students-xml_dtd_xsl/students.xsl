<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <style>
        *{
          margin:0;
          padding:0;
        }
        body{
          display:grid;
          place-items:center;
          min-height:100vh;
        }
        table,th,td{
          border:2px solid #888;
          border-collapse: collapse;
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
            <th>Mobile No</th>
          </thead>
          <tbody>
            <xsl:for-each select="Students/Student">
              <tr>
                <td><xsl:value-of select="firstName" /></td>
                <td><xsl:value-of select="middleName"/></td>
                <td><xsl:value-of select="lastName" /></td>
                <td><xsl:value-of select="rollNo | regNo" /></td>
                <td><xsl:value-of select="mobileNo" /></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>