// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt.labs.components.native 1.0
import "processprepaid.js" as Preobj;
Rectangle {
    id :prerect
    width: 360
    height: 640
    color: "#ddcfcf"
    XmlListModel {
         id: xmlModel1
         source: "http://www.psgtecheclub.com/checkrecharge.xml"
         query: "/prepaid/prepaidsub"
         XmlRole { name: "usern"; query: "usern/string()" }
         XmlRole { name: "status"; query: "status/string()"  }

    }
    TextInput {
        id: prepaidbox
        x: 29
        y: 227
        width: 305
        height: 48
        text: qsTr("")
        maximumLength: 15
        font.pixelSize: 24
        BorderImage {
            id: border_image5
            x: 61
            y: -89
            width: 253
            height: 48
            anchors.rightMargin: 0
            anchors.fill: parent
            source: "back.png"
            opacity: 0.650
        }
        font.bold: false
        horizontalAlignment: TextInput.AlignHCenter
        opacity: 0.750
    }

    Text {
        id: text1
        x: 22
        y: 163
        width: 320
        height: 27
        text: qsTr("Enter your prepaid card number")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20

        Column {
            x: 98
            y: 153
            width: 108
            height: 50
            Button { x: 5; y: 19; width: 100; height: 50; text: "Submit"; checkable: false; opacity: 1;
                onClicked:
                {
                    Preobj.getvalue();


                }

            }
                    }

    }

    Text {
        id: text2
        x: 57
        y: 487
        width: 244
        height: 29
        color: "#d51a1a"
        text: qsTr("")
        horizontalAlignment: Text.AlignHCenter
        visible: false
        font.pixelSize: 18
    }

    Text {
        id: text3
        x: 21
        y: 44
        width: 320
        height: 27
        text: "Enter username"
        font.pixelSize: 20
        font.bold: true
        horizontalAlignment: Text.AlignHCenter

        Column {
            x: 101
            y: 356
            width: 122
            height: 50
            Button {
                x: 5
                y: 19
                width: 120
                height: 50
                text: "My page"
                checkable: false
                opacity: 1
                onClicked:
                {
                    prerect.visible = false;
                    mainloader.source = "mypage.qml";


                }

            }
        }
    }

    TextInput {
        id: usern
        x: 29
        y: 85
        width: 305
        height: 48
        text: qsTr("")
        maximumLength: 15
        font.pixelSize: 24
        BorderImage {
            id: border_image6
            x: 61
            y: -89
            width: 253
            height: 48
            anchors.fill: parent
            source: "back.png"
            anchors.rightMargin: 0
            opacity: 0.650
        }
        font.bold: false
        horizontalAlignment: TextInput.AlignHCenter
        opacity: 0.750
    }

}
