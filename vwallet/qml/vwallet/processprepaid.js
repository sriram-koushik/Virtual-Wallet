function getvalue()
{

    var userninjs=usern.text;
    var num = prepaidbox.text;
    var preconnect = new XMLHttpRequest()
    var postData = "username=" + userninjs + "&num=" + num;
    preconnect.open("POST", "http://www.psgtecheclub.com/processpre.php", true);
    preconnect.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    preconnect.onreadystatechange = function() {
        if (preconnect.readyState == preconnect.DONE) {


        }
    }
    preconnect.send(postData);
    xmlModel1.reload();
    var title = xmlModel1.get(0).status;
    if(title==="no")
    {
        text2.text = "Sorry invalid number";
        text2.visible = true
    }
    else
    {
        text2.text = "You have recharged your account for Rs."+title;
        text2.visible = true
    }
}
