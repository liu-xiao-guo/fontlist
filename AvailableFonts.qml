import QtQuick 2.0
import Ubuntu.Components 1.1

Rectangle {
    color: "steelblue"
    property int size: 60

    ListView {
        clip: true
        anchors.fill: parent
        model: Qt.fontFamilies()

        delegate: Item {
            height: units.gu(4)
            width: ListView.view.width

            Row {
                height: parent.height
                width: parent.width

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: "I love you!"
                    width: units.gu(25)
                    font { family: modelData; pixelSize: size }
                }

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    text: modelData
                    color: "white"
                }
            }

            Rectangle {
                color: "red"
                height: 2
                width: parent.width
            }
        }
    }
}


