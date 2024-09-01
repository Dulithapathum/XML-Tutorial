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
                      
                        
                        <!-- Conditional check using xsl:choose -->
                        <xsl:choose>
                            <!-- Condition for movies released after 2023 -->
                            <xsl:when test="substring(date, 1, 4) &gt; 2023">
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
                            </xsl:when>
                            <!-- Alternative condition for movies released in 2023 or earlier -->
                            <xsl:otherwise>
                                <tr>
                                    <!-- Display a message for older movies -->
                                    <td colspan="3">
                                        <xsl:value-of select="name" /> (Released in 2023 or earlier)
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
