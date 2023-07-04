// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import ElopezBizCard
import QtQuick.VirtualKeyboard 6.5

Window {
    id: window
    width: Constants.width
    height: Constants.height

    visible: true
    title: "ElopezBizCard"


    Screen01 {
        id: mainScreen
        anchors.right: parent.right
        anchors.fill: parent
        anchors{
            topMargin: 24
            bottomMargin: 24
            leftMargin: 24
            rightMargin: 24
        }
    }
}

