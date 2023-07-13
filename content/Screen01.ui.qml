

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import ElopezBizCard
import QtQuick.Layouts
import QtQuick.Studio.Effects

Rectangle {
    id: root
    width: 1080
    height: 2400
    radius: 4

    border {
        color: "#82898f"
        width: 2
    }

    ColumnLayout {
        id: appLayout
        anchors.fill: parent

        Rectangle {
            id: pictureFrame
            width: appLayout.width / 3
            height: appLayout.width / 4
            color: "#ffffff"
            radius: 100
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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
                            radius: 1000
                        }
                    }
                }
            }

            Image {
                id: profileImg
                anchors.fill: parent
                source: "images/profilePic.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: separator
            width: 200
            height: 200
            color: "#82898f"
            Layout.preferredHeight: 2
            Layout.fillWidth: true
        }

        ColumnLayout {
            id: infoLayout
            Layout.fillWidth: true
            Layout.rightMargin: appLayout.width / 8
            Layout.leftMargin: appLayout.width / 8
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: nameLabel
                color: "#4f01a3"
                text: qsTr("Esteban Lopez")
                Layout.rightMargin: 64
                Layout.leftMargin: 64
                Layout.fillWidth: true
                font {
                    pixelSize: 64
                    bold: true
                }
            }

            Label {
                id: professionLabel
                color: "#000000"
                text: qsTr("Qt C++ Developer")
                Layout.rightMargin: 64
                Layout.leftMargin: 64
                Layout.fillWidth: true
                font {
                    pixelSize: 32
                    bold: true
                }
            }

            Label {
                id: emailLabel
                color: "#000000"
                text: qsTr("e.lopez7@hotmail.com")
                Layout.rightMargin: 64
                Layout.leftMargin: 64
                Layout.fillWidth: true
                font {
                    pixelSize: 32
                    bold: true
                }
            }

            Button {
                id: portfolioButton
                text: qsTr("Portfolio")
                Layout.rightMargin: 64
                Layout.leftMargin: 64
                Layout.fillWidth: true
                font {
                    pixelSize: 48
                    bold: true
                }
                background: Rectangle {
                    implicitWidth: 128
                    implicitHeight: 64
                    color: portfolioButton.down ? "#26004f" : "#4f01a3"
                    border.color: "#26282a"
                    border.width: 1
                    radius: 4
                }
            }
        }

        Rectangle {
            id: rectangle
            width: appLayout.width / 2
            height: appLayout.width / 3
            color: "#ffffff"
            radius: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            border {
                color: "#82898f"
                width: 2
            }

            PortfolioView {
                id: portfolioView
                anchors.fill: parent
                clip: true
            }
        }
    }

    Connections {
        target: portfolioButton
        function onClicked() {
            portfolioView.visible = !portfolioView.visible
        }
    }
}
