<?xml version="1.0" encoding="UTF-8"?>
<!-- XSLT Stylesheet to transform XML data into HTML format -->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template to match the root element of the XML document -->
    <xsl:template match="/movies">
        <html>
            <body>
                <!-- Header for the HTML page -->
                <h1>Popular Movies List</h1>
                
                <!-- Table to display movie details -->
                <table border="1">
                    <!-- Table headers -->
                    <tr>
                        <th>Name</th>
                        <th>Date</th>
                        <th>Language</th>
                    </tr>
                    
                    <!-- Iterate over each movie element in the XML -->
                    <xsl:for-each select="movie">
                          <!-- Sort movies by name -->
                        <xsl:sort select="name"/>
                        <tr>
                            <!-- Display the name of the movie -->
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <!-- Display the release date of the movie -->
                            <td>
                                <xsl:value-of select="date" />
                            </td>
                            <!-- Display the language of the movie -->
                            <td>
                                <xsl:value-of select="language" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
