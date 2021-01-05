
function sendForm() {
    const fields = {};
    const emailAddr = "muster@musteremail.de"
    fields.fullname = document.getElementById('sender-name').value;
    fields.email = document.getElementById('email').value;
    fields.customerLocaiton = document.getElementById('location').value;
    fields.message = document.getElementById('message').value;
    const msg = "Name: "+fields.fullname+ "%0Aemail: "+ fields.email+"%0ALocation: "+fields.customerLocaiton+"%0A"+fields.message
    const mail = "mailto:"+emailAddr+"?subject=enquiry&body="+msg;
    window = window.open(mail, 'emailWindow')
}

