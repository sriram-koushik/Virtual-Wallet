var a;
function authenticate()
{
    var one=text_input11.text;
    var two=text_input21.text;
    var three=text_input31.text;
    var four=text_input41.text;
    var usern= username.text;

    var pass=two+one+three+four;
    if(one==''||two==''||three==''||four==''||usern=='')
    {
        text2.text = "Invalid PIN or username!field is empty";
        text2.visible = true;
       }
    else
    {

        var authconnect = new XMLHttpRequest()
        var postData = "username=" + usern + "&pin=" + pass;
        authconnect.open("POST", "http://www.psgtecheclub.com/checkpin.php", true);
        authconnect.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        authconnect.onreadystatechange = function() {
            if (authconnect.readyState == authconnect.DONE) {


            }
        }
        authconnect.send(postData);
        xmlModel.reload();

        var title = xmlModel.get(0).status;
        a=title;
        if(title==="true")
        {
            text2.text = "Login success"+title;
            text2.visible = true;
            firstrect.visible = false;
            firstrect.enabled =false;
            firstrect.visible=false;image1.visible=false;mousearea1.enabled=false;text1.visible=false;text_input11.visible=false;text_input21.visible=false;text_input31.visible=false;text_input41.visible=false;
            timer4.running= false;
            timer4.stop();
            mainloader.source="mypage.qml";


        }
        else if(title==="false")
        {

            text2.text = "Invalid PIN or username"+title;
            text2.visible = true;

        }
        else
        {

        }

 }



}

