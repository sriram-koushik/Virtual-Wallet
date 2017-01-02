function abcd() {
     var postman = new XMLHttpRequest()
     var statusnum;
    if (text_edit1.text==""||text_edit2.text==""||text_edit3.text==""||text_edit4.text==""||text_edit5.text==""||text_edit6.text==""||text_edit7.text=="")
    {
    statusnum=0;
        statusline.text="Fill all the fields!";
     statusline.visible = true;

          }

       else
     {
     statusnum=4;
     var postData = "username=" + text_edit1.text + "&pin=" + text_edit2.text + "&name=" + text_edit4.text + "&phnum=" + text_edit3.text + "&address=" + text_edit6.text+ "&phonecode=" + text_edit5.text+ "&email=" + text_edit7.text;
     postman.open("POST", "http://www.psgtecheclub.com/acceptreg.php", true);
     postman.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
     postman.onreadystatechange = function() {
         if (postman.readyState == postman.DONE) {
             button1.visible = false;
             statusline.color = "green";
             statusline.text = "You have registered successfully!"
             statusline.visible = true;
             newusemain.opacity=7;
               mainloader.source="login.qml";

         }
     }
     postman.send(postData);
    }
    }
