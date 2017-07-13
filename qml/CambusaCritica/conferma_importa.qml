import QtQuick 2.2
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0
import "functions/CalcMenu.js" as CalcMenu
import "functions/CalcList.js" as CalcList
import "Widgets"
import "./models"



//*********************************************************//
//rectangle dettagli

   Item{
    id: rect_salva_importa


    Column{

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        height:parent.height




        MenuSettings{id: menu_to_save}


        Text{text: "Sei sicuro ?"}
        //di volere importare il menù e sostituirlo con quello attuale?"}

        Row{
            spacing: 20

            Button{
                text: "sì"
                onClicked: {
                    menu_to_save.setMenu()
                    stackView.pop();
                    CalcMenu.setMenuID(0);

                }

            }
            Button{
                text: "no"
                onClicked: {
                    //menu_to_save.storeMenu()
                    stackView.pop();

                }

            }
        }




    }
   }


