import QtQuick 2.9

Item {
    id: fullSlice
    objectName: "fullSlice"

    property int fullDiameterUnit: 160
    property int doubleBullsEyeDiameterUnit: 6
    property int bullsEyeDiameterUnit: 13
    property int innerPieDiameterUnit: 76
    property int tripleValueDiameterUnit: 84
    property int outerPieDiameterUnit: 124
    property int doubleValueDiameterUnit: 132
    property int borderWidth: 1
    property int numberOfSlices: 20
    property int number: 0
    property int valueNumber: 0

    property real doubleSliceDiameter: (doubleValueDiameterUnit/fullDiameterUnit)*fullSlice.width
    property real outerSliceDiameter: (outerPieDiameterUnit/fullDiameterUnit)*fullSlice.width
    property real tripleSliceDiameter: (tripleValueDiameterUnit/fullDiameterUnit)*fullSlice.width
    property real innerSliceDiameter: (innerPieDiameterUnit/fullDiameterUnit)*fullSlice.width
    property real bullsEyeDiameter: (bullsEyeDiameterUnit/fullDiameterUnit)*fullSlice.width

    property string font: "Sylfaen"
    property string fontColor: "black"
    property string doubleBullsEyeColor: "red"
    property string bullsEyeColor: "green"
    property string wireFrameColor: "grey"
    property string multiplierColor: doubleBullsEyeColor
    property string simpleColor: "black"

    anchors.fill: parent

    property int centerX: this.width/2
    property int centerY: this.height/2

    // Number
    DartsNumber {
        font: parent.font
        fontColor: parent.fontColor
        number: parent.number
        valueNumber: parent.valueNumber
    }

    // Double
    DartsMultiplierSlice {
        id: doubleSlice
        objectName: "doubleSlice"

        width: fullSlice.doubleSliceDiameter
        height: fullSlice.doubleSliceDiameter

        x: fullSlice.centerX-this.width/2
        y: fullSlice.centerY-this.height/2

        innerDiameter: fullSlice.outerSliceDiameter
        outerDiameter: fullSlice.doubleSliceDiameter

        fillColor: fullSlice.multiplierColor
        number: fullSlice.number
    }

    // Outer
    DartsOuterSimpleSlice {
        id: outerSlice
        objectName: "outerSlice"

        width: fullSlice.outerSliceDiameter
        height: fullSlice.outerSliceDiameter

        x: fullSlice.centerX-this.width/2
        y: fullSlice.centerY-this.height/2

        innerDiameter: fullSlice.tripleSliceDiameter
        outerDiameter: fullSlice.outerSliceDiameter

        fillColor: fullSlice.simpleColor
        number: fullSlice.number
    }

    // Triple
    DartsMultiplierSlice {
        id: tripleSlice
        objectName: "tripleSlice"

        width: fullSlice.tripleSliceDiameter
        height: fullSlice.tripleSliceDiameter

        x: fullSlice.centerX-this.width/2
        y: fullSlice.centerY-this.height/2

        innerDiameter: fullSlice.innerSliceDiameter
        outerDiameter: fullSlice.tripleSliceDiameter

        fillColor: fullSlice.multiplierColor
        number: fullSlice.number
    }

    // Inner
    DartsInnerSimpleSlice {
        id: innerSlice
        objectName: "innerSlice"

        width: fullSlice.innerSliceDiameter
        height: fullSlice.innerSliceDiameter

        x: fullSlice.centerX-this.width/2
        y: fullSlice.centerY-this.height/2

        innerDiameter: bullsEyeDiameter
        outerDiameter: innerSliceDiameter

        fillColor: fullSlice.simpleColor
        number: fullSlice.number
    }

    function innerSliceHit() {
        innerSlice.onHit()
    }

    function tripleSliceHit() {
        tripleSlice.onHit()
    }

    function outerSliceHit() {
        outerSlice.onHit()
    }

    function doubleSliceHit() {
        doubleSlice.onHit()
    }
}
