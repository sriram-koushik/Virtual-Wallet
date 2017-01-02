// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt.labs.components.native 1.0
import "reg.js" as Myfirst
Rectangle {
    id: newusemain
    width: 360
    height: 640
    color: "#ffffff"

    Text {
        id: text1
        x: 43
        y: 71
        width: 90
        height: 32
        text: qsTr("Username")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit1
        x: 195
        y: 71
        width: 134
        height: 32
        maximumLength: 30
        text: qsTr("")
        font.pixelSize: 17
          BorderImage {
            id: border_image3
            anchors.fill: parent
            opacity: 0.280
            source: "back.png"
        }
    }

    Text {
        id: text2
        x: 43
        y: 117
        width: 82
        height: 32
        text: qsTr("4 digit PIN")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit2
        x: 195
        y: 117
        width: 74
        height: 26
        text: qsTr("")
        font.pixelSize: 17
        maximumLength: 4
        echoMode: TextInput.Password

        BorderImage {
            id: border_image1
            width: 100
            height: 100
            opacity: 0.280
            source: "back.png"
            anchors.fill: parent
        }
    }

    Text {
        id: text3
        x: 43
        y: 212
        width: 133
        height: 32
        text: qsTr("Phone number")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit3
        x: 195
        y: 212
        width: 147
        height: 26
        text: qsTr("")
        font.pixelSize: 17
       maximumLength: 10
        BorderImage {
            id: border_image7
            x: 0
            y: 0
            width: 147
            height: 26
            anchors.topMargin: 0
            anchors.fill: parent
            opacity: 0.280
            source: "back.png"
        }
    }

    Text {
        id: text4
        x: 43
        y: 161
        width: 90
        height: 32
        text: qsTr("Full name")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit4
        x: 195
        y: 161
        width: 147
        height: 26
        text: qsTr("")
        font.pixelSize: 17
        maximumLength: 20
        BorderImage {
            id: border_image5
            anchors.fill: parent
            opacity: 0.280
            source: "back.png"
        }
    }

    Text {
        id: text5
        x: 43
        y: 255
        width: 101
        height: 32
        text: qsTr("Phone code")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit5
        x: 195
        y: 261
        width: 109
        height: 26
        text: qsTr("")
        font.pixelSize: 17
        maximumLength: 5
        BorderImage {
            id: border_image6
            anchors.fill: parent
            opacity: 0.280
            source: "back.png"
        }
    }

    Text {
        id: text6
        x: 43
        y: 310
        width: 74
        height: 32
        text: qsTr("Address")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit6
        x: 195
        y: 310
        width: 147
        height: 74
        text: qsTr("")
        font.pixelSize: 17
        maximumLength: 100
        BorderImage {
            id: border_image4
            anchors.fill: parent
            opacity: 0.280
            source: "back.png"
        }
    }

    Text {
        id: text7
        x: 43
        y: 415
        width: 125
        height: 32
        text: qsTr("Email address ")
        font.pixelSize: 19
    }

    TextInput {
        id: text_edit7
        x: 195
        y: 417
        width: 147
        height: 30
        text: qsTr("")
        font.pixelSize: 17
        maximumLength: 30
        BorderImage {
            id: border_image2
            anchors.fill: parent
            x: -13
            y: -350
            width: 147
            height: 30
            anchors.bottomMargin: 0
            opacity: 0.290
            source: "back.png"
        }


    }
    Column {
        x: 135
        y: 500
        Button { id
            : button1;width: 100; height: 50; text: "Submit"; onClicked:  Myfirst.abcd();   }


    }

     Text {
         id: text8
         x: 63
         y: 17
         width: 251
         height: 40
         text: qsTr("NEW USER REGISTRATION")
         styleColor: "#d96262"
         style: Text.Raised
         font.family: "Myriad Pro"
         horizontalAlignment: Text.AlignHCenter
         font.bold: true
         font.pixelSize: 21


     }

     Text {
         id: statusline
         x: 32
         y: 558
         width: 307
         height: 47
         color: "#cc1f08"
         text: qsTr("")
         horizontalAlignment: Text.AlignHCenter
         visible: false
         opacity: 0.690
         font.pixelSize: 21
     }


    }

