import QtQuick 2.9

// ToDo: Az egész itt!
Item {
    id: textContainer
    objectName: "textContainer"

    property int fullDiameterUnit: 160
    property int doubleValueDiameterUnit: 132
    property var textDiameterUnit: (fullDiameterUnit+doubleValueDiameterUnit)/2
    property var textDiameterRatio: textDiameterUnit/fullDiameterUnit

    property int numberOfSlices: 20
    property var angleOffset: -Math.PI*(0.5+1/numberOfSlices)

    property var startAngle: angleOffset+number*2*Math.PI/numberOfSlices
    property var endAngle: startAngle+2*Math.PI/numberOfSlices

    property string font: "Sylfaen"
    property string fontColor: "black"
    property int number: 0
    property int valueNumber: 0

    anchors.fill: parent

    Text {
        x: (textContainer.width/2+Math.cos(textContainer.startAngle+Math.PI/textContainer.numberOfSlices)*textContainer.textDiameterRatio*textContainer.width/2)-width/2
        y: (textContainer.height/2+Math.sin(textContainer.startAngle+Math.PI/textContainer.numberOfSlices)*textContainer.textDiameterRatio*textContainer.height/2)-height/2

        property real fontSize: (fullDiameterUnit-doubleValueDiameterUnit)/fullDiameterUnit*parent.width/4+1

        font.pointSize: fontSize
        horizontalAlignment: Text.AlignHCenter
        font.family: textContainer.font
        color: textContainer.fontColor
        text: valueNumber
    }
}

