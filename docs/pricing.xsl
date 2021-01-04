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
                <link rel="preconnect" href="https://fonts.gstatic.com"/>
                <link href="https://fonts.googleapis.com/css2?family=Dorsa&amp;family=Satisfy&amp;display=swap" rel="stylesheet"/>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
            </head>

                <nav>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropbtn">INFO</a>
                            <div class="dropdown-content">
                                <a href="about.html">ABOUT ME</a>
                                <a href="sessions.xml" class="active">PRICING</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropbtn">PORTFOLIO</a>
                            <div class="dropdown-content">
                                <a href="#">WEDDING PHOTOGRAPHY</a>
                                <a href="#">COUPLES PHOTOGRPHY</a>
                            </div>
                        </li>
                        <li><a href="#news">BLOG</a></li>
                        <li><a href="inquiry.html">CONTACT</a></li>
                    </ul>
                </nav>

                <header>
                    <img src="images/logo.svg" width="120" height="90"/>
                    <h1>RINGS &amp; KISSES</h1>
                    <h3>Photography</h3>
                </header>
            <main>
                <div class="about-section">
                    <h1>Pricing</h1>
                    <h2>Our unique price-performance ratio has made our customers happy for a long time and determines you too. </h2>
                       <h2>Trust in our reliability, quality and uniqueness.</h2>
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
                    <p>
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-pinterest"></a>
                        <a href="#" class="fa fa-instagram"></a>
                    </p>
                </footer>

                <script>
                    let slideIndex = 0;
                    showSlides();

                    function showSlides() {
                    let i;
                    let slides = document.getElementsByClassName("mySlides");
                    let dots = document.getElementsByClassName("dot");
                    for (i = 0; i &lt; slides.length; i++) {
                    slides[i].style.display = "none";
                    }
                    slideIndex++;
                    if (slideIndex > slides.length) {slideIndex = 1}
                    for (i = 0; i &lt; dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex-1].style.display = "block";
                    dots[slideIndex-1].className += " active";
                    setTimeout(showSlides, 6000); // Change image every 2 seconds
                    }
                </script>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>