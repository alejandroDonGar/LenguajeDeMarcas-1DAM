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
                        <th style="border:1px solid navy;">Título</th>
                        <th style="border:1px solid navy;">Precio</th>
                        <th style="border:1px solid navy;">Categoria</th>
                    </tr>
                    <xsl:for-each select="//libro">
                        <tr>
                            <td><xsl:value-of select="./titulo"/></td>
                            <td><xsl:value-of select="./precio"/></td>
                            <td><xsl:value-of select="./@categoria"/></td>
                        </tr>
                    </xsl:for-each>  
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>