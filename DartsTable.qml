import QtQuick 2.9
import QtGraphicalEffects 1.0

Item {
    // Parameters for sizing
    property int fullDiameterUnit: 160
    property int doubleBullsEyeDiameterUnit: 6
    property int bullsEyeDiameterUnit: 13
    property int innerPieDiameterUnit: 76
    property int tripleValueDiameterUnit: 84
    property int outerPieDiameterUnit: 124
    property int doubleValueDiameterUnit: 132
    property int borderWidth: 3
    property int numberOfSlices: 20

    // Offset to ensure the slice positioning
    property real angleOffset: -Math.PI*(0.5+1/numberOfSlices)

    // Color parameters
    property color frameColor: "black"
    property color fontColor: "grey"
    property color doubleBullsEyeColor: "#D63A22"
    property color bullsEyeColor: "#31994E"
    property color wireFrameColor: "grey"
    property color firstMultiplierColor: doubleBullsEyeColor
    property color secondMultiplierColor: bullsEyeColor
    property color firstSimpleColor: "black"
    property color secondSimpleColor: "#F2F0B7"

    // Font style
    property string fontFamily: "Algerian"

    property var slices: {
                            "slice1": slice1,
                            "slice2": slice2,
                            "slice3": slice3,
                            "slice4": slice4,
                            "slice5": slice5,
                            "slice6": slice6,
                            "slice7": slice7,
                            "slice8": slice8,
                            "slice9": slice9,
                            "slice10": slice10,
                            "slice11": slice11,
                            "slice12": slice12,
                            "slice13": slice13,
                            "slice14": slice14,
                            "slice15": slice15,
                            "slice16": slice16,
                            "slice17": slice17,
                            "slice18": slice18,
                            "slice19": slice19,
                            "slice20": slice20
                            }

    id: containerFrame
    objectName: "ContainerFrame"

    width: 700
    height: this.width

    property int centerX: this.width/2
    property int centerY: this.height/2

    // Frame
    Rectangle {
        id: dartsFrame
        objectName: "dartsFrame"

        width: (fullDiameterUnit/fullDiameterUnit)*containerFrame.width
        height: (fullDiameterUnit/fullDiameterUnit)*containerFrame.height

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: borderWidth
        border.color: containerFrame.wireFrameColor

        color: containerFrame.frameColor
        radius: (fullDiameterUnit/fullDiameterUnit)*containerFrame.width
    }

    // 20
    DartsFullSlice {
        id: slice20

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 0
        valueNumber: 20

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 1
    DartsFullSlice {
        id: slice1

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 1
        valueNumber: 1

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 18
    DartsFullSlice {
        id: slice18

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 2
        valueNumber: 18

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 4
    DartsFullSlice {
        id: slice4

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 3
        valueNumber: 4

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 13
    DartsFullSlice {
        id: slice13

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 4
        valueNumber: 13

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 6
    DartsFullSlice {
        id: slice6

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 5
        valueNumber: 6

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 10
    DartsFullSlice {
        id: slice10

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 6
        valueNumber: 10

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 15
    DartsFullSlice {
        id: slice15

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 7
        valueNumber: 15

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 2
    DartsFullSlice {
        id: slice2

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 8
        valueNumber: 2

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 17
    DartsFullSlice {
        id: slice17

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 9
        valueNumber: 17

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 3
    DartsFullSlice {
        id: slice3

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 10
        valueNumber: 3

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 19
    DartsFullSlice {
        id: slice19

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 11
        valueNumber: 19

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 7
    DartsFullSlice {
        id: slice7

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 12
        valueNumber: 7

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 16
    DartsFullSlice {
        id: slice16

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 13
        valueNumber: 16

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 8
    DartsFullSlice {
        id: slice8

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 14
        valueNumber: 8

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 11
    DartsFullSlice {
        id: slice11

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 15
        valueNumber: 11

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 14
    DartsFullSlice {
        id: slice14

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 16
        valueNumber: 14

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 9
    DartsFullSlice {
        id: slice9

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 17
        valueNumber: 9

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }

    // 12
    DartsFullSlice {
        id: slice12

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 18
        valueNumber: 12

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.firstMultiplierColor
        simpleColor: containerFrame.firstSimpleColor
    }

    // 5
    DartsFullSlice {
        id: slice5

        fullDiameterUnit: containerFrame.fullDiameterUnit
        doubleBullsEyeDiameterUnit: containerFrame.doubleBullsEyeDiameterUnit
        bullsEyeDiameterUnit: containerFrame.bullsEyeDiameterUnit
        innerPieDiameterUnit: containerFrame.innerPieDiameterUnit
        tripleValueDiameterUnit: containerFrame.tripleValueDiameterUnit
        outerPieDiameterUnit: containerFrame.outerPieDiameterUnit
        doubleValueDiameterUnit: containerFrame.doubleValueDiameterUnit
        borderWidth: containerFrame.borderWidth
        numberOfSlices: containerFrame.numberOfSlices
        number: 19
        valueNumber: 5

        font: containerFrame.fontFamily
        fontColor: containerFrame.fontColor
        doubleBullsEyeColor: containerFrame.doubleBullsEyeColor
        bullsEyeColor: containerFrame.bullsEyeColor
        wireFrameColor: containerFrame.wireFrameColor
        multiplierColor: containerFrame.secondMultiplierColor
        simpleColor: containerFrame.secondSimpleColor
    }


    // Bull's eye
    Rectangle {
        id: bullsEye
        objectName: "bullsEye"

        width: (bullsEyeDiameterUnit/fullDiameterUnit)*containerFrame.width
        height: (bullsEyeDiameterUnit/fullDiameterUnit)*containerFrame.height

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: borderWidth
        border.color: containerFrame.wireFrameColor

        color: containerFrame.bullsEyeColor
        radius: (bullsEyeDiameterUnit/fullDiameterUnit)/2*containerFrame.width
    }

    // Double Bull's eye
    Rectangle {
        id: doubleBullsEye
        objectName: "DoubleBullsEye"

        width: (doubleBullsEyeDiameterUnit/fullDiameterUnit)*containerFrame.width
        height: (doubleBullsEyeDiameterUnit/fullDiameterUnit)*containerFrame.height

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: borderWidth
        border.color: containerFrame.wireFrameColor

        color: containerFrame.doubleBullsEyeColor
        radius: this.width
    }

    // Pattern image
    Image {
        id: patternImage
        source: "images/pattern2.png"

        width: parent.width
        height: parent.height

        visible: false
    }

    OpacityMask {
        anchors.fill: parent
        source: patternImage
        maskSource: dartsFrame

//        opacity: 0.25
    }

    // Wires
    // Outer double wires
    Rectangle {
        width: (doubleValueDiameterUnit/fullDiameterUnit)*containerFrame.width+containerFrame.borderWidth/2
        height: (doubleValueDiameterUnit/fullDiameterUnit)*containerFrame.height+containerFrame.borderWidth/2

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: containerFrame.borderWidth
        border.color: containerFrame.wireFrameColor

        color: "transparent"
        radius: this.width
    }

    // Inner double wires
    Rectangle {
        width: (outerPieDiameterUnit/fullDiameterUnit)*containerFrame.width+containerFrame.borderWidth/2
        height: (outerPieDiameterUnit/fullDiameterUnit)*containerFrame.height+containerFrame.borderWidth/2

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: containerFrame.borderWidth
        border.color: containerFrame.wireFrameColor

        color: "transparent"
        radius: this.width
    }

    // Outer triple wires
    Rectangle {
        width: (tripleValueDiameterUnit/fullDiameterUnit)*containerFrame.width+containerFrame.borderWidth/2
        height: (tripleValueDiameterUnit/fullDiameterUnit)*containerFrame.height+containerFrame.borderWidth/2

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: containerFrame.borderWidth
        border.color: containerFrame.wireFrameColor

        color: "transparent"
        radius: this.width
    }

    // Inner triple wires
    Rectangle {
        width: (innerPieDiameterUnit/fullDiameterUnit)*containerFrame.width+containerFrame.borderWidth/2
        height: (innerPieDiameterUnit/fullDiameterUnit)*containerFrame.height+containerFrame.borderWidth/2

        x: containerFrame.centerX-this.width/2
        y: containerFrame.centerY-this.height/2

        border.width: containerFrame.borderWidth
        border.color: containerFrame.wireFrameColor

        color: "transparent"
        radius: this.width
    }

    // Radial wires
    Repeater {
        model: containerFrame.numberOfSlices
        id: radialWiresCanvasRepeater

        Canvas {
            id: radialWiresCanvas
            anchors.fill: parent

            onPaint: {
                var ctx = getContext("2d")
                ctx.reset()

                ctx.lineWidth = containerFrame.borderWidth
                ctx.strokeStyle = containerFrame.wireFrameColor

                ctx.translate(this.width/2, this.height/2)
                ctx.rotate(containerFrame.angleOffset+index*2*Math.PI/containerFrame.numberOfSlices)

                ctx.beginPath()
                ctx.moveTo((bullsEyeDiameterUnit/2)/fullDiameterUnit*containerFrame.width,0)
                ctx.lineTo(((doubleValueDiameterUnit+bullsEyeDiameterUnit)/2)/fullDiameterUnit*containerFrame.width, 0)
                ctx.stroke()
            }
        }
    }

    // OnClicked event for test purpose only
    // ToDo: Check the clikced area
    // onClicked: Called at releasing the mouse button
    // onPressed: Called at pressing the mouse button
    MouseArea {
        anchors.fill: parent

        onClicked: {
            if(mouse.x>containerFrame.width/2)
            {
                if(mouse.y>containerFrame.height/2)
                {
                    // Bottom-Right
                    doubleBullsEyeColor = "blue";
                }
                else
                {
                    // Top-Right
                    doubleBullsEyeColor = "red";
                }
            }
            else
            {
                if(mouse.y>containerFrame.height/2)
                {
                    // Bottom-Left
                    doubleBullsEyeColor = "orange";
                }
                else
                {
                    // Top-Left
                    doubleBullsEyeColor = "purple";
                }
            }

            wireFrameColor = doubleBullsEyeColor;

            // This lines update the radial wires too
            // ToDo: Tihs method is disgusting
            radialWiresCanvasRepeater.model = 0;
            radialWiresCanvasRepeater.model = containerFrame.numberOfSlices;
        }

        onPressed: {
            if(mouse.x>containerFrame.width/2)
            {
                if(mouse.y>containerFrame.height/2)
                {
                    // Bottom-Right
                    doubleBullsEyeColor = "blue";
                }
                else
                {
                    // Top-Right
                    doubleBullsEyeColor = "red";
                }
            }
            else
            {
                if(mouse.y>containerFrame.height/2)
                {
                    // Bottom-Left
                    doubleBullsEyeColor = "orange";
                }
                else
                {
                    // Top-Left
                    doubleBullsEyeColor = "purple";
                }
            }

            wireFrameColor = doubleBullsEyeColor;

            // This lines update the radial wires too
            // ToDo: Tihs method is disgusting
            radialWiresCanvasRepeater.model = 0;
            radialWiresCanvasRepeater.model = containerFrame.numberOfSlices;
        }
    }

    function changeColors() {
        radialWiresCanvasRepeater.model = 0;
        radialWiresCanvasRepeater.model = containerFrame.numberOfSlices;
    }
}
