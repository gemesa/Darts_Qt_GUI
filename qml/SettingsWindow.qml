import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Window {
    id: settingsWindow

    property int buttonGridPadding: 40 // TODO: from config file
    property int buttonGridSpacing: 20 // TODO: from config file

    property int buttonWidth: 150 // TODO: from config file
    property int buttonHeight: 40 // TODO: from config file

    property int hideButtonSpacing: 40

    width: mainRowLayout.width
    height: mainRowLayout.height

    title: qsTr("Beállítások")
    color: "grey" // TODO: from config file

    flags: Qt.FramelessWindowHint

    // To make the window draggable
    MouseArea {
        property point clickPos: "1,1"

        anchors.fill: parent

        onPressed: {
            clickPos = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x,mouse.y-clickPos.y)
            settingsWindow.x += delta.x
            settingsWindow.y += delta.y
        }
    }

    // Conatiner item for the buttons and the input fields
    Item {
        id: containerItem

        anchors.fill: parent

        // States to set and hold the actual window configuration
        state: "defaultView"

        states: [
            // The default state
            State {
                name: "defaultView"
                PropertyChanges { target: settingsViews; width: 0; height: 0 }
                PropertyChanges { target: mainRowLayout; width: buttonGrid.width; height: buttonGrid.height }
            },

            // State for the players settings view
            State {
                name: "playersSettingsWindowVisible"
                PropertyChanges { target: playersSettingsWindow; visible: true}
                PropertyChanges { target: settingsViews; width: playersSettingsWindow.width; height: playersSettingsWindow.height }
                PropertyChanges { target: mainRowLayout; width: buttonGrid.width + playersSettingsWindow.width; height: buttonGrid.height > playersSettingsWindow.height ? buttonGrid.height : playersSettingsWindow.height }
            },

            // State for the game mode settings view
            State {
                name: "gameModeSettingsWindowVisible"
                PropertyChanges { target: gameModeSettingsWindow; visible: true}
                PropertyChanges { target: settingsViews; width: gameModeSettingsWindow.width; height: gameModeSettingsWindow.height }
                PropertyChanges { target: mainRowLayout; width: buttonGrid.width + gameModeSettingsWindow.width; height: buttonGrid.height > gameModeSettingsWindow.height ? buttonGrid.height : gameModeSettingsWindow.height }
            },

            // State for the server settings view
            State {
                name: "serverSettingsWindowVisible"
                PropertyChanges { target: serverSettingsWindow; visible: true}
                PropertyChanges { target: settingsViews; width: serverSettingsWindow.width; height: serverSettingsWindow.height }
                PropertyChanges { target: mainRowLayout; width: buttonGrid.width + serverSettingsWindow.width; height: buttonGrid.height > serverSettingsWindow.height ? buttonGrid.height : serverSettingsWindow.height }
            }
        ]

        // Row layout for the two main grid layout: buttons and input fields
        //        +-----------+-----------------------------+
        //        |           |                             |
        //        |           |                             |
        //        |           |                             |
        //        |           |                             |
        //        |  Buttons  |         Input fields        |
        //        |           |                             |
        //        |           |                             |
        //        |           |                             |
        //        |           |                             |
        //        +-----------+-----------------------------+
        RowLayout {
            id: mainRowLayout

            // Grid for the buttons. (The ColumnLayout does not have _padding_ property)
            //        +-----------+-----------------------------+
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤ Buttons ¤|         Input fields        |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        |¤¤¤¤¤¤¤¤¤¤¤|                             |
            //        +-----------+-----------------------------+
            Grid {
                id: buttonGrid

                anchors.top: parent.top

                width: settingsWindow.buttonWidth+2*settingsWindow.buttonGridPadding

                columns: 1

                padding: settingsWindow.buttonGridPadding
                spacing: settingsWindow.buttonGridSpacing

                // Button for the players settings
                Button {
                    id: playersSettingsButton

                    width: settingsWindow.buttonWidth
                    height: settingsWindow.buttonHeight

                    text: qsTr("Játékosok kezelése") // TODO: from translation file

                    // Change the view state
                    onClicked: {
                        containerItem.state = "playersSettingsWindowVisible"
                    }
                }

                // Button for the game mode settings
                Button {
                    id: gameModeSettingsButton

                    width: settingsWindow.buttonWidth
                    height: settingsWindow.buttonHeight

                    text: qsTr("Játékmód kiválasztása") // TODO: from translation file

                    // Change the view state
                    onClicked: {
                        containerItem.state = "gameModeSettingsWindowVisible"
                    }
                }

                // Button for the server settings
                Button {
                    id: serverSettingsButton

                    width: settingsWindow.buttonWidth
                    height: settingsWindow.buttonHeight

                    text: qsTr("Szerver beállítása") // TODO: from translation file

                    // Change the view state
                    onClicked: {
                        containerItem.state = "serverSettingsWindowVisible"
                    }
                }

                // Container item to ensure the incremented spacing for the hide button
                Item {

                    width: settingsWindow.buttonWidth
                    height: settingsWindow.buttonHeight + settingsWindow.hideButtonSpacing-settingsWindow.buttonGridSpacing

                    // Button to hide the window
                    Button {
                        id: hideButton

                        anchors.bottom: parent.bottom

                        width: settingsWindow.buttonWidth
                        height: settingsWindow.buttonHeight

                        text: qsTr("Elrejtés") // TODO: from translation file

                        // Change the visibility of the settings window
                        onClicked: {
                            settingsWindow.visible = false
                        }
                    }
                }
            }

            // Container item for the input fields
            //        +-----------+-----------------------------+
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |  Buttons  |¤¤¤¤¤¤¤¤ Input fields ¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        |           |¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤|
            //        +-----------+-----------------------------+
            Item {
                id: settingsViews

                width: playersSettingsWindow.width
                height: playersSettingsWindow.height

                // Grid layout to the player settings view
                //
                Grid {
                    id: playersSettingsWindow

                    columns: 2
                    rows: 8

                    padding: settingsWindow.buttonGridPadding
                    spacing: settingsWindow.buttonGridSpacing

                    columnSpacing: 2*settingsWindow.buttonGridSpacing

                    flow: Grid.TopToBottom

                    horizontalItemAlignment: Grid.AlignRight
                    verticalItemAlignment: Grid.AlignVCenter

                    visible: false

                    // Player text edit fields
                    PlayerTextEdit {
                        playerNumber: 1
                        playerName: "Arnold"

                        textFieldEnabled: true
                    }

                    PlayerTextEdit {
                        playerNumber: 2
                    }

                    PlayerTextEdit {
                        playerNumber: 3
                    }

                    PlayerTextEdit {
                        playerNumber: 4
                    }

                    PlayerTextEdit {
                        playerNumber: 5
                    }

                    PlayerTextEdit {
                        playerNumber: 6
                    }

                    PlayerTextEdit {
                        playerNumber: 7
                    }

                    PlayerTextEdit {
                        playerNumber: 8
                    }

                    PlayerTextEdit {
                        playerNumber: 9
                    }

                    PlayerTextEdit {
                        playerNumber: 10
                    }

                    PlayerTextEdit {
                        playerNumber: 11
                    }

                    PlayerTextEdit {
                        playerNumber: 12
                    }

                    PlayerTextEdit {
                        playerNumber: 13
                    }

                    PlayerTextEdit {
                        playerNumber: 14
                    }

                    PlayerTextEdit {
                        playerNumber: 15
                    }

                    PlayerTextEdit {
                        playerNumber: 16
                    }
                }

                // Game mode selection
                //
                Grid {
                    id: gameModeSettingsWindow

                    columns: 2

                    padding: settingsWindow.buttonGridPadding
                    spacing: settingsWindow.buttonGridSpacing

                    columnSpacing: 2*settingsWindow.buttonGridSpacing

                    visible: false

                    ButtonGroup {
                        id: gameModeRadioButtonGroup
                    }

                    GameModeRadioButton {
                        gameModeText: "301"

                        buttonGroup: gameModeRadioButtonGroup

                        checked: true
                    }

                    GameModeRadioButton {
                        gameModeText: "501"

                        buttonGroup: gameModeRadioButtonGroup
                    }

                    GameModeRadioButton {
                        gameModeText: "Cricket"

                        buttonGroup: gameModeRadioButtonGroup
                    }

                    GameModeRadioButton {
                        gameModeText: "301 Parchess"

                        buttonGroup: gameModeRadioButtonGroup
                    }
                }

                // Server properties
                //
                Grid {
                    id: serverSettingsWindow

                    columns: 2

                    padding: settingsWindow.buttonGridPadding
                    spacing: settingsWindow.buttonGridSpacing

                    columnSpacing: 2*settingsWindow.buttonGridSpacing

                    visible: false

                    // +++++++++++++++++++++++++++++++++++++++++++++
                    // Player text edit fields for test purpose only
                    // +++++++++++++++++++++++++++++++++++++++++++++

                    Text {
                        id: serverAddressLabel

                        text: "Server address: "

                        font.pixelSize: 24
                    }

                    TextField {
                        id: serverAddress

                        width: 200

                        font.pixelSize: 24

                        inputMask: "000.000.000.000;_"
                        text: "192.168.  1.  1"
                    }

                    Text {
                        id: passwordLabel

                        text: "Password: "

                        font.pixelSize: 24
                    }

                    TextField {
                        id: password

                        width: 200

                        font.pixelSize: 24

                        echoMode: TextInput.Password
                        placeholderText: "Password"
                        maximumLength: 12
                    }

                    // ---------------------------------------------
                    // Player text edit fields for test purpose only
                    // ---------------------------------------------
                }
            }
        }
    }
}
