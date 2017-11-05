import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    id: mainWindow

    visible: true
    width: 1700
    height: 1000
    //visibility: "FullScreen"
    title: qsTr("Darts")

    property int loopVariable: 0

    // Main window with background
    MainForm {
        anchors.fill: parent

        color: "black" // ToDo: from config file

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
                    anchors.horizontalCenter: parent.horizontalCenter
                    // Padding for the space above the text
                    topPadding: 40 // ToDo: from config file
                    // Left and right padding to separate the dart graphics and  to ensure the centering
                    leftPadding: 450 // ToDo: from config file
                    rightPadding: 450 // ToDo: from config file

                    text: "Game Mode" // ToDo: from actual settings
                    font.pixelSize: 40 // ToDo: from config file
                    font.bold: true // ToDo: from config file
                    color: "silver" // ToDo: from config file

                    width: 400 // ToDo: from config file
                }

                RowLayout {

                    anchors.left: gameModeText.right

                    Item {
                        width: 50 // ToDo: from config file or calculate
                        height: 150 // ToDo: from config file or calculate


                        Image {
                            id: dart0
                            source: "images/dart_silhouette_transparent_invert.png" // ToDo: from config file

                            anchors.fill: parent
                            smooth: true
                            visible: false
                        }
                    }

                    Item {
                        width: 50 // ToDo: from config file or calculate
                        height: 150 // ToDo: from config file or calculate

                        Image {
                            id: dart1
                            source: "images/dart_silhouette_transparent_invert.png" // ToDo: from config file

                            anchors.fill: parent
                            smooth: false
                            visible: false
                        }
                    }

                    Item {
                        width: 50 // ToDo: from config file or calculate
                        height: 150 // ToDo: from config file or calculate

                        Image {
                            id: dart2
                            source: "images/dart_silhouette_transparent_invert.png" // ToDo: from config file

                            anchors.fill: parent
                            visible: false
                        }
                    }
                }
            }

            // RowLazout for the main graphics
            RowLayout {
                id: mainRowLayout

                anchors.horizontalCenter: parent.horizontalCenter

                property int margins: 40  // ToDo: from config file

                spacing: 20 // ToDo: from config file

                ScoreBoard{
                    id: scoreBoard0

                    margins: mainRowLayout.margins
                    font: "Solid Edge Stencil"

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
                            font: "Solid Edge Stencil" // ToDo: from config file

                            // ToDo: Get the parameters from config file

                //            borderColor: "silver"
                //            fontColor: "silver"
                //            bullsEyeColor: "grey"
                //            doubleBullsEyeColor: "grey"
                //            firstSimpleColor: "grey"
                //            firstMultiplierColor: "grey"
                //            secondSimpleColor: "grey"
                //            secondMultiplierColor: "grey"
                //            frameColor: "grey"
                        }
                }

                ScoreBoard{
                    id: scoreBoard1

                    margins: mainRowLayout.margins
                    font: "Solid Edge Stencil"

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

        property int duration: 50
        property int durationBetween: 1000

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

        ScriptAction {
            script: dartsTable.slices["slice20"].doubleSliceHit()
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

        ScriptAction {
            script: dartsTable.slices["slice20"].outerSliceHit()
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

        ScriptAction {
            script: dartsTable.slices["slice20"].tripleSliceHit()
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

        ScriptAction {
            script: dartsTable.slices["slice20"].innerSliceHit()
        }

        PauseAnimation {
            duration: startAnimation.duration
        }
    }
    // ------------------------------------------
    // ---          Start Animation           ---
    // ------------------------------------------
}
