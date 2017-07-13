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

   Item{
    id: rect_salva

    Component.onCompleted:
    {
        menu_button_text.opacity = 0.5;
        crea_button_text.opacity = 0.5;
        importa_button_text.opacity = 1;
        home_button_text.opacity = 0.5;
        top_underline.x =  mainWindow.width/4*2;
    }

    MenuNames   {id: menu_names}

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Component.onCompleted:
        {
            // initialize names of available menus
            menu_names.setNames();
            var count = 0;
            for (var i = 0; i< 5; i++)
            {
                if (CalcMenu.getNome(i) !== "")  count++;   // count saved menus
            }
            // define number of menus to be displayed
            if (count === 0 && CalcMenu.getSalvaImporta() === "importa")
            {
                text_salvataggio.visible = false;
                menu_list.visible = false;
                menu_list.model = count;
                comment.visible = true;
                console.log ("count = " + count);
            }
            else if (count > 0 && CalcMenu.getSalvaImporta() === "importa")
            {
                menu_list.model = count;
                comment.visible = false;
            }
            if (CalcMenu.getSalvaImporta() === "salva")
            {
                if (count < 5) menu_list.model = count+1;
                else menu_list.model = count;
            }
            //setting real names to menus
            for (i = 0; i< menu_list.model; i++)
            {
                if (CalcMenu.getNome(i) === "")   menu_list.itemAt(i).text = String("[nuovo menù]");
                else                              menu_list.itemAt(i).text = CalcMenu.getNome(i)
            }
        }
        Text{text: " "}

        Image{
           source: (CalcMenu.getSalvaImporta() === "salva") ? "images/save.png" : "images/importa.png"
           height: parent.width/4
           asynchronous: true
           opacity: 0.7
           fillMode: Image.PreserveAspectFit
           anchors.horizontalCenter: parent.horizontalCenter
        }

        Text{
            id: comment
            width: parent.width
            wrapMode: Text.Wrap
            text: "Nessun menù da importare!\n\nDevi prima creare\n e salvare un menù."
            horizontalAlignment: Text.AlignHCenter
            visible: false
        }

        Text{
            id: text_salvataggio
            width: parent.width
            wrapMode: Text.Wrap
            text: (CalcMenu.getSalvaImporta() === "salva") ?
                      "Salva il menù corrente \n nello slot desiderato\n"
                      : "Scegli il menù \nda importare\n"
            horizontalAlignment: Text.AlignHCenter
        }

        Repeater{
            anchors.horizontalCenter: parent.horizontalCenter
            id: menu_list
            model: 5
            Button{
                text: "Menù" + index
                width: mainWindow.width/2
                onClicked:
                {
                    if (CalcMenu.getSalvaImporta() === "salva")
                    {                        
                        CalcMenu.setMenuID(index+1);                        
                        stackView.push({item:Qt.resolvedUrl("conferma_salva.qml"), immediate: true, replace: true})
                        rect_salva.visible = false;
                    }

                    else if (CalcMenu.getSalvaImporta() === "importa")
                    {                       
                        CalcMenu.setMenuID(index+1);
                        stackView.push({item:Qt.resolvedUrl("conferma_salva.qml"), immediate: true, replace: true})
                        //console.log("loading previous menù ...")
                        rect_salva.visible = false;
                    }
                }
            }
        }

    }
}


