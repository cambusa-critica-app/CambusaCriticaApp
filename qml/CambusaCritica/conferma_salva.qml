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
    id: rect_salva_conferma
    visible: false

    MenuNames{id: menu_names}

    Column{

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        height:parent.height/2
        spacing: 20

        MenuSettings{id: menu_to_save}
        Text{anchors.horizontalCenter: parent.horizontalCenter; visible: (CalcMenu.getSalvaImporta() === "salva") ? true : false; id: nome_saving; text: "Nome menù: " ;horizontalAlignment: Text.AlignHCenter } //+ CalcMenu.getNome(CalcMenu.getMenuID()-1)}

        TextField{
            anchors.horizontalCenter: parent.horizontalCenter
            visible: (CalcMenu.getSalvaImporta() === "salva") ? true : false
            id: sel_menu_name
            property int sel_menu;

            text: CalcMenu.getNome(CalcMenu.getMenuID()-1)

            placeholderText: qsTr("Nuovo nome ...")
            onAccepted:
            {
                CalcMenu.setNome(CalcMenu.getMenuID()-1, sel_menu_name.text);
                menu_names.storeNames();
                //menu_names.setNames();
                nome_saving.text = "Nome menù: " //+ sel_menu_name.text
            }
        }

        /*
        Button{
            visible: (CalcMenu.getSalvaImporta() === "salva") ? true : false
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Rinomina"
            onClicked:{
                //if (sel_menu === 0) name_settings.name_0 = sel_menu_name.text;
                CalcMenu.setNome(CalcMenu.getMenuID()-1, sel_menu_name.text);                
                menu_names.storeNames();                
                //menu_names.setNames();
                nome_saving.text = "Nome menù: " + sel_menu_name.text
            }
        }*/


        Text{
            anchors.horizontalCenter: parent.horizontalCenter;
            id: text_sicuro
            visible: true
            wrapMode: Text.Wrap
            width: parent.width
            text: (CalcMenu.getSalvaImporta() === "salva")
                  ? "Sei sicuro di voler\nsalvare il menù:\n'" + sel_menu_name.text + "' ?"
                  : "Sei sicuro di voler\nimportare il menù:\n'" + sel_menu_name.text + "' ?"
            horizontalAlignment: Text.AlignHCenter
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
                    CalcMenu.setNome(CalcMenu.getMenuID()-1, sel_menu_name.text);
                    menu_names.storeNames();
                    nome_saving.text = "Nome menù: " + sel_menu_name.text

                    CalcMenu.setCurrentMenuName(sel_menu_name.text);
                    if (CalcMenu.getSalvaImporta() === "salva")           menu_to_save.storeMenu()
                    else if (CalcMenu.getSalvaImporta() === "importa")    menu_to_save.setMenu()

                    //stackView.pop();
                    CalcMenu.setMenuID(0);
                    CalcMenu.setSavingStatus(true);
                    CalcList.setVetos();
                    CalcList.setRestrictedListINDEX();
                    if (CalcMenu.getSalvaImporta() === "importa") CalcMenu.setNewList(true);
                    menu_names.storeNames();
                    menu_names.setNames();
                    stackView.clear();
                    stackView.push({item:rect_home_buttons, immediate: true})
                    stackView.push({item:Qt.resolvedUrl("mymenu.qml"), immediate: true})
                    importa_button_text.opacity = 0.5;
                   // menu_button_text.opacity = 1;
                }
            }

            Button{
                text: "no"
                onClicked: {
                    CalcMenu.setMenuID(0);
                    stackView.pop();
                    importa_button_text.opacity = 0.5;
                }

            }
        }

    }
   }


