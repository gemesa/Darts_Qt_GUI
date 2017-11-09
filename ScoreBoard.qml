import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Item {
    id: scoreBoard

    property int frameWidth: 20
    property string frameImage: "images/scoreBoardFrame.png"
    property real frameOpacity: 1
    property color backgroundColor: "transparent"
    property real backgroundOpacity: 1
    property int scoreSpacing: 0
    property int playerTextWidth: 150
    property int playerTextHeight: 70
    property color playerTextBackgroundColor: "transparent"
    property real playerTextBackgroundOpacity: 1
    property string playerTextFontFamily: "Solid Edge Stencil"
    property int playerTextFontSize: 24
    property color playerTextFontColor: "white"
    property int playerFillerWidth: 70
    property color playerFillerBackgroundColor: "transparent"
    property real playerFillerBackgroundOpacity: 1
    property int scoreTextHeight: 50
    property int scoreTextBorderWidth: 1
    property color scoreTextBorderColor: "white"
    property color scoreTextBackgroundColor: "transparent"
    property real scoreTextBackgroundOpacity: 1
    property string scoreTextFontFamily: "Solid Edge Stencil"
    property int scoreTextFontSize: 24
    property color scoreTextFontColor: "white"

    property string player1: ""
    property string player2: ""

    // Grid for the scoreboard
    anchors.top: parent.top
    width: scoreBoardMainContainer.width
    height: scoreBoardMainContainer.height

    Rectangle{
        id: scoreBoardMainContainer

        width: scoreBoardColumnLayout.width + scoreBoard.frameWidth
        height: scoreBoardColumnLayout.height + scoreBoard.frameWidth

        color: scoreBoard.backgroundColor
        opacity: scoreBoard.backgroundOpacity

        // Frame image
        Image {
            id: frameImage

            anchors.fill: parent
            source: scoreBoard.frameImage
            opacity: scoreBoard.frameOpacity
        }

        Column{
            id: scoreBoardColumnLayout

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Row {
                id: scoreBoardRowLayout

                spacing: scoreBoard.scoreSpacing

                // ++++++++++++++++++++++++++++++++++++++++++
                // +++            Spaceholders            +++
                // ++++++++++++++++++++++++++++++++++++++++++
                Rectangle {
                    width: scoreBoard.playerTextWidth
                    height: scoreBoard.playerTextHeight

                    color: scoreBoard.playerTextBackgroundColor
                    opacity: scoreBoard.playerTextBackgroundOpacity

                    Text {
                        anchors.fill: parent

                        text: scoreBoard.player1

                        font.pointSize: scoreBoard.playerTextFontSize
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: scoreBoard.playerTextFontFamily
                        color: scoreBoard.playerTextFontColor
                    }
                }

                Rectangle {
                    width: scoreBoard.playerFillerWidth
                    height: scoreBoard.playerTextHeight

                    color: scoreBoard.playerFillerBackgroundColor
                    opacity: scoreBoard.playerFillerBackgroundOpacity
                }

                Rectangle {
                    width: scoreBoard.playerTextWidth
                    height: scoreBoard.playerTextHeight

                    color: scoreBoard.playerTextBackgroundColor
                    opacity: scoreBoard.playerTextBackgroundOpacity

                    Text {
                        anchors.fill: parent

                        text: scoreBoard.player2

                        font.pointSize: scoreBoard.playerTextFontSize
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: scoreBoard.playerTextFontFamily
                        color: scoreBoard.playerTextFontColor
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
                        width: scoreBoard.playerTextWidth
                        height: scoreBoard.scoreTextHeight

                        border.width: scoreBoard.scoreTextBorderWidth
                        border.color: scoreBoard.scoreTextBorderColor

                        color: scoreBoard.scoreTextBackgroundColor
                        opacity: scoreBoard.scoreTextBackgroundOpacity

                        Text {
                            id: score0
                            anchors.fill: parent

                            text: scoreTableRowLayout.score0Text

                            font.pointSize: scoreBoard.scoreTextFontSize
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: scoreBoard.scoreTextFontFamily
                            color: scoreBoard.scoreTextFontColor
                        }
                    }

                    Rectangle {
                        width: scoreBoard.playerFillerWidth
                        height: scoreBoard.scoreTextHeight

                        border.width: scoreBoard.scoreTextBorderWidth
                        border.color: scoreBoard.scoreTextBorderColor

                        color: scoreBoard.scoreTextBackgroundColor
                        opacity: scoreBoard.scoreTextBackgroundOpacity

                        Text {
                            anchors.fill: parent

                            text: scoreTableRowLayout.numberOfThrowText+1

                            font.pointSize: scoreBoard.scoreTextFontSize
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: scoreBoard.scoreTextFontFamily
                            color: scoreBoard.scoreTextFontColor
                        }
                    }

                    Rectangle {
                        width: scoreBoard.playerTextWidth
                        height: scoreBoard.scoreTextHeight

                        border.width: scoreBoard.scoreTextBorderWidth
                        border.color: scoreBoard.scoreTextBorderColor

                        color: scoreBoard.scoreTextBackgroundColor
                        opacity: scoreBoard.scoreTextBackgroundOpacity

                        Text {
                            id: score1
                            anchors.fill: parent

                            text: scoreTableRowLayout.score0Text

                            font.pointSize: scoreBoard.scoreTextFontSize
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: scoreBoard.scoreTextFontFamily
                            color: scoreBoard.scoreTextFontColor
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
