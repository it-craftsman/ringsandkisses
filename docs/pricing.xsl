<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
            <head>
                <title>Pricing</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="style/style.css"/>
                <link rel="stylesheet" href="style/price.css"/>
                <link rel="preconnect" href="https://fonts.gstatic.com"/>
                <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@1&amp;display=swap" rel="stylesheet"/>
            </head>

            <header>
                <img src="images/logo.svg" width="200" height="140"/>
                <h1>Rings and Kisses</h1>
                <p>Couple and Wedding Photography</p>
            </header>

            <nav>
                <a href="#" class="active">Home</a>
                <a href="#">About</a>
                <a href="#">Portfolio</a>
                <a href="#">Pricing</a>
                <a href="#">Inquiry</a>
                <a href="#">Imprint</a>
                <a href="#">Blog</a>
            </nav>
            <main>
        <h2>Price Packages</h2>
        <div class="pricing-box-container">
            <xsl:for-each select="sessions/session">
                <div class="pricing-box text-center">
                    <h5><xsl:value-of select="type"/></h5>
                    <h6><xsl:value-of select="title"/></h6>
                    <p><xsl:value-of select="description"/></p>
                    <p class="price"><xsl:value-of select="price"/></p>
                </div>
            </xsl:for-each>
        </div>
            </main>

                <footer>
                    <p>
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-pinterest"></a>
                        <a href="#" class="fa fa-instagram"></a>
                    </p>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>