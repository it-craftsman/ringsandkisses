<?xml version="1.0" encoding="UTF-8"?>

    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <head>
                    <title>Pricing for couple and wedding photography</title>
                    <meta charset="UTF-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1"/>
                    <link rel="stylesheet" href="style/style.css"/>
                    <link rel="preconnect" href="https://fonts.gstatic.com"/>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
                    <link href="https://fonts.googleapis.com/css2?family=Dorsa&amp;family=Satisfy&amp;display=swap" rel="stylesheet"/>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
                    <script type="text/javascript" src="scripts/script.js"/>
                </head>
                <div class="topnav" id="myTopnav">
                    <div class="dropdown">
                        <button class="dropbtn">Contact
                        </button>
                        <div class="dropdown-content">
                            <a href="inquiry.html">Inquiry</a>
                            <a href="imprint.html">Imprint</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button class="dropbtn">Info
                        </button>
                        <div class="dropdown-content">
                            <a href="about.html">About Us</a>
                            <a href="pricing.xml">Pricing</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button class="dropbtn">Portfolio
                        </button>
                        <div class="dropdown-content">
                            <a href="wedding.html">Wedding Photography</a>
                            <a href="couple.html">Couples Photography</a>
                        </div>
                    </div>
                    <a href="blog.html">Blog</a>
                    <a href="index.html" >Home</a>
                    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
                </div>

                <header>
                    <img src="images/logo.svg" alt="ringsandkisses logo" width="120" height="90"/>
                    <h1>RINGS &amp; KISSES</h1>
                    <h3>Photography</h3>
                </header>

                <main>
                    <div class="about">
                        <h2>Pricing for couple and wedding photography</h2>
                        <p>Our unique price-performance ratio has made our customers happy for a long time and determines you too. </p>
                        <p>Trust in our reliability, quality and uniqueness.</p>
                    </div>
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
                    <h4 id="text3" >Follow me on Instagram</h4>
                    <div class="responsive">
                        <div class="gallery">
                            <img src="images/gallery/TF-web-DSC07641.jpg" alt="Couple Photography" width="600" height="400"/>
                        </div>
                    </div>

                    <div class="responsive">
                        <div class="gallery">
                            <img src="images/gallery/post05-1.jpg" alt="Couple Photography" width="600" height="400"/>
                        </div>
                    </div>

                    <div class="responsive">
                        <div class="gallery">
                            <img src="images/gallery/post11.jpg" alt="Couple Photography" width="600" height="400"/>
                        </div>
                    </div>

                    <div class="responsive">
                        <div class="gallery">
                            <img src="images/gallery/TF-web-DSC07487.jpg" alt="Couple Photography" width="600" height="400"/>
                        </div>
                    </div>
                    <p>
            <a href="rings&amp;kisses@facebook.com" class="fa fa-facebook"/>
            <a href="rings&amp;kisses@pinterest.com" class="fa fa-pinterest"/>
            <a href="rings&amp;kisses@instagram.com" class="fa fa-instagram"/>
        </p>
                    <div class="copyright">
                        <a href="privacy.html">@copyright 2020 Rings&amp;Kisses</a>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>