import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQml.StateMachine 1.0 as DSM

Window {
    id: settingsWindow

    property int buttonGridPadding: 40 // TODO: from config file
    property int buttonGridSpacing: 20 // TODO: from config file

    property int buttonWidth: 150 // TODO: from config file
    property int buttonHeight: 40 // TODO: from config file

    width: 2*buttonGridPadding+buttonWidth
    height: 2*buttonGridPadding+2*buttonGrid.spacing+3*buttonHeight

    title: qsTr("Beállítások")
    color: "grey" // TODO: from config file

    Item {
        id: containerItem

        anchors.fill: parent

        state: "smallWindow"

        states: [
            State {
                name: "bigWindow"
                PropertyChanges { target: settingsWindow; width: 500; height: 500}
            },

            State {
                name: "smallWindow"
                PropertyChanges { target: settingsWindow; width: 2*buttonGridPadding+buttonWidth; height: 2*buttonGridPadding+2*buttonGrid.spacing+3*buttonHeight}
            }
        ]

        Grid {
            id: buttonGrid

            anchors.fill: parent

            columns: 1

            padding: settingsWindow.buttonGridPadding
            spacing: settingsWindow.buttonGridSpacing

            Button {
                id: playersSettingsButton

                width: settingsWindow.buttonWidth
                height: settingsWindow.buttonHeight

                text: qsTr("Játékosok kezelése") // TODO: from translation file

                onClicked: {
                    containerItem.state = containerItem.state == "smallWindow" ? "bigWindow" : "smallWindow"
                }
            }

            Button {
                id: gameModeSettingsButton

                width: settingsWindow.buttonWidth
                height: settingsWindow.buttonHeight

                text: qsTr("Játékmód kiválasztása") // TODO: from translation file
            }

            Button {
                id: serverSettingsButton

                width: settingsWindow.buttonWidth
                height: settingsWindow.buttonHeight

                text: qsTr("Szerver beállítása") // TODO: from translation file
            }
        }

        DSM.StateMachine {
            id: settingsWindowStateMachine

            initialState: chooseState

            running: true

            DSM.State {
                id: chooseState

                DSM.SignalTransition {
                    targetState: playersSettingsState
                    signal: playersSettingsButton.clicked
                }

                DSM.SignalTransition {
                    targetState: gameModeSettingsState
                    signal: gameModeSettingsButton.clicked
                }

                DSM.SignalTransition {
                    targetState: serverSettingsState
                    signal: serverSettingsButton.clicked
                }
            }

            DSM.State {
                id: playersSettingsState

                DSM.SignalTransition {
                    targetState: gameModeSettingsState
                    signal: gameModeSettingsButton.clicked
                }

                DSM.SignalTransition {
                    targetState: serverSettingsState
                    signal: serverSettingsButton.clicked
                }

                onEntered: console.log("playerSettingsState entered")
                onExited: console.log("playerSettingsState exited")
            }

            DSM.State {
                id: gameModeSettingsState

                DSM.SignalTransition {
                    targetState: playersSettingsState
                    signal: playersSettingsButton.clicked
                }

                DSM.SignalTransition {
                    targetState: serverSettingsState
                    signal: serverSettingsButton.clicked
                }

                onEntered: {
                    console.log("gameModeSettingsState entered")
                    containerItem.state = "bigWindow"
                }

                onExited: {
                    console.log("gameModeSettingsState exited")
                    containerItem.state = "smallWindow"
                }
            }

            DSM.State {
                id: serverSettingsState

                DSM.SignalTransition {
                    targetState: playersSettingsState
                    signal: playersSettingsButton.clicked
                }

                DSM.SignalTransition {
                    targetState: gameModeSettingsState
                    signal: gameModeSettingsButton.clicked
                }

                onEntered: console.log("serverSettingsState entered")
                onExited: console.log("serverSettingsState exited")
            }
        }
    }
}
