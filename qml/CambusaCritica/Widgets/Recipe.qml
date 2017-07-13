import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import "../CalcMenu.js" as CalcMenu
import "."
import ".."

Rectangle{
    //id: rect_recipe_sel
   // anchors.horizontalCenter: parent.horizontalCenter;
    y: 150
    //width: 10
    //height: 100

    FullMeal{
        id: fullMealModel
    }

    Column{
        anchors.horizontalCenter: parent.horizontalCenter;
        spacing: 5
        Text{  text: fullMealModel.get(CalcMenu.getDayClicked()).name}

        Repeater{
                 model: 7
                 //model: fullMealModel.get(CalcMenu.getDayClicked()).ingredients.counts
                 Text{text: fullMealModel.get(CalcMenu.getDayClicked()).ingredients.get(index).name_ing + " :: " +
                    fullMealModel.get(CalcMenu.getDayClicked()).ingredients.get(index).dose + " gr" }

        }
        Text{width: 300; wrapMode: Text.Wrap; text: fullMealModel.get(CalcMenu.getDayClicked()).recipe }
    }




}
