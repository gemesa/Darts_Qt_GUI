import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    id: gameModeRadioButtonContainer

    width: gameModeText.width+gameModeRadio.width
    height: gameModeText.height

    property alias checked: gameModeRadio.checked
    property string gameModeText: "Undefined"
    property ButtonGroup buttonGroup: null

    onButtonGroupChanged: {
        if (buttonGroup)
            gameModeRadio.enabled = true
    }

    RadioButton {
        id: gameModeRadio

        ButtonGroup.group: gameModeRadioButtonContainer.buttonGroup

        enabled: false
    }

    Text {
        id: gameModeText

        width: font.pixelSize*10

        anchors.left: gameModeRadio.right
        anchors.verticalCenter: gameModeRadio.verticalCenter

        text: gameModeRadioButtonContainer.gameModeText

        font.pixelSize: 24
    }
}
