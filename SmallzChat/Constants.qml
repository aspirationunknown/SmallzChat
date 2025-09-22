pragma Singleton
import QtQuick

QtObject {
    readonly property int width: 800
    readonly property int height: 600

    property string relativeFontDirectory: "fonts"

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: Qt.application.font.family,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: Qt.application.font.family,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })

    readonly property color backgroundColor: "#EAEAEA"

    // Replaced StudioApplication usage with a plain URL property so the app
    // doesn't require the QtQuick.Studio.Application module at runtime.
    property url fontPath: Qt.resolvedUrl("../SmallzChatContent/" + relativeFontDirectory)
}
