// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import QtQuick.Controls
import ElopezBizCard


ApplicationWindow {
    id: window
    width: 480
    height: 640

    visible: true
    title: "ElopezBizCard"


    Screen01 {
        id: mainScreen
        anchors.fill: parent
        anchors{
            topMargin: 24
            bottomMargin: 24
            leftMargin: 24
            rightMargin: 24
        }
    }
}

