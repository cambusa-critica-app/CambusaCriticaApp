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

//***********************************************************//
//                          recipe details
//***********************************************************//

Item{

    id: rect_recipe_sel
    property var my_id: recipe_id.text
    property var sel_meal;

    Component.onCompleted:
    {
        if      (recipe_type.text === "breakfast")  {sel_meal = 0;}
        else if (recipe_type.text === "pranzo1")    {sel_meal = 1;}
        else if (recipe_type.text === "pranzo2")    {sel_meal = 2;}
        else if (recipe_type.text === "pranzo_c")   {sel_meal = 3;}
        else if (recipe_type.text === "pranzo3")    {sel_meal = 4;}
        else if (recipe_type.text === "frutta1")    {sel_meal = 5;}
        else if (recipe_type.text === "pane1")      {sel_meal = 6;}
        else if (recipe_type.text === "snack")      {sel_meal = 7;}
        else if (recipe_type.text === "cena_p")     {sel_meal = 8;}
        else if (recipe_type.text === "cena_s")     {sel_meal = 9;}
        else if (recipe_type.text === "cena")       {sel_meal = 10;}
        else if (recipe_type.text === "cena2")      {sel_meal = 11;}
        else if (recipe_type.text === "frutta2")    {sel_meal = 12;}
        else if (recipe_type.text === "pane2")      {sel_meal = 13;}
    }

    width: parent.width

    Column
    {
        anchors.horizontalCenter: parent.horizontalCenter        
        width: parent.width
        height: parent.height
        spacing: 0

        Rectangle
        {
            id: recipe_header
            width: mainWindow.width
            height: mainWindow.height/10
            border.color: "#4c6f3a"
            border.width: 2
            color: "#d3ecc2"      // green as crea menù

                Text
                {
                    id: title
                    color: "#4c6f3a"  //standard
                    font.bold: true;
                    width: parent.width-mainWindow.width/8
                    anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16;
                    anchors.top: parent.top; anchors.topMargin: parent.height/3
                    anchors.verticalCenter: parent.verticalCenter
                    wrapMode: Text.Wrap;
                    text: CalcList.getRecipeName(sel_meal, my_id);
                }
        }

        ScrollView{
            id: scroll
            width: mainWindow.width
            height: mainWindow.height - recipe_header.height - top_bar.height - consulta_recipe.height
            verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

            function setIngText()
            {
                var text_ing = "";
                var NING = CalcList.getRecipeNING(sel_meal, my_id);
                console.log("NING ("+sel_meal + "," + my_id + ") = " + NING)

                for (var ing = 0; ing < NING; ing++)
                {
                    text_ing += CalcList.getRecipeIngName(sel_meal, my_id, ing) + ": " +
                                CalcMenu.calcTotalDoseIngredient(CalcList.getRecipeIngDose(sel_meal, my_id, ing),
                                            CalcList.getRecipeIngUnit(sel_meal, my_id, ing),
                                            CalcList.getRecipeIngName(sel_meal, my_id, ing), 0) + " \n";
                }
                return text_ing;
            }

            function setRecipeText()
            {
                var text_recipe = CalcList.getRecipeRecipe(sel_meal, my_id);
                return text_recipe;
            }

            Column{
                spacing:   2
                width: mainWindow.width

                Rectangle
                {
                    width: mainWindow.width
                    height: mainWindow.height/11
                    border.color: "#ddc071"
                    border.width: 2
                    color: "#f5e3a6"      // green as crea menù

                    Row{
                        spacing: mainWindow.width/30
                        anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16;
                        anchors.verticalCenter: parent.verticalCenter

                        Image{
                            id: person_pic
                            height: number_indicator.height*1.2
                            fillMode: Image.PreserveAspectFit
                            source: "images/male.png"
                            opacity: 0.7
                        }

                        Text{
                            id: number_indicator
                            font.bold: true;
                            wrapMode: Text.Wrap;
                            text: ""
                            Component.onCompleted: text = (CalcMenu.getNMALE() + CalcMenu.getNFEMALE())
                            opacity: 0.7
                        }


                        Image{
                            id: weight_pic
                            height: number_indicator.height*1.2
                            fillMode: Image.PreserveAspectFit
                            source: "images/zaino_icon.png"
                            opacity: 0.7
                        }

                        Text{
                            id: weight_indicator
                            font.bold: true;
                            text: ""
                            Component.onCompleted: text = CalcList.calcolaPesoRicetta(-2, my_id, sel_meal, 0)
                            opacity: 0.7
                        }

                        Image{
                            id: clock_pic
                            height: number_indicator.height*1.2
                            fillMode: Image.PreserveAspectFit
                            source: "images/clock_icon.png"
                            opacity: 0.9
                        }

                        Text{
                            id: clock_indicator
                            font.bold: true;
                            text: ""
                            Component.onCompleted: text = CalcList.calcolaTempoRicetta(my_id, sel_meal)
                            opacity: 0.7
                        }

                        Image{
                            id: water_pic
                            height: number_indicator.height*1.2
                            fillMode: Image.PreserveAspectFit
                            //source: "images/water_drop.png"
                            source: "images/fire_icon.png"
                            opacity: 0.7
                        }

                        Text{
                            id: water_indicator
                            font.bold: true;
                            text: " "
                            Component.onCompleted: text = CalcList.calcolaCalorie(-2, my_id, sel_meal) + " kcal"
                            //text: CalcList.calcolaPesoRicetta(-2, my_id, sel_meal, 1)
                            opacity: 0.7
                        }

                    }//end summary row
                }//end summary rectangle
                //Text{anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16; font.bold: true; text: "\nIngredienti (" + (CalcMenu.getNMALE() + CalcMenu.getNFEMALE())  + " persone)\n"}
                Text{anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16; font.bold: true; text: "\nIngredienti\n"}
                Text{anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16; width: mainWindow.width-2*mainWindow.width/16; Component.onCompleted: text = scroll.setIngText()}
                Text{anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16; font.bold: true; text: "\nRicetta \n"}
                Text{anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16; width: mainWindow.width-2*mainWindow.width/16; wrapMode: Text.Wrap; Component.onCompleted: text = scroll.setRecipeText()}
                Text{text: " "}
            }
        }//end scrollview

        //personalizza calcolo dosi solo in modalità "consulta ricette"
        //bottom buttons
        Row{
            id: consulta_recipe
            visible: (CalcMenu.getConsulta()) ? true : false
            spacing: 1
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                color: top_bar.color
                width: mainWindow.width
                height: mainWindow.height*0.065
                //radius: 34
                //border.width: 1
                Text {
                    id: my_text
                    color: mainWindow.color
                    anchors.fill: parent
                    text: qsTr("Personalizza calcolo grammature")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                MouseArea{
                    anchors.fill: parent
                    onPressed:
                    {
                        parent.color = "#c4c238"
                    }

                    onReleased:
                    {
                        stackView.pop();
                        stackView.push({item:Qt.resolvedUrl("change_dose_recipe.qml"), immediate: true})


                    }
                }
            }
        }//end of bottom optional raw
    }//end column


    Component.onDestruction: CalcMenu.setConsulta(false);
}//end item
