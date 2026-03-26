<xsl:stylesheet version="1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Libros</title>
                <meta charset="utf-8"/>
                <style>
                    body {
                        display:flex;
                        justify-content:center;
                        align-items:center;
                    }.-
                    table {
                        padding:1px;
                        border:1px solid navy;
                        background-color:navy;
                    }
                    tr {
                        padding:2px;
                    }
                    th {
                        padding:5px;
                        border:1px solid navy;
                        color:navy;
                        background-color:white;
                    }
                    td {
                        padding:5px;
                        border:1px solid navy;
                        color:navy;
                        background-color:white;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Precio</th>
                        <th>Categoria</th>
                    </tr>
                    <xsl:for-each select="//libro">
                        <xsl:sort select="precio" data-type="number"/> 
                        <tr>
                            <td><xsl:value-of select="./titulo"/></td>
                            <td><xsl:value-of select="./precio"/></td>
                            <xsl:if test="./@categoria='tecnico'">
                                <td style="color:darkgreen;background-color:lime;font-weight:bold;"><xsl:value-of select="./@categoria"/></td>
                            </xsl:if>
                            <xsl:if test="./@categoria='novela'">
                                <td style="color:blue;background-color:cyan;font-weight:bold;"><xsl:value-of select="./@categoria"/></td>
                            </xsl:if>
                        </tr>
                    </xsl:for-each> 
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>