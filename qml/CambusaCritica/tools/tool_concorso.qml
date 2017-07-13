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
            text:"Concorso di Cambusa Critica App"
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
            text:"Appartieni a un gruppo scout? Si sta cominciando ad organizzare il campo estivo? Partecipa al concorso di cambusa critica app!"
        }

        Text
        {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:"Realizzando il menù del tuo campo attraverso la app di Cambusa Critica potrai vincere un utile premio!"
        }

        Button{

            anchors.horizontalCenter: parent.horizontalCenter
            text: "Scopri i dettagli"
            onClicked: {Qt.openUrlExternally("https://www.facebook.com/Cambusa-Critica-App-884254754986698/")}
        }

        Button{
            id: partecipa_button

            anchors.horizontalCenter: parent.horizontalCenter
            text: "Partecipa"
            onClicked:
            {
                partecipa_button.visible = false;
                iscriviti_text.visible = true;
                iscriviti_button.visible = true;
                problemi_iscrizione.visible = true;
                mail_button.visible = true;
                //onClicked: {Qt.openUrlExternally("http://goo.gl/forms/L0lusi0SRm")}}
            }
        }

        Text
        {
            id: iscriviti_text
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:"Fai attenzione! Procedendo con l'iscrizione sarete indirizzati a un form online che sarà compilabile una sola volta per partecipante! Assicurati di avere tutte le informazioni necessarie per iscriverti! \n\nPuoi consultare il regolamento del concorso cliccando sul bottone 'Scopri i dettagli'."
        }

        Button{
            id: iscriviti_button

            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Procedi con l'iscrizione"
            onClicked:
            {
                partecipa_button.visible = false;
                Qt.openUrlExternally("http://goo.gl/forms/L0lusi0SRm")
            }
        }

        Text
        {
            id: problemi_iscrizione
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Hai dubbi riguardo al concorso o difficoltà ad iscriverti?"
        }

        Button{
            id: mail_button
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Inviaci una mail"
            onClicked:
            {
                //partecipa_button.visible = false;
                Qt.openUrlExternally("mailto:cambusecritiche.ricette@gmail.com?subject=CONCORSO Cambusa Critica App&body=");
            }
        }

        Text{text: " "}

       }//end column



    }
}
