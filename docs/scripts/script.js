// Return nav to original position
window.addEventListener("resize", function () {
    if (window.screenX >= 600) {
        let x = document.getElementById("top-nav");
        if (x.classList.contains("responsive")) {
            x.classList.remove("responsive")
        }
    }
});



function myFunction() {
    let x = document.getElementById("top-nav");
  if (x.className === "top-nav") {
    x.className += " responsive";
  } else {
    x.className = "top-nav";
  }
}


function sendForm() {
    const fields = {};
    const emailAddr = "muster@musteremail.de"
    fields.fullname = document.getElementById('sender-name').value;
    fields.email = document.getElementById('email').value;
    fields.customerLocaiton = document.getElementById('location').value;
    fields.message = document.getElementById('message').value;
    const msg = "Name: "+fields.fullname+ "%0Aemail: "+ fields.email+"%0ALocation: "+fields.customerLocaiton+"%0A"+fields.message
    const mail = "mailto:"+emailAddr+"?subject=enquiry&body="+msg;
    window.open(mail)
}

function showSlides() {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 6000); // Change image every 2 seconds
}
