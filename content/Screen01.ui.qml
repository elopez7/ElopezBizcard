

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
    width: Constants.width
    height: Constants.height
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
            width: 200
            height: 200
            color: "#ffffff"
            radius: 100
            Layout.topMargin: 8
            Layout.preferredHeight: 64
            Layout.rightMargin: 128
            Layout.leftMargin: 128
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
                            radius: pictureFrame.radius
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
            Layout.rightMargin: 64
            Layout.leftMargin: 64
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: nameLabel
                color: "#4f01a3"
                text: qsTr("Esteban Lopez")
                Layout.fillWidth: true
                font {
                    pixelSize: 28
                    bold: true
                }
            }

            Label {
                id: professionLabel
                color: "#000000"
                text: qsTr("Qt C++ Developer")
                Layout.fillWidth: true
                font {
                    pixelSize: 24
                    bold: true
                }
            }

            Label {
                id: emailLabel
                color: "#000000"
                text: qsTr("e.lopez7@hotmail.com")
                Layout.fillWidth: true
                font {
                    pixelSize: 24
                    bold: true
                }
            }

            Button {
                id: portfolioButton
                text: qsTr("Portfolio")
                font.pixelSize: 16
                font.bold: true
                Layout.rightMargin: 64
                Layout.leftMargin: 64
                Layout.fillWidth: true
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    color: portfolioButton.down ? "#26004f" : "#4f01a3"
                    border.color: "#26282a"
                    border.width: 1
                    radius: 4
                }
            }
        }

        Rectangle {
            id: rectangle
            width: 200
            height: 200
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
