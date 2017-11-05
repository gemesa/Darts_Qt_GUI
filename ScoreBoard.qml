import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Item {
    id: scoreBoard

    property int margins

    property string font: "Sylfaen"
    property string fontColor: "white"

    property string player1: ""
    property string player2: ""

    property alias repeater: scoreTable

    // Grid for the scoreboard
    anchors.top: parent.top
    width: scoreBoardMainContainer.width
    height: scoreBoardMainContainer.height

    Rectangle{
        id: scoreBoardMainContainer

        width: scoreBoardColumnLayout.width + 20  // ToDo: from config file
        height: scoreBoardColumnLayout.height + 20  // ToDo: from config file

        color: "transparent"

        // Corner image
        Image {
            id: cornerImage

            anchors.fill: parent
            source: "images/scoreBoardCorner.png"  // ToDo: from config file
        }

        Column{
            id: scoreBoardColumnLayout

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Row {
                id: scoreBoardRowLayout

                //anchors.top: mainRowLayout.top

                //padding: parent.margins
                spacing: 0  // ToDo: from config file

                // ++++++++++++++++++++++++++++++++++++++++++
                // +++            Spaceholders            +++
                // ++++++++++++++++++++++++++++++++++++++++++
                Rectangle {
                    width: 150  // ToDo: from config file
                    height: 70  // ToDo: from config file

                    color: "transparent"  // ToDo: from config file

                    Text {
                        anchors.fill: parent

                        text: scoreBoard.player1

                        font.pointSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: scoreBoard.font  // ToDo: from config file
                        color: scoreBoard.fontColor  // ToDo: from config file
                    }
                }

                Rectangle {
                    width: 70  // ToDo: from config file
                    height: 70  // ToDo: from config file

                    color: "transparent"  // ToDo: from config file
                }

                Rectangle {
                    width: 150  // ToDo: from config file
                    height: 70  // ToDo: from config file

                    color: "transparent"  // ToDo: from config file

                    Text {
                        anchors.fill: parent

                        text: scoreBoard.player2

                        font.pointSize: 24  // ToDo: from config file
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: scoreBoard.font  // ToDo: from config file
                        color: scoreBoard.fontColor  // ToDo: from config file
                    }
                }
            }

            // Scores
            Repeater {
                model: 12
                id: scoreTable

                Row{
                    id: scoreTableRowLayout

                    property string score0Text: ""
                    property string score1Text: ""
                    property int numberOfThrowText: index

                    Rectangle {
                        width: 150 // ToDo: from config file
                        height: 50  // ToDo: from config file

                        border.width: 1  // ToDo: from config file
                        border.color: "white"  // ToDo: from config file

                        color: "transparent"  // ToDo: from config file

                        Text {
                            id: score0
                            anchors.fill: parent

                            text: scoreTableRowLayout.score0Text

                            font.pointSize: 24  // ToDo: from config file
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: scoreBoard.font  // ToDo: from config file
                            color: scoreBoard.fontColor  // ToDo: from config file
                        }
                    }

                    Rectangle {
                        width: 70  // ToDo: from config file
                        height: 50  // ToDo: from config file

                        border.width: 1  // ToDo: from config file
                        border.color: "white"  // ToDo: from config file

                        color: "transparent"  // ToDo: from config file

                        Text {
                            anchors.fill: parent

                            text: scoreTableRowLayout.numberOfThrowText+1

                            font.pointSize: 24  // ToDo: from config file
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: scoreBoard.font  // ToDo: from config file
                            color: scoreBoard.fontColor  // ToDo: from config file
                        }
                    }

                    Rectangle {
                        width: 150  // ToDo: from config file
                        height: 50  // ToDo: from config file

                        border.width: 1  // ToDo: from config file
                        border.color: "white"  // ToDo: from config file

                        color: "transparent"  // ToDo: from config file

                        Text {
                            id: score1
                            anchors.fill: parent

                            text: scoreTableRowLayout.score0Text

                            font.pointSize: 24  // ToDo: from config file
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: scoreBoard.font  // ToDo: from config file
                            color: scoreBoard.fontColor  // ToDo: from config file
                        }
                    }
                }
            }
            // ------------------------------------------
            // ---            Spaceholders            ---
            // ------------------------------------------
        }
    }
}
