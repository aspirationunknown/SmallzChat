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
        readOnly: true
        text: qsTr("Read Only Text Area")
    }

    TextEdit {
        id: textEdit
        width: grid.width
        height: grid.height * 0.3
        text: qsTr("Text Edit")
        font.pixelSize: 12
        wrapMode: Text.WordWrap
    }

    Button {
        id: button
        text: qsTr("Button")

        signal clicked(string prompt)
    }
}
