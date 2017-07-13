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


Item{
    id: rect_valutazione
    anchors.horizontalCenter: mainWindow.horizontalCenter

    ScrollView{
        id: scroll_value
        width: mainWindow.width
        anchors.horizontalCenter: parent.horizontalCenter
        height: mainWindow.height -top_bar.height// - list_header.height
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff

    Column{
        spacing: 4

        Text{text: " "}
        Text{
            id: text_voto
            width: scroll_value.width
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.Wrap            
            horizontalAlignment: Text.AlignHCenter
            property var voto
            color: (voto > 79) ? "green" : "red"
            text: voto + "/100"
            font.pointSize: 26

            Component.onCompleted:
            {
                if (CalcMenu.getTotDays() === 1)
                {
                    voto = 0;
                    text = "Impossibile valutare il menù.\nCampo troppo breve.";
                }
                else voto = CalcList.evaluateFullMenu();
            }
        }

        Text{
            id: text_fresco
            width: scroll_value.width*0.8
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignHCenter
            property var fresco
            color: fresco ? "green" : "red"
            text: fresco ? "\nSei stato bravo a scegliere \nla frutta e verdura di stagione!" : "\n Attento! Non hai scelto \nfrutta e verdura di stagione.\n"
            Component.onCompleted:
            {
                if (CalcMenu.getFresco() === 0)  text_fresco.fresco =  true
                else                             text_fresco.fresco =  false
            }
        }

        Text{
            id: text_pane
            width: scroll_value.width*0.8
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignHCenter
            property var pane
            color: pane ? "green" : "red"
            text: pane ? "\nHai fatto bene a scegliere \nil pane integrale una volta al giorno!" : "\n Puoi migliorarti! \n Il pane integrale è ricco di fibre che abbassano l'indice glicemico e migliorano il transito intestinale.\n"
            Component.onCompleted:
            {
                if (CalcMenu.getPane() === 0)  text_pane.pane =  true
                else                           text_pane.pane =  false
            }
        }

        Image{
            source: "images/separatore_cc.png"
            width: parent.width
            fillMode: Image.PreserveAspectFit
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "\nPuoi migliorarti: \n"
            font.bold: true
            visible: (text_voto.voto < 100 && CalcMenu.getTotDays()!==1) ? true : false
        }



        Repeater{
            //visible: (CalcMenu.getTotDays()!==1) ? true : false
            anchors.horizontalCenter: parent.horizontalCenter
            model: 12
            Text{
                anchors.horizontalCenter: parent.horizontalCenter
                visible: (single_scores.scores[index]<single_scores.max[index] && CalcMenu.getTotDays()!==1) ? true:false
                color: (single_scores.scores[index] === 0) ? "red" : "green"
                text: single_scores.labels[index] + ": " + single_scores.scores[index] + "/" + single_scores.max[index]
            }
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Massimo punteggio!"
            visible: (text_voto.voto === 100) ? true : false

        }

        Image{
            //source: "images/artificio.gif"
            source: (text_voto.voto === 100) ? "images/cc_smile_5.png" :
                                               ((text_voto.voto >95 ) ? "images/cc_smile_4.png" :
                                                                        ((text_voto.voto >90 ) ? "images/cc_smile_3.png" :
                                                                                                 ((text_voto.voto >85 ) ? "images/cc_smile_2.png" :
                                                                                                                          ((text_voto.voto >75 ) ? "images/cc_smile_1.png" : "images/cc_smile_0.png" )
                                                                                                  )
                                                                         )
                                                )
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width/3
            fillMode: Image.PreserveAspectFit
            //visible: (text_voto.voto === 100) ? true : false
        }

        Text{
            text: " "
        }
      }
    }
}
