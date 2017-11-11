import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

import "qml"

Window {
    id: mainWindow
    objectName: "mainWindow"

    //mainWindow properties
    property int mainWindowWidth: 1700
    property int mainWindowHeight: 1000
    property bool mainWindowFullscreen: false
    property color mainWindowBackgroundColor: "black"

    // gameModeText properties
    property int gameModeTextTopPadding: 40
    property int gameModeTextSidePadding: 450
    property int gameModeTextWidth: 400
    property string gameModeTextFontFamily: "Solid Edge Stencil"
    property int gameModeTextFontSize: 40
    property color gameModeTextFontColor: "silver"
    property bool gameModeTextStyleBold: false
    property bool gameModeTextStyleItalic: false

    // dartCounter properties
    property int dartCounterWidth: 50
    property int dartCounterHeight: 150
    property string dartCounterImage: "qrc:content/images/dartSilhouette.png"

    // mainRowLayout properties
    property int mainRowLayoutMargins: 40
    property int mainRowLayoutSpacing: 20

    // scoreBoard properties
    property int scoreBoardFrameWidth: 20
    property string scoreBoardFrameImage: "qrc:content/images/scoreBoardFrame.png"
    property real scoreBoardFrameOpacity: 1
    property color scoreBoardBackgroundColor: "transparent"
    property real scoreBoardBackgroundOpacity: 1
    property int scoreBoardScoreSpacing: 0
    property int scoreBoardPlayerTextWidth: 150
    property int scoreBoardPlayerTextHeight: 70
    property color scoreBoardPlayerTextBackgroundColor: "transparent"
    property real scoreBoardPlayerTextBackgroundOpacity: 1
    property string scoreBoardPlayerTextFontFamily: "Solid Edge Stencil"
    property int scoreBoardPlayerTextFontSize: 24
    property color scoreBoardPlayerTextFontColor: "white"
    property int scoreBoardPlayerFillerWidth: 70
    property color scoreBoardPlayerFillerBackgroundColor: "transparent"
    property real scoreBoardPlayerFillerBackgroundOpacity: 1
    property int scoreBoardScoreTextHeight: 50
    property int scoreBoardScoreTextBorderWidth: 1
    property color scoreBoardScoreTextBorderColor: "white"
    property color scoreBoardScoreTextBackgroundColor: "transparent"
    property real scoreBoardScoreTextBackgroundOpacity: 1
    property string scoreBoardScoreTextFontFamily: "Solid Edge Stencil"
    property int scoreBoardScoreTextFontSize: 24
    property color scoreBoardScoreTextFontColor: "white"

    // dartsTable properties
    property int dartsTableWidth: 700
    property color dartsTableFrameColor: "black"
    property string dartsTableFontFamily: "Solid Edge Stencil"
    property color dartsTableFontColor: "grey"
    property color dartsTableDoubleBullsEyeColor: "#D63A22"
    property color dartsTableBullsEyeColor: "#31994E"
    property color dartsTableWireFrameColor: "grey"
    property color dartsTableFirstMultiplierColor: "#D63A22"
    property color dartsTableSecondMultiplierColor: "#31994E"
    property color dartsTableFirstSimpleColor: "black"
    property color dartsTableSecondSimpleColor: "#F2F0B7"
    property string dartsTablePattern: "qrc:content/images/dartsTablePattern.png"

    property int loopVariable: 0

    visible: true
    width: mainWindowWidth
    height: mainWindowHeight
    visibility: mainWindowFullscreen ? "FullScreen" : "Windowed"
    title: qsTr("Darts")


    // Main window with background
    MainForm {
        anchors.fill: parent

        color: mainWindow.mainWindowBackgroundColor

        // ColumnLayout for text and main graphics
        ColumnLayout {
            id: mainColumnLayout

            anchors.fill: parent

            // RowLayout for game mode text and the dart graphics
            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter

                // Game mode text
                Text {
                    id: gameModeText
                    objectName: "gameModeText"

                    anchors.horizontalCenter: parent.horizontalCenter
                    // Padding for the space above the text
                    topPadding: mainWindow.gameModeTextTopPadding
                    // Left and right padding to separate the dart graphics and  to ensure the centering
                    leftPadding: mainWindow.gameModeTextSidePadding
                    rightPadding: mainWindow.gameModeTextSidePadding

                    text: "Game Mode" // ToDo: from actual settings
                    font.family: mainWindow.gameModeTextFontFamily
                    font.pixelSize: mainWindow.gameModeTextFontSize
                    font.bold: mainWindow.gameModeTextStyleBold
                    font.italic: mainWindow.gameModeTextStyleItalic
                    color: mainWindow.gameModeTextFontColor

                    width: mainWindow.gameModeTextWidth
                }

                RowLayout {

                    anchors.left: gameModeText.right

                    Item {
                        id: dartCounter0
                        objectName: "dartCounter0"

                        width: mainWindow.dartCounterWidth
                        height: mainWindow.dartCounterHeight

                        Image {
                            id: dart0
                            objectName: "dart0"

                            source: mainWindow.dartCounterImage

                            anchors.fill: parent
                            visible: true
                        }
                    }

                    Item {
                        id: dartCounter1
                        objectName: "dartCounter1"

                        width: mainWindow.dartCounterWidth
                        height: mainWindow.dartCounterHeight

                        Image {
                            id: dart1
                            objectName: "dart1"

                            source: mainWindow.dartCounterImage

                            anchors.fill: parent
                            visible: true
                        }
                    }

                    Item {
                        id: dartCounter2
                        objectName: "dartCounter2"

                        width: mainWindow.dartCounterWidth
                        height: mainWindow.dartCounterHeight

                        Image {
                            id: dart2
                            objectName: "dart2"

                            source: mainWindow.dartCounterImage

                            anchors.fill: parent
                            visible: true
                        }
                    }
                }
            }

            // RowLayout for the main graphics
            RowLayout {
                id: mainRowLayout
                objectName: "mainRowLayout"

                anchors.horizontalCenter: parent.horizontalCenter

                property int margins: mainWindow.mainRowLayoutMargins

                spacing: mainWindow.mainRowLayoutSpacing

                ScoreBoard{
                    id: scoreBoard0
                    objectName: "scoreBoard0"

                    frameWidth: mainWindow.scoreBoardFrameWidth
                    frameImage: mainWindow.scoreBoardFrameImage
                    frameOpacity: mainWindow.scoreBoardFrameOpacity
                    backgroundColor: mainWindow.scoreBoardBackgroundColor
                    backgroundOpacity: mainWindow.scoreBoardBackgroundOpacity
                    scoreSpacing: mainWindow.scoreBoardScoreSpacing
                    playerTextWidth: mainWindow.scoreBoardPlayerTextWidth
                    playerTextHeight: mainWindow.scoreBoardPlayerTextHeight
                    playerTextBackgroundColor: mainWindow.scoreBoardPlayerTextBackgroundColor
                    playerTextBackgroundOpacity: mainWindow.scoreBoardPlayerTextBackgroundOpacity
                    playerTextFontFamily: mainWindow.scoreBoardPlayerTextFontFamily
                    playerTextFontSize: mainWindow.scoreBoardPlayerTextFontSize
                    playerTextFontColor: mainWindow.scoreBoardPlayerTextFontColor
                    playerFillerWidth: mainWindow.scoreBoardPlayerFillerWidth
                    playerFillerBackgroundColor: mainWindow.scoreBoardPlayerFillerBackgroundColor
                    playerFillerBackgroundOpacity: mainWindow.scoreBoardPlayerFillerBackgroundOpacity
                    scoreTextHeight: mainWindow.scoreBoardScoreTextHeight
                    scoreTextBorderWidth: mainWindow.scoreBoardScoreTextBorderWidth
                    scoreTextBorderColor: mainWindow.scoreBoardScoreTextBorderColor
                    scoreTextBackgroundColor: mainWindow.scoreBoardScoreTextBackgroundColor
                    scoreTextBackgroundOpacity: mainWindow.scoreBoardScoreTextBackgroundOpacity
                    scoreTextFontFamily: mainWindow.scoreBoardScoreTextFontFamily
                    scoreTextFontSize: mainWindow.scoreBoardScoreTextFontSize
                    scoreTextFontColor: mainWindow.scoreBoardScoreTextFontColor

                    player1: "Aladár"
                    player2: "Béla"
                }

                // Ractangle to ensure the paddings
                Rectangle{
                    width: dartsTable.width + 2*mainRowLayout.margins
                    height: this.width

                    color: "transparent"

                    // DartsTable
                    DartsTable{
                            id: dartsTable

                            x: mainRowLayout.margins
                            y: mainRowLayout.margins

                            width: 700 // ToDo: from config file

                            frameColor: mainWindow.dartsTableFrameColor
                            fontFamily: mainWindow.dartsTableFontFamily
                            fontColor: mainWindow.dartsTableFontColor
                            doubleBullsEyeColor: mainWindow.dartsTableDoubleBullsEyeColor
                            bullsEyeColor: mainWindow.dartsTableBullsEyeColor
                            firstSimpleColor: mainWindow.dartsTableFirstSimpleColor
                            firstMultiplierColor: mainWindow.dartsTableFirstMultiplierColor
                            secondSimpleColor: mainWindow.dartsTableSecondSimpleColor
                            secondMultiplierColor: mainWindow.dartsTableSecondMultiplierColor
                            wireFrameColor: mainWindow.dartsTableWireFrameColor
                            pattern: mainWindow.dartsTablePattern
                        }
                }

                ScoreBoard{
                    id: scoreBoard1
                    objectName: "scoreBoard1"

                    frameWidth: mainWindow.scoreBoardFrameWidth
                    frameImage: mainWindow.scoreBoardFrameImage
                    frameOpacity: mainWindow.scoreBoardFrameOpacity
                    backgroundColor: mainWindow.scoreBoardBackgroundColor
                    backgroundOpacity: mainWindow.scoreBoardBackgroundOpacity
                    scoreSpacing: mainWindow.scoreBoardScoreSpacing
                    playerTextWidth: mainWindow.scoreBoardPlayerTextWidth
                    playerTextHeight: mainWindow.scoreBoardPlayerTextHeight
                    playerTextBackgroundColor: mainWindow.scoreBoardPlayerTextBackgroundColor
                    playerTextBackgroundOpacity: mainWindow.scoreBoardPlayerTextBackgroundOpacity
                    playerTextFontFamily: mainWindow.scoreBoardPlayerTextFontFamily
                    playerTextFontSize: mainWindow.scoreBoardPlayerTextFontSize
                    playerTextFontColor: mainWindow.scoreBoardPlayerTextFontColor
                    playerFillerWidth: mainWindow.scoreBoardPlayerFillerWidth
                    playerFillerBackgroundColor: mainWindow.scoreBoardPlayerFillerBackgroundColor
                    playerFillerBackgroundOpacity: mainWindow.scoreBoardPlayerFillerBackgroundOpacity
                    scoreTextHeight: mainWindow.scoreBoardScoreTextHeight
                    scoreTextBorderWidth: mainWindow.scoreBoardScoreTextBorderWidth
                    scoreTextBorderColor: mainWindow.scoreBoardScoreTextBorderColor
                    scoreTextBackgroundColor: mainWindow.scoreBoardScoreTextBackgroundColor
                    scoreTextBackgroundOpacity: mainWindow.scoreBoardScoreTextBackgroundOpacity
                    scoreTextFontFamily: mainWindow.scoreBoardScoreTextFontFamily
                    scoreTextFontSize: mainWindow.scoreBoardScoreTextFontSize
                    scoreTextFontColor: mainWindow.scoreBoardScoreTextFontColor

                    player1: "Csaba"
                    player2: "Dániel"
                }
            }
        }
    }

    // ++++++++++++++++++++++++++++++++++++++++++
    // +++          Start Animation           +++
    // ++++++++++++++++++++++++++++++++++++++++++
    // Start animation. For test purpose only
    SequentialAnimation {
        id: startAnimation

        property int duration: 30
        property int durationBetween: 20*duration

        running: true

        ScriptAction {
            script: innerSliceAnimation.start()
        }

        PauseAnimation {
            duration: startAnimation.durationBetween
        }

        ScriptAction {
            script: tripleSliceAnimation.start()
        }

        PauseAnimation {
            duration: startAnimation.durationBetween
        }

        ScriptAction {
            script: outerSliceAnimation.start()
        }

        PauseAnimation {
            duration: startAnimation.durationBetween
        }

        ScriptAction {
            script: doubleSliceAnimation.start()
        }

        PauseAnimation {
            duration: startAnimation.durationBetween
        }
    }

    SequentialAnimation {
        id: doubleSliceAnimation

        running: false
        loops: 5

        ScriptAction {
            script: dartsTable.slices["slice20"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice1"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice18"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice4"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice13"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice6"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice10"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice15"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice2"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice17"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice3"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice19"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice7"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice16"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice8"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice11"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice14"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice9"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice12"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice5"].doubleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }
    }

    SequentialAnimation {
        id: outerSliceAnimation

        running: false
        loops: 5

        ScriptAction {
            script: dartsTable.slices["slice20"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice1"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice18"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice4"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice13"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice6"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice10"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice15"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice2"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice17"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice3"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice19"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice7"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice16"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice8"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice11"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice14"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice9"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice12"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice5"].outerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }
    }

    SequentialAnimation {
        id: tripleSliceAnimation

        running: false
        loops: 5

        ScriptAction {
            script: dartsTable.slices["slice20"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice1"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice18"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice4"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice13"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice6"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice10"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice15"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice2"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice17"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice3"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice19"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice7"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice16"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice8"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice11"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice14"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice9"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice12"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice5"].tripleSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }
    }

    SequentialAnimation {
        id: innerSliceAnimation

        running: false
        loops: 5

        ScriptAction {
            script: dartsTable.slices["slice20"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice1"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice18"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice4"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice13"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice6"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice10"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice15"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice2"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice17"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice3"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice19"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice7"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice16"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice8"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice11"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice14"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice9"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice12"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }

        ScriptAction {
            script: dartsTable.slices["slice5"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }
    }
    // ------------------------------------------
    // ---          Start Animation           ---
    // ------------------------------------------
}
