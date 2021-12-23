import QtQuick 2.0
import QtQuick.Window 2.3
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.4
import QtQuick 2.15
import QtQuick.Controls 1.2
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: desktop
    visible: true
    font.family: "IRANSans"
    color: "blue"

    /* Application Background */


     Rectangle {
        id: popupz
        x: 100
        y: 100
        width: 1000
        height: 600
        radius: 10
        visible: false
        focus: true

        property var floating: false
        property var pwidth: 0
        property var pheight: 0

        Drag.active: true
           MouseArea{
                anchors.fill: parent
                drag.target: parent
            }

        Rectangle {
            color: "transparent"
            width: parent.width
            height: 20
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            radius: 40
            anchors.topMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.rightMargin: 10

            ToolButton {
                anchors.right: parent.right
                width: 25
                height: 25

                Image {
                    source: "file:///stor/usr/share/icons/breeze-close.svg"
                    anchors.fill: parent
                    sourceSize: Qt.size( parent.width, parent.height )
                }

                onClicked: {
                    popupz.visible = false
                }

                id: panjere_btnClose
            }

            ToolButton {
                id: panjere_btnFloat
                anchors.right: panjere_btnClose.left
                anchors.rightMargin: 5
                width: 25
                height: 25

                Image {
                    source: "file:///stor/usr/share/icons/breeze-float.svg"
                    anchors.fill: parent
                    sourceSize: Qt.size( parent.width, parent.height )
                }



                onClicked: {
                }
            }

            Text {
                anchors.centerIn: parent
                text: "Barge"
            }
        }
    }
    
    Text {
        id: background_app
        objectName: "background_app"
        text: ""
        visible: false
    }

    Text {
        id: icon_app
        objectName: "icon_app"
        text: "file:///stor/usr/share/icons/breeze-app.svg"
        visible: false
    }

    Text {
        id: restore_app
        objectName: "restore_app"
        text: ""
        visible: false
    }

    Text {
        id: act
        objectName: "act"
    }

    /* Keyless keyboard layer Background */

    Text {
        objectName: "keyless"
        id: keyless
        visible: false
        text: ''
    }

    Shortcut {
        sequence: "Esc"
        onActivated: {
            background_app.text = 'pysys';
        }
    }

    Shortcut {
        sequence: "Alt+F4"
        onActivated: {
            background_app.text = 'pysys';
        }
    }

    Shortcut {
        sequence: "Ctrl+A"
        onActivated: {
            background_app.text = 'rma';
        }
    }


    /* Background Image */

    background: Rectangle {
        anchors.fill: parent
        Image {
            anchors.fill: parent
            id: background
            objectName: "background"
        }
    }

    /* Topbar */
    Rectangle {
        color: "#A0FFFFFF"
        anchors.top: parent.top
        width: parent.width
        height: 30
        id: topbar

        Row {
            anchors.verticalCenter: parent.verticalCenter
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-shutdown.svg'
                icon.color: 'white'
                onClicked: {
                    background_app.text = 'pysys';
                }
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-w100.svg'
                icon.color: 'white'
                objectName: 'shell_w100'
                visible: false
                onClicked: {
                    background_app.text = 'wifi';
                }
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-w080.svg'
                icon.color: 'white'
                objectName: 'shell_w080'
                visible: false
                onClicked: {
                    background_app.text = 'wifi';
                }
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-w040.svg'
                icon.color: 'white'
                objectName: 'shell_w040'
                visible: false
                onClicked: {
                    background_app.text = 'wifi';
                }
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-w020.svg'
                icon.color: 'red'
                objectName: 'shell_w020'
                visible: false
                onClicked: {
                    background_app.text = 'wifi';
                }
            }

            /* Battery */
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-000.svg'
                icon.color: 'red'
                objectName: 'battery_000'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-010.svg'
                icon.color: 'red'
                objectName: 'battery_010'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-020.svg'
                icon.color: 'white'
                objectName: 'battery_020'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-030.svg'
                icon.color: 'white'
                objectName: 'battery_030'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-040.svg'
                icon.color: 'white'
                objectName: 'battery_040'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-050.svg'
                icon.color: 'white'
                objectName: 'battery_050'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-060.svg'
                icon.color: 'white'
                objectName: 'battery_060'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-070.svg'
                icon.color: 'white'
                objectName: 'battery_070'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-080.svg'
                icon.color: 'white'
                objectName: 'battery_080'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-090.svg'
                icon.color: 'white'
                objectName: 'battery_090'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-100.svg'
                icon.color: 'white'
                objectName: 'battery_100'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-000-charging.svg'
                icon.color: 'green'
                objectName: 'battery_000_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-010-charging.svg'
                icon.color: 'green'
                objectName: 'battery_010_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-020-charging.svg'
                icon.color: 'green'
                objectName: 'battery_020_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-030-charging.svg'
                icon.color: 'green'
                objectName: 'battery_030_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-040-charging.svg'
                icon.color: 'green'
                objectName: 'battery_040_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-050-charging.svg'
                icon.color: 'green'
                objectName: 'battery_050_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-060-charging.svg'
                icon.color: 'green'
                objectName: 'battery_060_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-070-charging.svg'
                icon.color: 'green'
                objectName: 'battery_070_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-080-charging.svg'
                icon.color: 'green'
                objectName: 'battery_080_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-090-charging.svg'
                icon.color: 'green'
                objectName: 'battery_090_charging'
                visible: false
            }
            ToolButton {
                icon.source: 'file:///stor/usr/share/icons/breeze-battery-100-charging.svg'
                icon.color: 'green'
                objectName: 'battery_100_charging'
                visible: false
            }
        }

        Text {
            id: leClock
            anchors.centerIn: parent
            objectName: "leClock"
            font.family: "IRANSans"
            font.pixelSize: 16
            color: "white"
            ToolButton {
                anchors.fill: parent
                onClicked: {
                        background_app.text = 'clock';
                }
            }
        }
    }


    /* Menu applications for bottom Dock */

    Rectangle {
       color: "#A0FFFFFF"
       anchors.bottom: toolbar.top
       anchors.horizontalCenter: parent.horizontalCenter
       width: 560
       height: 560
       radius: 40
       anchors.bottomMargin: 20
       visible: false
       //visible: true
       objectName: "menuApps"

       Rectangle {
        anchors.top: parent.top
       height: 20
       id: rex
       }

        ScrollView{
        anchors.top: rex.bottom
        anchors.bottom: rex2.top
        width: 560
        height: 560-40
        clip: true
        id: scroll
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        Column {
            width: 560
            height: 560-40
            spacing: 2
            Repeater {
                model: EntryAppApplications
                anchors.fill: parent
                Rectangle {

                    width: parent.width
                    height: parent.width/8
                    color: "transparent"

                    Image {
                            source: model.logo
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            anchors.rightMargin: 20
                            width: parent.height
                            sourceSize: Qt.size( parent.width, parent.height )
                            height: parent.height
                            id: imagex
                            NumberAnimation on opacity {
                                id: menu_anim
                                from: 0
                                to: 1
                                duration: 100
                            }
                    }

                    Text {
                        text: model.label
                        font.family: "IRANSans"
                        font.pixelSize: 18
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: imagex.right
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            menu_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "silver"
                        anchors.top: parent.bottom
                    }
                }
            }
        }
    }
    Rectangle {
        anchors.bottom: parent.bottom
       height: 20
       id: rex2
       }

       NumberAnimation on height {
            id: menuApps_anim
            objectName: "menuApps_anim"
            from: 0
            to: 560
            duration: 100
        }

    }

    /* Menu applications for top Dock */

    Rectangle {
       color: "#A0FFFFFF"
       anchors.top: toolbar2.bottom
       anchors.horizontalCenter: parent.horizontalCenter
       width: 560
       height: 560
       radius: 40
       anchors.topMargin: 20
       visible: false
       objectName: "menuApps2"

       Rectangle {
        anchors.top: parent.top
        height: 20
        id: rex3
       }

        ScrollView{
        anchors.top: rex3.bottom
        anchors.bottom: rex4.top
        width: 560
        height: 560-40
        clip: true
        id: scroll2
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        Column {
            width: 560
            height: 560-40
            spacing: 2
            Repeater {
                model: EntryAppApplications
                anchors.fill: parent
                Rectangle {

                    width: parent.width
                    height: parent.width/8
                    color: "transparent"

                    Image {
                            source: model.logo
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            anchors.rightMargin: 20
                            width: parent.height
                            sourceSize: Qt.size( parent.width, parent.height )
                            height: parent.height
                            id: imagex

                            NumberAnimation on opacity {
                                id: menu2_anim
                                from: 0
                                to: 1
                                duration: 100
                            }
                    }

                    Text {
                        text: model.label
                        font.family: "IRANSans"
                        font.pixelSize: 18
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: imagex.right
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            menu2_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "silver"
                        anchors.top: parent.bottom
                    }
                }
            }
        }
    }
    Rectangle {
        anchors.bottom: parent.bottom
       height: 20
       id: rex4
       }
       NumberAnimation on height {
            id: menuApps2_anim
            objectName: "menuApps2_anim"
            from: 0
            to: 560
            duration: 100
        }
    }

    /* Menu applications for left Dock */
    Rectangle {
       color: "#A0FFFFFF"
       anchors.left: toolbar3.right
       //anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter
       width: 560
       height: 560
       radius: 40
       anchors.leftMargin: 20
       visible: false
       objectName: "menuApps3"

       Rectangle {
        anchors.top: parent.top
       height: 20
       id: rex5
       }

        ScrollView{
        anchors.top: rex5.bottom
        anchors.bottom: rex6.top
        width: 560
        height: 560-40
        clip: true
        id: scroll3
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        Column {
            width: 560
            height: 560-40
            spacing: 2
            Repeater {
                model: EntryAppApplications
                anchors.fill: parent
                Rectangle {

                    width: parent.width
                    height: parent.width/8
                    color: "transparent"

                    Image {
                            source: model.logo
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            anchors.rightMargin: 20
                            width: parent.height
                            sourceSize: Qt.size( parent.width, parent.height )
                            height: parent.height
                            id: imagex

                            NumberAnimation on opacity {
                                id: menu3_anim
                                from: 0
                                to: 1
                                duration: 100
                            }
                    }

                    Text {
                        text: model.label
                        font.family: "IRANSans"
                        font.pixelSize: 18
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: imagex.right
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            menu3_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "silver"
                        anchors.top: parent.bottom
                    }
                }
            }
        }
    }
    Rectangle {
        anchors.bottom: parent.bottom
       height: 20
       id: rex6
       }
       NumberAnimation on height {
            id: menuApps3_anim
            objectName: "menuApps3_anim"
            from: 0
            to: 560
            duration: 100
        }
    }

    /* Menu applications for right Dock */
    Rectangle {
       color: "#A0FFFFFF"
       anchors.right: toolbar4.left
       //anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter
       width: 560
       height: 560
       radius: 40
       anchors.rightMargin: 20
       visible: false
       objectName: "menuApps4"

       Rectangle {
        anchors.top: parent.top
       height: 20
       id: rex7
       }

        ScrollView{
        anchors.top: rex7.bottom
        anchors.bottom: rex8.top
        width: 560
        height: 560-40
        clip: true
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        Column {
            width: 560
            height: 560-40
            spacing: 2
            Repeater {
                model: EntryAppApplications
                anchors.fill: parent
                Rectangle {

                    width: parent.width
                    height: parent.width/8
                    color: "transparent"

                    Image {
                            source: model.logo
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            anchors.rightMargin: 20
                            width: parent.height
                            sourceSize: Qt.size( parent.width, parent.height )
                            height: parent.height
                            id: imagex

                            NumberAnimation on opacity {
                                id: menu4_anim
                                from: 0
                                to: 1
                                duration: 100
                            }
                    }

                    Text {
                        text: model.label
                        font.family: "IRANSans"
                        font.pixelSize: 18
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: imagex.right
                        anchors.leftMargin: 20
                        anchors.rightMargin: 20
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            menu4_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "silver"
                        anchors.top: parent.bottom
                    }
                }
            }
        }
    }
    Rectangle {
        anchors.bottom: parent.bottom
       height: 20
       id: rex8
       }
       NumberAnimation on height {
            id: menuApps4_anim
            objectName: "menuApps4_anim"
            from: 0
            to: 560
            duration: 100
        }
    }

    /* Bottom Dock (Default dock) */

    Rectangle {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        width: 560
        height: 70

        color: "#A0FFFFFF"
        radius: 100
        objectName: "toolbar"
        id: toolbar

        RowLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar.height
                height: toolbar.height
                objectName: "btnMenu"
                Image {
                    fillMode: Image.PreserveAspectFit
                    objectName: "imgMenu"
                    anchors.fill: parent
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu_anim
                        objectName: "btnMenu_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar.height
                        height: toolbar.height
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Repeater {
                model: LaunchedAppApplications

                    ToolButton {
                        width: toolbar.height
                        height: toolbar.height
                        id: launchedbtn
                        Image {
                            source: icon_app.text
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app_anim.start();
                            restore_app.text = model.name;
                        }
                        NumberAnimation on opacity {
                            id: app_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                        Rectangle {
                            anchors.bottom: parent.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            color: "blue"
                            width: 5
                            height: 5
                            radius: 5
                        }
                    }

            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Top Dock */

    Rectangle {
        anchors.top: topbar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        width: 560
        height: 70

        color: "#A0FFFFFF"
        radius: 100
        objectName: "toolbar2"
        id: toolbar2

        RowLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar2.height
                height: toolbar2.height
                objectName: "btnMenu2"
                Image {
                    fillMode: Image.PreserveAspectFit
                    objectName: "imgMenu2"
                    anchors.fill: parent
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu2_anim
                        objectName: "btnMenu2_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar2.height
                        height: toolbar2.height
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app2_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app2_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Left Dock */

    Rectangle {
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 20
        width: 70
        height: 560

        color: "#A0FFFFFF"
        radius: 100
        objectName: "toolbar3"
        id: toolbar3

        ColumnLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar3.width
                height: toolbar3.width
                objectName: "btnMenu3"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu3"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu3_anim
                        objectName: "btnMenu3_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar3.width
                        height: toolbar3.width
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app3_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app3_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Right Dock */
    Rectangle {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
        width: 70
        height: 560

        color: "#A0FFFFFF"
        radius: 100
        objectName: "toolbar4"
        id: toolbar4

        ColumnLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar4.width
                height: toolbar4.width
                objectName: "btnMenu4"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu4"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu4_anim
                        objectName: "btnMenu4_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar4.width
                        height: toolbar4.width
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app4_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app4_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Windows 11 Dock */
    Rectangle {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 0
        width: parent.width
        height: 70
        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar5"
        id: toolbar5
        
        
        RowLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar5.height
                height: toolbar5.height
                objectName: "btnMenu5"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu5"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu5_anim
                        objectName: "btnMenu5_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar5.height
                        height: toolbar5.height
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app5_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app5_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Windows 11 Dock - top */
    Rectangle {
        anchors.top: topbar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
        width: parent.width
        height: 70
        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar6"
        id: toolbar6
        
        
        RowLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar6.height
                height: toolbar6.height
                objectName: "btnMenu6"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu6"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu6_anim
                        objectName: "btnMenu6_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar6.height
                        height: toolbar6.height
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app6_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app6_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Windows 11 dock - left */

    Rectangle {
        anchors.left: parent.left
        anchors.top: topbar.bottom
        anchors.bottom: parent.bottom
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 0
        width: 70
        height: parent.height

        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar7"
        id: toolbar7

        ColumnLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar7.width
                height: toolbar7.width
                objectName: "btnMenu7"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu7"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu7_anim
                        objectName: "btnMenu7_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar7.width
                        height: toolbar7.width
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app7_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app7_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Windows 11 dock - right */
    Rectangle {
        anchors.right: parent.right
        anchors.top: topbar.bottom
        anchors.bottom: parent.bottom
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 0
        width: 70
        height: parent.height

        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar8"
        id: toolbar8

        ColumnLayout {
            anchors.centerIn: parent
            ToolButton {
                width: toolbar8.width
                height: toolbar8.width
                objectName: "btnMenu8"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu8"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu8_anim
                        objectName: "btnMenu8_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar8.width
                        height: toolbar8.width
                        
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app8_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app8_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Unity Dock */
    Rectangle {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 0
        width: parent.width
        height: 70
        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar9"
        id: toolbar9

        RowLayout {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 20
            ToolButton {
                width: toolbar9.height
                height: toolbar9.height
                objectName: "btnMenu9"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu9"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu9_anim
                        objectName: "btnMenu9_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar9.height
                        height: toolbar9.height
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app9_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app9_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Unity Dock - top */
    Rectangle {
        anchors.top: topbar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
        width: parent.width
        height: 70
        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar10"
        id: toolbar10

        RowLayout {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 20
            ToolButton {
                width: toolbar10.height
                height: toolbar10.height
                objectName: "btnMenu10"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu10"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu10_anim
                        objectName: "btnMenu10_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar10.height
                        height: toolbar10.height
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app10_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app10_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Unity dock - left */

    Rectangle {
        anchors.left: parent.left
        anchors.top: topbar.bottom
        anchors.bottom: parent.bottom
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 0
        width: 70
        height: parent.height

        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar11"
        id: toolbar11

        ColumnLayout {
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20
            ToolButton {
                width: toolbar11.width
                height: toolbar11.width
                objectName: "btnMenu11"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu11"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu11_anim
                        objectName: "btnMenu11_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar11.width
                        height: toolbar11.width
                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app11_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app11_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    /* Unity dock - right */
    Rectangle {
        anchors.right: parent.right
        anchors.top: topbar.bottom
        anchors.bottom: parent.bottom
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 0
        width: 70
        height: parent.height

        color: "#A0FFFFFF"
        radius: 0
        objectName: "toolbar12"
        id: toolbar12

        ColumnLayout {
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20
            ToolButton {
                width: toolbar12.width
                height: toolbar12.width
                objectName: "btnMenu12"
                Image {
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    objectName: "imgMenu12"
                    sourceSize: Qt.size( parent.width, parent.height )
                    NumberAnimation on opacity {
                        id: btnMenu12_anim
                        objectName: "btnMenu12_anim"
                        from: 0
                        to: 1
                        duration: 100
                    }
                }
            }

            Repeater {
                model: EntryDockApplications

                    ToolButton {
                        width: toolbar12.width
                        height: toolbar12.width

                        Image {
                            source: model.logo
                            sourceSize: Qt.size( parent.width, parent.height )
                            anchors.fill: parent
                        }
                        onClicked: {
                            app12_anim.start();
                            background_app.text = model.name;
                            icon_app.text = model.logo;
                        }
                        NumberAnimation on opacity {
                            id: app12_anim
                            from: 0
                            to: 1
                            duration: 100
                        }
                    }
            }
            Item { Layout.fillWidth: true }
        }
    }

    Menu {
        id: contextMenu
        font.family: "IRANSans"
        objectName: "contextMenu"

        Action {
            text: "Appearanc"
            id: appc
            objectName: "appc"
            onTriggered: {
                background_app.text = 'appearanc'
            }
        }
        Action {
            text: "Display Settings"
            id: displayc
            objectName: "displayc"
            onTriggered: {
                background_app.text = 'displaymanager'
            }
        }
        Action {
            text: "Restore minimized apps"
            id: rma
            objectName: "rmac"
            onTriggered: {
                background_app.text = 'rma'
            }
        }
        Action {
            text: "Run"
            id: runc
            objectName: "runc"
            onTriggered: {
                background_app.text = 'runapp'
            }
        }
    }

    MouseArea {
        anchors.centerIn: parent
        width: parent.width/3
        height: parent.height/3
        id: msaDesktop
        objectName: "msaDesktop"
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {

            if (mouse.button === Qt.RightButton)
                contextMenu.popup()

        }

        onPressAndHold: {
            if (mouse.source === Qt.MouseEventNotSynthesized)
                contextMenu.popup()
        }
    }
    /*
    GridView {
        model: FileModel
        cellWidth: 64; cellHeight: 80
        highlight: highlight
        anchors.top: parent.top
        anchors.bottom: toolbar.top
        highlightFollowsCurrentItem: false
        focus: true

        delegate: Column {
            Image { 
                source: model.logo
                width: 64
                height: 70
                sourceSize: Qt.size( parent.width, parent.height )
                anchors.horizontalCenter: parent.horizontalCenter
                MouseArea {
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton | Qt.RightButton
                    onDoubleClicked: {
                        fsel.text = model.path
                    }
                    onClicked: {
                        if (mouse.button === Qt.RightButton)
                            contextMenu.popup()

                    }

                    onPressAndHold: {
                        if (mouse.source === Qt.MouseEventNotSynthesized)
                            contextMenu.popup()
                    }
                }   
            }
            Text { 
                text: model.name
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "IRANSans"
                color: "white"
            }
        }
    }*/

}