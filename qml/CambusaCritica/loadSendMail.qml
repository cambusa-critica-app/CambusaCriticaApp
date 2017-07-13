import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0
import "functions/CalcMenu.js" as CalcMenu
import "functions/CalcList.js" as CalcList
import "./models"
import "./tools"
import "./infos"
import "./settings"

//*********************************************************//
//rectangle dettagli

Item{
    id: rect_loader


    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10


        Text{text: " "}

        Image{
           source: "images/mail_to.png"
           height: parent.width/3
           asynchronous: true
           opacity: 0.7
           fillMode: Image.PreserveAspectFit
           anchors.horizontalCenter: parent.horizontalCenter
        }

        Text{
            id: comment
            width: parent.width
            wrapMode: Text.Wrap
            text: "Vuoi inviare una mail \ncon menù e lista spesa?\n\n"
            horizontalAlignment: Text.AlignHCenter
            visible: true
        }

        //mail address
        TextField {
            id: mail_address
            height: mainWindow.width/10
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width
          //  anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: qsTr("Indirizzo email...")
            visible: false
        }


        //mail body
        Text{
            id: mail_body
            textFormat: Text.RichText
            visible: false
        }


        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            id: row_buttons_sure
            visible: true
            spacing: 20

            Button{
                text: "sì"
                onClicked:
                {
                    mail_body.text = CalcList.writeMenu();
                    //Qt.openUrlExternally(
                    //            "mailto:" + mail_address.text + "?subject=Menù Cambusa Critica" +
                    //               "&body=" + mail_body.text);
                    Qt.openUrlExternally(
                                "mailto:" + mail_address.text + "?subject=Menù Cambusa Critica" +
                                   "&body=" + mail_body.text + "&attachment=" );
                }
            }

            Button{
                text: "no"
                onClicked:
                {
                    stackView.pop();
                }

            }
       }
        Text{
            text:" "
        }

        Text{
            text: "Includi:"

        }
        CheckBox{
            id: check_menu
            text: qsTr("Menù")
            checked: true
            onCheckedChanged:
            {
                if   (checked === true) CalcMenu.printMenu(1);
                else                    CalcMenu.printMenu(0);
            }
        }
        CheckBox{
            id: spesa_totale
            text: qsTr("Spesa totale")
            checked: true
            onCheckedChanged:
            {
                if   (checked === true) CalcMenu.printTotale(1);
                else                    CalcMenu.printTotale(0);
            }
        }
        CheckBox{
            id: check_spesa_giorno
            text: qsTr("Spesa giornaliera")
            checked: false
            onCheckedChanged:
            {
                if   (checked === true)
                {
                    console.log("print giornaliera being set to 1" );
                    CalcMenu.printGiornaliera(1);
                }
                else
                {
                    console.log("print giornaliera being set to 0" );
                    CalcMenu.printGiornaliera(0);
                }
            }
        }
    }
}



