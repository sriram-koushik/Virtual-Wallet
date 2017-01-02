// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt.labs.components.native 1.0
import "auth.js" as Authobj
import "processprepaid.js" as Preobj
//QDeclarativeEngine *engine = new QDeclarativeEngine(parent);
//QDeclarativeComponent component(engine, QUrl::fromLocalFile("main.qml"));
//QObject *myObject = component.create();
Rectangle {
    id: firstrect
    width: 360
    height: 640
    color: "#fbfbfb";
    Timer{id: timer4;interval: 1; running: true;
        onTriggered: {
            xmlModel.reload();
                        }}

    XmlListModel {
         id: xmlModel
         source: "http://www.psgtecheclub.com/checkstat.xml"
         query: "/auth/authsub"
         XmlRole { name: "usern"; query: "usern/string()" }
         XmlRole { name: "status"; query: "status/string()"  }

    }
         /*ListView {
             id: lis;
             width: 180; height: 300
             visible: true
             model: xmlModel
             delegate :Text {
                 id: statfrmxml;
                 text: usern;

             }


         }*/

    Text {

        id: text1
        x: 48
        y: 159
        width: 141
        height: 33
        text: qsTr("Enter your PIN")
        font.pixelSize: 20


    }

    TextInput {
        id: text_input11
        x: 120
        y: 203
        width: 48
        height: 48
        text: qsTr("")
        horizontalAlignment: TextInput.AlignHCenter
        font.bold: false
        opacity: 0.750
        font.pixelSize: 23
        maximumLength: 1
        echoMode: TextInput.Password



        BorderImage {
            id: border_image1
            x: 61
            y: -89
            width: 99
            height: 100
            anchors.fill: parent
            source: "back.png"
            opacity: 0.650
        }
    }

    TextInput {

        id: text_input21
        x: 48
        y: 203
        width: 48
        height: 48
        text: qsTr("")
        horizontalAlignment: TextInput.AlignHCenter
        font.bold: false
        opacity: 0.750
        font.pixelSize: 23
        maximumLength: 1
        echoMode: TextInput.Password
        BorderImage {
            id: border_image2
            x: 61
            y: -89
            width: 99
            height: 100
            anchors.fill: parent
            source: "back.png"
            opacity: 0.650
        }

    }

    TextInput {
        id: text_input31
        x: 193
        y: 203
        focus: true
        width: 48
        height: 48
        text: qsTr("")
        horizontalAlignment: TextInput.AlignHCenter
        opacity: 0.750
        font.pixelSize: 23
        echoMode: TextInput.Password
        maximumLength: 1
            BorderImage {
            id: border_image3
            x: 0
            y: 0
            width: 99
            height: 100
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill: parent
            source: "back.png"
            opacity: 0.650
        }


    }

    TextInput {
        id: text_input41
        x: 262
        y: 203
        focus: true
        width: 48
        height: 48
        text: qsTr("")
        horizontalAlignment: TextInput.AlignHCenter
        opacity: 0.750
        font.pixelSize: 23
        maximumLength: 1
        echoMode: TextInput.Password
        BorderImage {
            id: border_image4
            x: 61
            y: -89
            width: 99
            height: 100
            anchors.fill: parent
            source: "back.png"
            opacity: 0.650
        }


    }

    Image {
        id: image2
        x: 129
        y: 300
        width: 104
        height: 40
       // source: "signin.gif"

        Column {
            Button { x: 5; y: 19; width: 100; height: 50; text: "login"; checkable: false; opacity: 1;
                onClicked:
                {
                    Preobj.userninjs = username.text;
                    Authobj.authenticate();


                }

            }
                    }
        Column{
            x: -10
            y: 100
            width: 130
        Button { x: 0; y: 100; width: 130; height: 50; text: "new user"; checkable: false; opacity: 1;
                    onClicked:  {
                    firstrect.opacity=7;firstrect.visible=false;image1.visible=false;mousearea1.enabled=false;text1.visible=false;text_input11.visible=false;text_input21.visible=false;text_input31.visible=false;text_input41.visible=false;

                        mainloader.source="newuser.qml"

                    }
                    }

        }
    }

    Text {
        id: text2
        x: 79
        y: 463
        width: 206
        height: 31
        color: "#b72929"
        text: qsTr("")
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#d92b2b"
        font.bold: false
        font.family: "Myriad Pro Light"
        visible: false
        font.pixelSize: 20
    }

    Text {
        id: text3
        x: 48
        y: 41
        width: 198
        height: 33
        text: qsTr("Enter your username")
        font.pixelSize: 20
    }

    TextInput {
        id: username
        x: 48
        y: 79
        width: 262
        height: 48
        text: qsTr("")
        maximumLength: 30
        font.pixelSize: 24
        BorderImage {
            id: border_image5
            x: 61
            y: -89
            width: 99
            height: 100
            anchors.fill: parent
            source: "back.png"
            opacity: 0.650
        }

        font.bold: false
        horizontalAlignment: TextInput.AlignHCenter
        opacity: 0.750
    }



}
