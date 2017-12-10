import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    id: playerTextEditContainer

    width: playerNumberText.width+playerNameTextField.width
    height: playerNameTextField.height

    property int playerNumber: 1
    property string playerName: "Arnold"

    property bool textFieldEnabled: false
    property int textFieldMaxLength: 125

    TextMetrics {
        id: metricsOfPlayerName

        font.family: playerNameTextField.font.family
        font.pixelSize: playerNameTextField.font.pixelSize
        text: playerNameTextField.text
    }

    Text {
        id: playerNumberText

        text: qsTr("%1. játékos: ").arg(playerTextEditContainer.playerNumber)

        font.pixelSize: 24
    }

    TextField {
        id: playerNameTextField

        width: playerTextEditContainer.textFieldMaxLength+15

        anchors.left: playerNumberText.right
        anchors.verticalCenter: playerNumberText.verticalCenter

        font.pixelSize: 24

        enabled: playerTextEditContainer.textFieldEnabled

        placeholderText: playerTextEditContainer.playerName

        onTextChanged: {
            metricsOfPlayerName.text = text
            if(metricsOfPlayerName.width>playerTextEditContainer.textFieldMaxLength)
            {
                text = getText(0,length-1)
                maximumLength = length
            }
            else if(length<maximumLength)
            {
                maximumLength = maximumLength+1
            }
        }
    }
}
