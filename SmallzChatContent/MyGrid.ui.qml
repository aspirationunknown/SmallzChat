import QtQuick
import QtQuick.Controls

Grid {
    id: grid
    rows: 3
    columns: 1
    flow: Grid.LeftToRight
    layoutDirection: Qt.LeftToRight
    horizontalItemAlignment: Grid.AlignHCenter
    verticalItemAlignment: Grid.AlignTop
    TextArea {
        id: textArea
        width: grid.width
        height: grid.height * 0.60
        color: "#4685a7"
        text: "Response will be here"
        font.pixelSize: 14
        verticalAlignment: Text.AlignTop
        selectByKeyboard: true
        placeholderTextColor: "#7a7ff7"
        readOnly: true
    }

    TextEdit {
        id: textEdit
        width: grid.width
        height: grid.height * 0.3
        color: "#4685a7"
        text: qsTr("Enter prompt here")
        font.pixelSize: 14
        wrapMode: Text.WordWrap
        rightPadding: 10
        bottomPadding: 10
        leftPadding: 10
        topPadding: 10
    }

    Button {
        id: sendButton
        text: qsTr("Send")
        font.pixelSize: 14
        icon.source: "../Images/icons8-send-button-24.png"
    }
}
