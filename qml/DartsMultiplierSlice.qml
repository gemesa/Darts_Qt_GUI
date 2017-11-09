import QtQuick 2.9

Item {
    id: containerItem

    readonly property int numberOfSlices: 20
    readonly property real angleOffset: -Math.PI*(0.5+1/numberOfSlices)

    property color fillColor: "red"
    property color defaultFillColor: fillColor
    property int number: 0

    property real startAngle: angleOffset+number*2*Math.PI/numberOfSlices
    property real endAngle: startAngle+2*Math.PI/numberOfSlices

    property real innerDiameter: 0
    property real outerDiameter: width

    Canvas {
        id: multiplierSliceCanvas
        anchors.fill: parent
        onPaint: {
            var ctx = getContext("2d")
            ctx.reset()

            ctx.beginPath()
            ctx.fillStyle = fillColor
            ctx.arc(this.width/2, this.height/2, containerItem.outerDiameter/2, startAngle, endAngle, false)
            ctx.arc(this.width/2, this.height/2, containerItem.innerDiameter/2, endAngle, startAngle, true)
            ctx.fill()
        }
    }

    onFillColorChanged: {
        multiplierSliceCanvas.requestPaint()
    }

    function onHit() {
        defaultFillColor = fillColor
        hitAnimation.start()
    }

    SequentialAnimation on fillColor {
      id: hitAnimation

      running: false

      SequentialAnimation {
          ColorAnimation { to: "yellow"; duration: 200 }
          ColorAnimation { to: defaultFillColor; duration: 200 }
      }
    }
}

