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
    id: rect_personalizza

    Column{
        spacing: 0
        anchors.horizontalCenter: parent.horizontalCenter
        Component.onCompleted: ingr_repeater.model = 10

        ScrollView{
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width
            height: mainWindow.height - top_bar.height
            verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff


          Column
          {
            spacing: mainWindow.height/40
            width: mainWindow.width

            Text{text: " "}
            Text{
                width: mainWindow.width*0.85
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.Wrap
                text: "Aumenta le ricette disponibili! \n\n" +
                      "Invia la tua ricetta \ncompilando il modulo qui sotto. \n\n"+
                      "Se rispetta i criteri di Cambuse Critiche verrà aggiunta nel prossimo aggiornamento della app."
                horizontalAlignment: Text.AlignHCenter
            }

            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Tipo ricetta: " ;font.bold: true }

            ComboBox{
                id: ricetta_tipo
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.7
                model: ["Colazione", "Primo", "Secondo", "Contorno", "Piatto unico", "Frutta", "Merenda", "Pane"]                
            }

            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Nome ricetta: " ;font.bold: true }
            TextField {
                id: ricetta_nome
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.7
                placeholderText: qsTr("Nome ricetta...")
            }
            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Tempo di preparazione: " ;font.bold: true }
            TextField {
                id: ricetta_tempo
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.7
                placeholderText: qsTr("minuti necessari (15, 30, ...)")
            }



            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Categoria ricetta: "; font.bold: true }
            Grid{
                rows: 6
                columns: 2
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: mainWindow.width/16

                CheckBox{
                    id: cat_frutta
                    width: mainWindow.width*0.4
                    text: qsTr("Frutta")
                }
                CheckBox{
                    id: cat_verdura
                    width: mainWindow.width*0.4
                    text: qsTr("Verdura")
                }
                CheckBox{
                    id: cat_legumi
                    width: mainWindow.width*0.4
                    text: qsTr("Legumi")
                }
                CheckBox{
                    id: cat_cereali
                    width: mainWindow.width*0.4
                    text: qsTr("Cereali")
                }
                CheckBox{
                    id: cat_formaggio
                    width: mainWindow.width*0.4
                    text: qsTr("Formaggio")
                }
                CheckBox{
                    id: cat_pesce
                    width: mainWindow.width*0.4
                    text: qsTr("Pesce")
                }
                CheckBox{
                    id: cat_carnerossa
                    width: mainWindow.width*0.4
                    text: qsTr("Carne rossa")
                }
                CheckBox{
                    id: cat_carnebianca
                    width: mainWindow.width*0.4
                    text: qsTr("Carne bianca")
                }
                CheckBox{
                    id: cat_uova
                    width: mainWindow.width*0.4
                    text: qsTr("Uova")
                }
                CheckBox{
                    id: cat_dessert
                    width: mainWindow.width*0.4
                    text: qsTr("Dessert")
                }
                CheckBox{
                    id: cat_affettato
                    width: mainWindow.width*0.4
                    text: qsTr("Affettato")
                }
                CheckBox{
                    id: cat_patate
                    width: mainWindow.width*0.4
                    text: qsTr("Patate")
                }
            }

            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Serve forno o elettricità?" ;font.bold: true }
            ComboBox{
                id: ricetta_forno
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.7
                model: ["No", "Sì"]
            }

            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Adatta per route di cammino?" ;font.bold: true }
            ComboBox{
                id: ricetta_route
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.7
                model: ["No", "Sì"]
            }


            Text {anchors.horizontalCenter: parent.horizontalCenter; text: "Ingredienti:" ;font.bold: true }

            Repeater
            {
                id: ingr_repeater
                width: mainWindow.width*0.9
                anchors.horizontalCenter: parent.horizontalCenter
                model: 0
                visible: false
                property int n_ing: 0

                 Row{
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 2
                    visible: false                    

                    property string name_ing: ingr_text.text
                    property int    dose_ing: parseInt(dose_text.text)
                    property string unit_ing: unit_text.currentText
                    Text{text: " "}
                    Text{text: " "}

                    TextField{
                        id: ingr_text
                        width: mainWindow.width*0.5
                        placeholderText: qsTr("Ingrediente...")
                        Settings{category: index; property alias value: ingr_text.text}
                    }

                    TextField{
                        id: dose_text
                        width: mainWindow.width*0.15
                        placeholderText: qsTr("Dose...")
                        Settings{category: index; property alias value_dose: dose_text.text}
                    }

                    ComboBox{
                        id: unit_text
                        width: mainWindow.width*0.25
                        model: ["gr", "ml", "spicchio", "unità", "qb", "bustina"]
                        Settings{category: index; property alias value_unit: unit_text.currentIndex}
                    }
                  }                 
            }


            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width
                spacing: mainWindow.width*0.05
                Text{text: " "}
                Button{
                    width: parent.width/2 - parent.spacing*1.5
                    text: "Nuovo ingrediente"
                    onClicked:
                    {
                        ingr_repeater.visible = true
                        ingr_repeater.itemAt(ingr_repeater.n_ing).visible = true;
                        ingr_repeater.n_ing++;
                    }
                }
                Button{
                    width: parent.width/2 - parent.spacing*1.5
                    text: "Rimuovi ultimo"
                    onClicked:
                    {
                        if (ingr_repeater.n_ing>0)
                        {
                            ingr_repeater.n_ing--;
                            ingr_repeater.itemAt(ingr_repeater.n_ing).visible = false;
                        }
                    }
                }
            }



            Text {anchors.horizontalCenter: parent.horizontalCenter;text: "Descrivi la preparazione: " ;font.bold: true }
            TextArea {
                id: ricetta_recipe
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.9
                height: mainWindow.height*0.3
                //maximumLength: 1000
                //placeholderText: qsTr("Ricetta...")
                wrapMode: TextInput.Wrap
            }

            Text{
                id: mail_body
                visible: false
                textFormat: Text.StyledText
                text: "Cara App di Cambusa Critica, \nè con gran piacere che ti invio la mia proposta di ricetta da aggiungere al tuo elenco.\n \n"
                    + "Buona Caccia, Buon Sentiero, Buona Strada e Buon Appetito. "
                    + "\n  Mio Nome \n\n\n "
                    + "****************************************** \n "
                    + "- NON MODIFICARE LA SEZIONE QUI SOTTO -\n"
                    + "****************************************** \n\n"
                    + "ListElement{"
                    + "\n      name: \"" + ricetta_nome.text + "\""
                    + "\n      flag: \"" + setFlags() + "\""
                    + "\n      ele : " + ricetta_forno.currentIndex
                    + "\n      route : " + ricetta_route.currentIndex
                    + "\n      time : " + ricetta_tempo.text
                    + "\n      calorie : "
                    + "\n      mesi : [\n "
                    + "              ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},\n"
                    + "              ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},\n"
                    + "              ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},\n"
                    + "              ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]\n"
                    + "\n      ingredients: [ \n";

                function writeIngredienti()
                {
                    var space = " "; //prova&amp;ridere"; //&nbsp;&nbsp;&nbsp;&nbsp;"
                    //console.log("here is space: " + space);

                    for (var iIng = 0; iIng < ingr_repeater.n_ing; iIng++)
                    {
                        mail_body.text += (  space + " ListElement {\n "
                                           + space + space + " name_ing: \"" + ingr_repeater.itemAt(iIng).name_ing.toLowerCase() + "\" \n"
                                           + space + space + " dose: "     + ingr_repeater.itemAt(iIng).dose_ing + "\ \n"
                                           + space + space + " unit: \""     + ingr_repeater.itemAt(iIng).unit_ing.toLowerCase() + "\" }");

                        if (iIng < ingr_repeater.n_ing-1) mail_body.text += ", \n";
                        else mail_body.text += "]\n";

                    }
                }

                function writeRecipe() {text += " recipe: \"" + ricetta_recipe.text + "\"\n} \n\n"}

                function setFlags ()
                {
                    var flag_text = "";
                    if (cat_frutta.checked) flag_text += "FRUTTA";
                    if (cat_verdura.checked) flag_text += "VERDURA";
                    if (cat_patate.checked) flag_text += "PATATE";
                    if (cat_cereali.checked) flag_text += "CEREALI";

                    if (cat_pesce.checked) flag_text += "PESCE";
                    if (cat_carnerossa.checked) flag_text += "CARNEROSSA";
                    if (cat_carnebianca.checked) flag_text += "CARNEBIANCA";
                    if (cat_uova.checked) flag_text += "UOVA";

                    if (cat_affettato.checked) flag_text += "AFFETTATO";
                    if (cat_formaggio.checked) flag_text += "FORMAGGIO";
                    if (cat_dessert.checked) flag_text += "DESSERT";
                    if (cat_legumi.checked) flag_text += "LEGUMI";

                    return flag_text;
                }
            }

            Button{
                text: "Invia la ricetta"
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width/2
                onClicked:
                {
                    mail_body.writeIngredienti();
                    mail_body.writeRecipe();
                    //mail_body.text = CalcList.writeMenu();
                    Qt.openUrlExternally(
                                  "mailto:cambusecritiche.ricette@gmail.com?subject=Ricetta Cambusa Critica: " + ricetta_tipo.currentText
                                   + " [" + ricetta_nome.text + "]"
                                   + "&body=" + mail_body.text);
                }
              }

            Text{text: " "}
        }
      }//end scrollview
    }//end column
   }//end item
