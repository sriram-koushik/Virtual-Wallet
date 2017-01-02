// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1


Rectangle {
    id: firstit
    width: 360
    height: 640
    Loader {
    id: mainloader
    anchors.fill: parent
    }

    MouseArea {
        id: mousearea1
        x: 0
        y: 122
        width: 360
        height: 654
        anchors.rightMargin: 0
        anchors.bottomMargin: -136
        anchors.leftMargin: 0
        anchors.topMargin: 122
        anchors.fill: parent
        /*onClicked: {
            firstit.opacity=7;image1.visible=false;mousearea1.enabled=false;
            mainloader.source="login.qml";
                    }

        */
        Timer {
                id: timer1;
                interval: 3000; running: true;
                 onTriggered: {

                     firstit.opacity=7;image1.visible=false;mousearea1.enabled=false;
                       mainloader.source="login.qml";

                                 }
        }
        Image {
            id: image1
            x: 72
            y: 52
            width: 217
            height: 234
            source: "Untitled-3 (1).png"
        }
    }
}

