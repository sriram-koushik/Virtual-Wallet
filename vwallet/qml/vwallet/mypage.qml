// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import Qt.labs.components.native 1.0
Rectangle {
    width: 360
    height: 640
    color: "#fffdfd"
    XmlListModel {
         id: xmlModel1
         source: "http://www.psgtecheclub.com/getinfo.xml"
         query: "/auth/authsub"
         XmlRole { name: "usern"; query: "usern/string()" }
         XmlRole { name: "name"; query: "name/string()"  }
         XmlRole { name: "balance"; query: "balance/string()"  }
    }
    ListView {
                 id: lis;
                 x: 22
                 y: 56
                 width: 267; height: 198
                 visible: true
                 model: xmlModel1
                 delegate :Text {
                     text: "Username : "+usern+"\nName : "+name+"\nBalance : Rs."+balance;
                    font.family: "MS Sans Serif"
                    styleColor: "#e05227"
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 11
                    }


             }

             Text {
                 id: text1
                 x: 128
                 y: 19
                 color: "#f36868"
                 text: qsTr("MY PAGE")
                 font.bold: true
                 horizontalAlignment: Text.AlignHCenter
                 font.pixelSize: 23
             }

             Text {
                 id: text2
                 x: 47
                 y: 440
                 width: 217
                 height: 28
                 text: qsTr("recharge with prepaid card")
                 font.family: "Myriad Pro Cond"
                 font.pixelSize: 24

                 MouseArea {
                     id: mouse_area1
                     x: -12
                     y: 0
                     width: 237
                     height: 28
                     anchors.verticalCenterOffset: 0
                     anchors.topMargin: 0
                     anchors.verticalCenter: parent.verticalCenter
                     anchors.top: parent.top
                     onClicked: {
                         mainloader.source="prepaid.qml"
                     }
                 }
             }

             Text {
                 id: text3
                 x: 82
                 y: 505
                 width: 148
                 height: 28
                 text: qsTr("make a transaction")
                 font.pixelSize: 24
                 font.family: "Myriad Pro Cond"

                 MouseArea {
                     id: mouse_area2
                     x: 0
                     y: 0
                     anchors.rightMargin: 0
                     anchors.bottomMargin: 0
                     anchors.leftMargin: 0
                     anchors.topMargin: 0
                     anchors.fill: parent
                     onClicked: {mainloader.source="transact.qml"}
                 }
             }



}
