﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="Adresar">
      <html>
        <body>
          <table border="1p">
            <tr>
              <th>Ime</th>
              <th>SrednjeIme</th>
              <th>Prezime</th>
              <th>DatumRodjenja</th>
              <th>Adresa</th>
              <th>Telefon</th>
              <th>Email</th>
            </tr>
            <xsl:for-each select="Osoba">
              <xsl:if test="count(Email) &gt; 2">
                <tr>
                  <td>
                    <xsl:value-of select="PunoIme/Ime"/>
                  </td>
                  <td>
                    <xsl:value-of select="PunoIme/SrednjeIme"/>
                  </td>
                  <td>
                    <xsl:value-of select="PunoIme/Prezime"/>
                  </td>
                  <td>
                    <xsl:value-of select="DatumRodjenja"/>
                  </td>
                  <td>
                    <xsl:value-of select="Adresa/Ulica"/>
                    <xsl:value-of select="Adresa/Broj"/>
                    <xsl:value-of select="Adresa/Grad"/>
                    <xsl:value-of select="Adresa/Drzava"/>
                  </td>
                  <td>
                    <xsl:value-of select="Telefon"/>
                  </td>
                  <td>
                    <xsl:for-each select="Email">
                      <xsl:value-of select="."/>
                      <xsl:element name="br"/>
                    </xsl:for-each>
                  </td>
                </tr>
              </xsl:if>
            </xsl:for-each>
            <xsl:for-each select="Kompanija">
              <xsl:if test="count(Email)  &gt; 2">
                <tr>
                  <td>
                    <xsl:value-of select="ImeKompanije"/>
                  </td>
                  <td>
                    <xsl:value-of select="SrednjeIme"/>
                  </td>
                  <td>
                    <xsl:value-of select="Prezime"/>
                  </td>
                  <td></td>
                  <td>
                    <xsl:value-of select="Adresa/Ulica"/>
                    <xsl:value-of select="Adresa/Broj"/>
                    <xsl:value-of select="Adresa/Grad"/>
                    <xsl:value-of select="Adresa/Drzava"/>
                  </td>
                  <td>
                    <xsl:value-of select="Telefon"/>
                  </td>
                  <td>
                    <xsl:for-each select="Email">
                      <xsl:value-of select="."/>
                      <xsl:element name="br"/>
                    </xsl:for-each>                   
                  </td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </table>        
        </body>
      
      </html>
    
</xsl:template>
</xsl:stylesheet>
