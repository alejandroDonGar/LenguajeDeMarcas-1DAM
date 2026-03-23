<xsl:stylesheet version="1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Libros</title>
                <meta charset="utf-8"/>
                <style>
                    h1 {
                        color:navy;
                    }
                    h3 {
                        color:lightBlue;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="//libro/titulo">
                    <h1><xsl:value-of select="."/></h1>
                    <h3>Precio: <xsl:value-of select="../precio"/></h3>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>