import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0


Item  {
    width: mainWindow.width
    anchors.horizontalCenter: mainWindow.horizontalCenter


    ScrollView{
        id: scroll_view_id
        width: mainWindow.width

        anchors.horizontalCenter: mainWindow.horizontalCenter
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff


        Column{
            width: mainWindow.width
            spacing: 20
            anchors.topMargin: parent.height/20

        Text{text: " "}
        Text
        {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            color: "#1d841c"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            text:"About us"
            font.bold: true
            styleColor: "#688638"
            //font.pointSize: 11
        }

        Text
        {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:"Cambusa Critica App è il risultato di un progetto di volontariato nato dalla collaborazione di diverse associazioni e ha vinto il terzo posto nel premio eHealth4All 2017."
        }

        Text
        {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:"Sono partner del progetto Cambusa Critica ľAgenzia di Tutela della Salute Città Metropolitana di Milano, AGESCI Lombardia e l'Associazione Pace e Scoutismo di Segrate."
        }
/*
        Button{

            anchors.horizontalCenter: parent.horizontalCenter
            text: "Scopri i dettagli"
            onClicked: {Qt.openUrlExternally("https://www.facebook.com/Cambusa-Critica-App-884254754986698/")}
        }
*/
        Text{text: " "}

       }//end column



    }
}
