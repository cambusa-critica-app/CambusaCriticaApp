import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../models"

Item  {
    width: mainWindow.width
    anchors.horizontalCenter: mainWindow.horizontalCenter

    CCListino   {id: ccListinoModel}// ; Component.onCompleted: console.log("Created CC Listino...")}


    ScrollView{
        id: scroll_view_id
        width: mainWindow.width
        //height: mainWindow.height - intro_rect.height

        anchors.horizontalCenter: mainWindow.horizontalCenter
        anchors.fill: parent
       // width: mainWindow.width*0.87
        //height: mainWindow.height*0.7
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff



        Column{

            Rectangle{
                id: intro_rect
                color: mainWindow.color
                anchors.horizontalCenter: parent.horizontalCenter
                height: mainWindow.height/10
                width: mainWindow.width*0.8
                anchors.topMargin: parent.height/20

                Text{
                    id: initial_comment
                    wrapMode: Text.Wrap;
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Listino dei Prodotti consigliati e supportati da Cambuse Critiche"
                }
            }

        Text{text: " "}

        Repeater
        {
            model: ccListinoModel.count
            Rectangle
            {
                width: mainWindow.width
                height: data_column.height*1.1
                color: (ccListinoModel.get(index).fornitore === "IRIS Bio") ? "#d3ecc2" :
                              (ccListinoModel.get(index).fornitore === "CTM - Altromercato") ? "#EEE8AA" :"#eee5d0"
                border.color: "black"
                border.width: 2

                Column{
                    spacing: 2
                    id: data_column
                    width: parent.width*0.8
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text{text: " "}
                    Text{
                        //text: "Fornitore: " + ccListinoModel.get(index).fornitore
                        text: ccListinoModel.get(index).fornitore
                        font.bold: true
                    }
                    Text{
                        wrapMode: Text.Wrap;
                        width: parent.width
                        text: "Descrizione: \n" + ccListinoModel.get(index).name
                    }
                    /*Text{
                        text: "Quantità: " + ccListinoModel.get(index).collo + " " + ccListinoModel.get(index).unit
                    }
                    Text{
                        text: "Prezzo: " + ccListinoModel.get(index).prezzo + " €"
                    }*/
                    Text{
                        text: ccListinoModel.get(index).collo + " " + ccListinoModel.get(index).unit + "  -  "
                              + ccListinoModel.get(index).prezzo + " €"
                        font.italic: true
                    }
                    Text{text: " "}
                }
            }

        }

       }
    }//end scrollview

}

