import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0
import QtQuick.Dialogs 1.2
import "functions/CalcMenu.js" as CalcMenu
import "functions/CalcList.js" as CalcList
import "functions/PrintStuff.js" as PrintStuff
import "./models"
import "./tools"
import "./infos"
import "./settings"



//*********************************************************//
//rectangle dettagli

Item{
    id: rect_loader_html


    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Text{text: " "}

        Image{
           source: "images/html_to.png"
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
            text: "Vuoi esportare il menù come .html?\n\nPotrai in seguito aprirlo\nnel tuo browser e modificarlo.\n"
            horizontalAlignment: Text.AlignHCenter
            visible: true
        }

        //mail body
        Text{
            id: menu_table
            textFormat: Text.RichText
            visible: false
        }

        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            id: row_buttons_sure
            visible: true
            spacing: 20

            Button
            {
                text: "sì"
                onClicked:
                {

                    //fileDialog.visible = true;

                    //short saving option
                    var my_folder = ("/sdcard/Download/");
                    //var my_folder = ("/home/toli/Scrivania/");
                    PrintStuff.printPDF(my_folder);
                    comment.text = "Esportazione riuscita!\nIl file è stato salvato in \n Download"// + my_folder
                    row_buttons_sure.visible = false
                    back_to_menu.visible = true
                }
            }
            Button
            {
                text: "no"
                onClicked: stackView.pop();
            }
        }

        Button
        {
            id: back_to_menu
            anchors.horizontalCenter: parent.horizontalCenter
            visible: false
            text: "torna al menù"
            onClicked: stackView.pop();
        }
/*
        FileDialog {
            id: fileDialog
            title: "Please choose a file name"
            //folder: shortcuts.home
            selectExisting: true
            selectFolder: true

            onAccepted:
            {
                var temp_filename = fileUrls.toString().substring(7);

                PrintStuff.printHTML(temp_filename + "/" + CalcMenu.getCurrentMenuName() + "_cc_menu.html");

                visible= false
                comment.text = "Esportazione riuscita!"
                row_buttons_sure.visible = false
                back_to_menu.visible = true

            }
            onRejected:
            {
                console.log("Canceled")
                visible = false
            }
            Component.onCompleted: visible = false
        }*/

        Text{ text:" "}
        Text{ text: "Includi:" }
        CheckBox{
            id: check_menu_html
            text: qsTr("Menù")
            checked: true
        }
        CheckBox{
            id: spesa_totale_html
            text: qsTr("Spesa totale")
            checked: true
        }
        CheckBox{
            id: check_spesa_giorno_html
            text: qsTr("Spesa giornaliera")
            checked: false
        }
    }
}



