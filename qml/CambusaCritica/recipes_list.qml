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

Item  {
    width: mainWindow.width

    Column{

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.fill: parent
        spacing: 0

        //header
        Rectangle{
            id: list_header
            width: mainWindow.width
            height: mainWindow.height/10
            //color: "#d3dddd"
            color: "#d3ecc2"      // green as crea menù
            //color: mainWindow.color
            border.color: "#4c6f3a"
            border.width: 2

            Image{
                anchors.verticalCenter: list_header.verticalCenter
                id: col_icon
                anchors.left: parent.left
                anchors.leftMargin : 5
                source:
                {
                    if       (meal_sel.text === "breakfast") source = "./images/colazione_icon.png"
                    else if  (meal_sel.text === "primo")     source = "./images/pranzo_1_icon.png"
                    else if  (meal_sel.text === "secondo")   source = "./images/pranzo_2_icon.png"
                    else if  (meal_sel.text === "contorno")  source = "./images/pranzo_3_icon.png"
                    else if  (meal_sel.text === "completo")  source = "./images/cena_1_icon.png"
                    else if  (meal_sel.text === "frutta")    source = "./images/frutta_icon.png"
                    else if  (meal_sel.text === "merenda")   source = "./images/merenda_icon.png"
                    else if  (meal_sel.text === "pane")      source = "./images/pane_icon.png"

                }
                height: parent.height*0.75
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                opacity: 0.7
            }
            Text{
                   anchors.left: col_icon.right
                   anchors.leftMargin : mainWindow.width/4
                   anchors.verticalCenter: list_header.verticalCenter
                   wrapMode: Text.Wrap;
                   verticalAlignment: Text.AlignVCenter
                   color: "#4c6f3a"  //standard
                   font.bold: true
                   text:
                   {
                       if       (meal_sel.text === "breakfast") text = "Colazioni"
                       else if  (meal_sel.text === "primo") text = "Primi"
                       else if  (meal_sel.text === "secondo") text = "Secondi"
                       else if  (meal_sel.text === "contorno") text = "Contorni di verdura"
                       else if  (meal_sel.text === "completo") text = "Piatti Completi"
                       else if  (meal_sel.text === "frutta") text = "Frutta"
                       else if  (meal_sel.text === "merenda") text = "Merende"
                       else if  (meal_sel.text === "pane") text = "Pane"
                   }
            }
        }

       //recipes list
    ScrollView{
        //anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        width: parent.width
        height: mainWindow.height -top_bar.height - list_header.height

        Column
        {
            id: column_recipes
            visible: true

            Repeater
            {
                id: rep_recipes
                model:
                {
                    if (meal_sel.text === "breakfast")  model = breakfastModel.count
                    if (meal_sel.text === "primo")      model = primiModel.count
                    if (meal_sel.text === "secondo")    model = secondiModel.count
                    if (meal_sel.text === "contorno")   model = contorniModel.count
                    if (meal_sel.text === "completo")   model = fullMealModel.count
                    if (meal_sel.text === "frutta")     model = fruttaModel.count
                    if (meal_sel.text === "merenda")    model = snacksModel.count
                    if (meal_sel.text === "pane")       model = paneModel.count
                }

                Rectangle
                {
                    width: mainWindow.width
                    height: mainWindow.height/10
                    //color: "#d3dddd"  // light grey blue
                    //color: "#eee5d0"  // as manuale d'uso buttons
                    //color: "#e8dbb6"    //as personalizza
//                    color: "#d3ecc2"      // green as crea menù
                    color: mainWindow.color
                    border.color: "black"
                    border.width: 1
                    visible: index === 0 ? false : true

                    Column{
                        spacing: 2
                        //id: data_column
                        width: parent.width*0.8
                        anchors.horizontalCenter: parent.horizontalCenter
                        Text{text: " "}
                        Text{
                            wrapMode: Text.Wrap;
                            width: parent.width
                            text:
                            {
                                if (meal_sel.text === "breakfast")  text = breakfastModel.get(index).name
                                if (meal_sel.text === "primo")      text = primiModel.get(index).name
                                if (meal_sel.text === "secondo")    text = secondiModel.get(index).name
                                if (meal_sel.text === "contorno")   text = contorniModel.get(index).name
                                if (meal_sel.text === "completo")   text = fullMealModel.get(index).name
                                if (meal_sel.text === "frutta")     text = fruttaModel.get(index).name
                                if (meal_sel.text === "merenda")    text = snacksModel.get(index).name
                                if (meal_sel.text === "pane")       text = paneModel.get(index).name
                            }
                        }
                        Text{text: " "}
                    }
                    MouseArea
                    {
                        anchors.fill: parent
                        onPressed:
                        {
                            parent.color = "#d9eaee"
                        }

                        onReleased:
                        {
                            if      (meal_sel.text === "breakfast")  recipe_type.text = "breakfast"
                            else if (meal_sel.text === "primo")      recipe_type.text = "pranzo1"
                            else if (meal_sel.text === "secondo")    recipe_type.text = "pranzo2"
                            else if (meal_sel.text === "contorno")   recipe_type.text = "pranzo3"
                            else if (meal_sel.text === "completo")   recipe_type.text = "cena"
                            else if (meal_sel.text === "frutta")     recipe_type.text = "frutta1"
                            else if (meal_sel.text === "merenda")    recipe_type.text = "snack"
                            else if (meal_sel.text === "pane")       recipe_type.text = "pane1"

                            recipe_id.text = index
                            //if ((CalcMenu.getNMALE() + CalcMenu.getNFEMALE()) < 4)
                            //{
                                CalcMenu.setNMALE(5);
                                CalcMenu.setNFEMALE(5);
                                CalcMenu.setBranca("eg");
                                CalcMenu.setActivity(0);
                                CalcMenu.setConsulta(true);
                            //}
                            stackView.push(Qt.resolvedUrl("recipesel.qml"))
                            parent.color = mainWindow.color
                        }
                    }
                }//end of rectangle for recipe
            }//end of repeater
        }//end recipes column
    } //end of scrollview
  }//end of main column with header
}
