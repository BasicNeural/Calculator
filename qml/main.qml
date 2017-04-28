import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    id: home
    width: 360
    height: 660
    visible: true

    Rectangle {
        id: sqrt
        x: 0
        y: 120
        width: 90
        height: 90
        color: "white"
        property string str: "√"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += (parent.str + "(")
        }
    }
    Rectangle {
        id: dot
        x: 0
        y: 570
        width: 90
        height: 90
        color: "white"
        property string str: "."
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: zero
        x: 90
        y: 570
        width: 90
        height: 90
        color: "white"
        property string str: "0"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: plus
        x: 180
        y: 570
        width: 90
        height: 90
        color: "white"
        property string str: "+"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: equal
        x: 270
        y: 570
        width: 90
        height: 90
        color: "white"
        property string str: "="
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text = calculate(resultText.text)
        }
    }
    Rectangle {
        id: seven
        x: 0
        y: 480
        width: 90
        height: 90
        color: "white"
        property string str: "7"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: eight
        x: 90
        y: 480
        width: 90
        height: 90
        color: "white"
        property string str: "8"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: nine
        x: 180
        y: 480
        width: 90
        height: 90
        color: "white"
        property string str: "9"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: minus
        x: 270
        y: 480
        width: 90
        height: 90
        color: "white"
        property string str: "-"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: four
        x: 0
        y: 390
        width: 90
        height: 90
        color: "white"
        property string str: "4"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: five
        x: 90
        y: 390
        width: 90
        height: 90
        color: "white"
        property string str: "5"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: six
        x: 180
        y: 390
        width: 90
        height: 90
        color: "white"
        property string str: "6"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: mtp
        x: 270
        y: 390
        width: 90
        height: 90
        color: "white"
        property string str: "*"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: lbrack
        x: 0
        y: 210
        width: 90
        height: 90
        color: "white"
        property string str: "("
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: rbrack
        x: 90
        y: 210
        width: 90
        height: 90
        color: "white"
        property string str: ")"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: square
        x: 180
        y: 210
        width: 90
        height: 90
        color: "white"
        property string str: "^"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: remove
        x: 270
        y: 210
        width: 90
        height: 90
        color: "white"
        property string str: "c"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text = ""
        }
    }
    Rectangle {
        id: one
        x: 0
        y: 300
        width: 90
        height: 90
        color: "white"
        property string str: "1"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: two
        x: 90
        y: 300
        width: 90
        height: 90
        color: "white"
        property string str: "2"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: three
        x: 180
        y: 300
        width: 90
        height: 90
        color: "white"
        property string str: "3"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: div
        x: 270
        y: 300
        width: 90
        height: 90
        color: "white"
        property string str: "/"
        Text {
            text: parent.str
            font.pixelSize: 38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: resultText.text += parent.str
        }
    }
    Rectangle {
        id: result
        x: 0
        y: 0
        width: 360
        height: 120
        color: "#ffffff"

        Text {
            id: resultText
            x: 8
            y: 8
            width: 344
            height: 104
            wrapMode: Text.WrapAnywhere
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 38
        }
    }
}
