

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
    radius: 4

    border {
        color: "#82898f"
        width: 2
    }

    ColumnLayout {
        id: appLayout
        anchors{
            fill: parent
            rightMargin: 8
            leftMargin: 8
        }

        Rectangle {
            id: pictureFrame
            color: "#ffffff"
            radius: 100
            Layout.preferredHeight: 8
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
            color: "#82898f"
            Layout.fillWidth: true
            Layout.minimumHeight: 2
            Layout.maximumHeight: 2
        }

        InformationCard {
            id: informationCard
            Layout.preferredHeight: 6
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Rectangle {
            id: rectangle
            color: "#ffffff"
            radius: 4
            Layout.preferredHeight: 10
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
        target: informationCard.portfolioButton
        function onClicked() {
            portfolioView.visible = !portfolioView.visible
        }
    }
}
