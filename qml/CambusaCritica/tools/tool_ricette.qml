import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import "../functions/CalcList.js" as CalcList
import ".."


Item  {
    width: mainWindow.width


    ScrollView{
        id: scroll_view_id
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        //y: mainWindow.height/20

        Column{
            spacing:0
            id: column_meal

            Repeater
            {

                model: 8

                Rectangle{
                    //id: button_colazione
                    width: mainWindow.width
                    height: mainWindow.height/10
                    //color: "#d3dddd"
                    color: mainWindow.color
                    border.color: "black"
                    border.width: 2

                    Image{
                        anchors.verticalCenter: parent.verticalCenter
                        id: col_icon
                        anchors.left: parent.left
                        anchors.leftMargin : 5
                        source:
                        {
                            if      (index === 0) source = "../images/colazione_icon.png"
                            else if (index === 1) source = "../images/pranzo_1_icon.png"
                            else if (index === 2) source = "../images/pranzo_2_icon.png"
                            else if (index === 3) source = "../images/pranzo_3_icon.png"
                            else if (index === 4) source = "../images/cena_1_icon.png"
                            else if (index === 5) source = "../images/frutta_icon.png"
                            else if (index === 6) source = "../images/merenda_icon.png"
                            else if (index === 7) source = "../images/pane_icon.png"

                        }
                        height: parent.height*0.75
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                        opacity: 0.7
                    }
                    Text{
                           anchors.left: col_icon.right
                           anchors.leftMargin : mainWindow.width/4
                           anchors.verticalCenter: parent.verticalCenter
                           wrapMode: Text.Wrap;
                           verticalAlignment: Text.AlignVCenter
                           text:
                           {
                               if       (index === 0) text = "Colazioni"
                               else if  (index === 1) text = "Primi"
                               else if  (index === 2) text = "Secondi"
                               else if  (index === 3) text = "Contorni"
                               else if  (index === 4) text = "Piatti Unici"
                               else if  (index === 5) text = "Frutta"
                               else if  (index === 6) text = "Merende"
                               else if  (index === 7) text = "Pane"
                           }
                    }
                    MouseArea{
                        anchors.fill: parent
                        onPressed:
                        {
                            parent.color = "#d9eaee"
                        }

                        onReleased: {
                            if      (index === 0) meal_sel.text = "breakfast"
                            else if (index === 1) meal_sel.text = "primo"
                            else if (index === 2) meal_sel.text = "secondo"
                            else if (index === 3) meal_sel.text = "contorno"
                            else if (index === 4) meal_sel.text = "completo"
                            else if (index === 5) meal_sel.text = "frutta"
                            else if (index === 6) meal_sel.text = "merenda"
                            else if (index === 7) meal_sel.text = "pane"

                            stackView.push(Qt.resolvedUrl("../recipes_list.qml"))
                            parent.color = mainWindow.color
                        }
                    }
                }

            }//end of repeater
        }//end of column
    }//end of scrollview
}//end of item
