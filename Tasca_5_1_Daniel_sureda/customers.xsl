<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Llista de Clients</title>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Taula de Clients</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nom de l'Empresa</th>
                        <th>Contacte</th>
                        <th>Ciutat</th>
                        <th>País</th>
                    </tr>
                    <xsl:for-each select="customers/customer">
                        <tr>
                            <td><xsl:value-of select="@customerNumber"/></td>
                            <td><xsl:value-of select="customerName"/></td>
                            <td><xsl:value-of select="contact/contactFirstName"/> <xsl:value-of select="contact/contactLastName"/></td>
                            <td><xsl:value-of select="adress/city"/></td>
                            <td><xsl:value-of select="adress/country"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>