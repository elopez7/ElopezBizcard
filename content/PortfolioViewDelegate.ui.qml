

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Studio.Effects

Item {
    id: delegate
    width: ListView.view.width
    height: 140

    Rectangle {
        id: rectangle
        color: "#82898f"
        anchors.fill: parent
        anchors.margins: 12
        visible: true
        radius: 16
        border.width: 2

        RowLayout {
            id: cardLayout
            anchors.fill: parent
            anchors.rightMargin: 24
            anchors.leftMargin: 24
            Rectangle {
                id: pictureFrame
                color: "#002244"
                radius: 100
                Layout.preferredHeight: 64
                Layout.preferredWidth: 64
                clip: true

                layer {
                    enabled: true
                    effect: OpacityMaskEffect {
                        maskSource: Item {
                            width: pictureFrame.width
                            height: pictureFrame.height
                            Rectangle {
                                anchors.centerIn: parent
                                width: pictureFrame.adapt ? pictureFrame.width : Math.min(
                                                                pictureFrame.width,
                                                                pictureFrame.height)
                                height: pictureFrame.adapt ? pictureFrame.height : width
                                radius: pictureFrame.radius
                            }
                        }
                    }
                }
                Image {
                    id: projectLogo
                    anchors.fill: parent
                    source: imgPath
                    fillMode: Image.PreserveAspectFit
                }
            }

            ColumnLayout {
                Label {
                    id: projectTitle
                    text: name
                    Layout.fillWidth: true
                    font {
                        pixelSize: 16
                        bold: true
                    }
                }
                Label {
                    id: projectDescription
                    text: description
                    wrapMode: Text.WordWrap
                    Layout.fillWidth: true
                    font {
                        pixelSize: 16
                    }
                }
            }
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        Connections {
            function onClicked() {}
        }
    }


    /*
    states: [
        State {
            name: "Highlighted"

            when: delegate.ListView.isCurrentItem
            PropertyChanges {
                target: label
                color: "#efefef"
                anchors.topMargin: 52
            }

            PropertyChanges {
                target: rectangle
                visible: false
            }
        }
    ]
    */
}
