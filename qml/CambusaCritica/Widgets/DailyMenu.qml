import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import "../CalcMenu.js" as CalcMenu
import "."
import ".."

Rectangle{
    id: page
    x: 0
    y: 0
    width: 320
    height: 480

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    anchors.fill: parent

    FullMeal{
        id: fullMealModel
    }

    Snacks{
        id: snacksModel
    }


    Rectangle{
        id: rect_recipe_sel
        anchors.horizontalCenter: page.horizontalCenter
        anchors.verticalCenter: page.verticalCenter
        //anchors.verticalCenterOffset: parent.height/3
        anchors.fill: parent
        visible: false

        Column{
            id: column_list
            width: page.width*0.9
            //anchors.fill: parent
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.verticalCenter: parent.verticalCenter;
            spacing: 5
            Text{font.bold: true; text: fullMealModel.get(CalcMenu.getDayClicked()).name + " \n"}

            Repeater{
                    model: 7
                    //model: fullMealModel.get(CalcMenu.getDayClicked()).ingredients.counts
                    Text{text: fullMealModel.get(CalcMenu.getDayClicked()).ingredients.get(index).name_ing + " :: " +
                       fullMealModel.get(CalcMenu.getDayClicked()).ingredients.get(index).dose + " gr" }
             }

            Text{font.bold: true; text: "\nRicetta \n"}

            ScrollView{
                width: column_list.width
                height: page.height/3
                Text{width: column_list.width; wrapMode: Text.Wrap; text: fullMealModel.get(CalcMenu.getDayClicked()).recipe }
            }
        }
    }


    Rectangle{
        id: rect_day_sel

        width: parent.width
        height: parent.height/3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        visible: true

        color: "lightblue"

        Column{
            id: column_menu
            anchors.horizontalCenter: parent.horizontalCenter;

            spacing: 5
            Text{text: "Giorno " + (CalcMenu.getDayClicked() +1)}
            //Text{text: "Colazione:\n " + breakfastModel.get(CalcMenu.getDayClicked()).name}
            Button{
                id: button_pranzo
                text: "Pranzo:\n " + fullMealModel.get(CalcMenu.getDayClicked()).name
                onClicked: {
                    rect_day_sel.visible = false
                    rect_recipe_sel.visible = true
                }
            }
            Button{
                id: button_merenda
                text: "Merenda:\n " + snacksModel.get(CalcMenu.getDayClicked()).name
                //onClicked: dayLoader.source = "RecipeSnack.qml"
            }
            Button{
                id: button_cena
                text: "Cena:\n " + fullMealModel.get(CalcMenu.getDayClicked()).name
               // onClicked: dayLoader.source = "Recipe.qml"
            }

        }

        //back button
    Rectangle {
       id: rect_indietro
       width: page.width/4
        height: page.height/9
        radius: 34
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset:  page.height/2.3
        anchors.horizontalCenterOffset: -width

        Text {
            anchors.fill: parent
            text: qsTr("Indietro")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                pageLoader.source = "mymenu.qml"

            }
        }
    }
    }


}


