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

function sendForm() {
    var fields = {};
    fields.fullname = document.getElementById('sender-name').value;
    fields.email = document.getElementById('email').value;
    fields.customerLocaiton = document.getElementById('location').value;
    fields.message = document.getElementById('message').value;

    console.log(fields);
    alert(fields);
}
