<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Llista d'Empleats</title>
                <style>
                    
                    .id-title { 
                        color: blue; 
                    }
                    
                    .emp-name { 
                        font-size: 25px; 
                    }
                    
                    .office-info { 
                        font-style: italic; 
                        color: green; 
                    }
            
                    .label {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h1>Llista empleats</h1>
                
                <ul>
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="lastName" order="ascending"/>
                        
                        <li>
                            <h2 class="id-title">Empleat amb id <xsl:value-of select="@employeeNumber"/></h2>
                            
                            <ul>
                                <li class="emp-name">
                                    <span class="label">Nom:</span> <xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/>
                                </li>
                                <li><span class="label">Correu:</span> <xsl:value-of select="email"/></li>
                                <li><span class="label">Id del seu superior:</span> <xsl:value-of select="reportsTo"/></li>
                                <li><span class="label">Posició:</span> <xsl:value-of select="jobTitle"/></li>
                                
                                <li class="office-info">
                                    <span class="label">Departament:</span>
                                    <ul>
                                        <li><span class="label">Ciutat:</span> <xsl:value-of select="office/City"/></li>
                                        <li><span class="label">Telèfon:</span> <xsl:value-of select="office/Phone"/></li>
                                        <li><span class="label">Adreça:</span> <xsl:value-of select="office/AddressLine1"/></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <br/>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>