

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root
    property alias portfolioButton: portfolioButton

    ColumnLayout {
        id: informationCardLayou
        anchors.fill: parent

        Label {
            id: nameLabel
            color: "#4f01a3"
            text: qsTr("Esteban Lopez")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            fontSizeMode: Text.Fit
            Layout.preferredHeight: 6
            Layout.fillHeight: true
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
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            Layout.preferredHeight: 2
            Layout.fillHeight: true
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
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            font {
                pixelSize: 32
                bold: true
            }
        }

        Button {
            id: portfolioButton
            text: qsTr("Portfolio")
            Layout.preferredHeight: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            font {
                pixelSize: 48
                bold: true
            }
            background: Rectangle {
                anchors.fill: parent
                color: portfolioButton.down ? "#26004f" : "#4f01a3"
                border.color: "#26282a"
                border.width: 1
                radius: 4
            }
        }
    }
}
