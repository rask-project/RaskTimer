import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Dialog {
    id: dialog
    title: qsTr("Configurações")
    width: window.width < 400? window.width : 400
    height: 250

    modal: true
    x: (window.width - width) /2
    padding: 1
    clip: true

    standardButtons: Dialog.Ok | Dialog.Cancel

    contentItem: Item {
        width: parent.width
        height: parent.height

        ColumnLayout {
            id: column
            anchors.fill: parent
            anchors.margins: 5
            spacing: 10


            Label {
                Layout.fillWidth: true
                text: qsTr("Tempo de alerta")
            }

            TimerComponent {
                id: timer_alert
                itemWidth: parent.width
                itemHeight: 40
                textSize: height
            }

            Item {
                Layout.fillHeight: true
            }
        }
    }
}