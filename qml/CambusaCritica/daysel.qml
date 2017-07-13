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


//*******************************************************************//
//                          day selected
//*******************************************************************//

Item{
    id: rect_day_sel


Column{

    anchors.horizontalCenter: parent.horizontalCenter
    spacing: 0

    Item{
        id: top_buttons
        width: parent.width*0.7
        height: mainWindow.height*0.07
        anchors.horizontalCenter: parent.horizontalCenter

        Image{
            source: "images/back_button.png"
            height: parent.height
            fillMode: Image.PreserveAspectFit
            visible: (CalcMenu.getDayClicked()===0) ? false : true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.leftMargin
            //anchors.horizontalCenterOffset: -width/2

            MouseArea{
                anchors.fill: parent
                onClicked:
                {
                    stackView.pop()
                    CalcMenu.setDayClicked(CalcMenu.getDayClicked()-1)
                    stackView.push({item:Qt.resolvedUrl("daysel.qml"), immediate: true})
                }
            }
        }

        Text{id: day_text; font.bold: true;
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text : CalcMenu.getGiornoEsatto(CalcMenu.getDayClicked()+1);//"Giorno " + (CalcMenu.getDayClicked()+1)
        }

        Image{
            source: "images/next_button.png"
            height: parent.height
            fillMode: Image.PreserveAspectFit

            visible: (CalcMenu.getDayClicked()>=CalcMenu.getTotDays()-1) ? false : true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.right
            anchors.horizontalCenterOffset: -width/2

            MouseArea{
                anchors.fill: parent
                onClicked:
                {
                 //   stackView.pop()
                    CalcMenu.setDayClicked(CalcMenu.getDayClicked()+1)
                    stackView.push({item: Qt.resolvedUrl("daysel.qml"), immediate:true})
                }
            }
        }
        Image{
            source: "images/save.png"
            height: parent.height*0.7
            fillMode: Image.PreserveAspectFit

            visible: (CalcMenu.getDayClicked()===CalcMenu.getTotDays()-1) ? true : false
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.right
            anchors.horizontalCenterOffset: -width/2

            MouseArea{
                anchors.fill: parent
                onClicked:
                {
                    CalcMenu.setSalvaImporta("salva");
                    //stackView.clear();
                    stackView.push({item: Qt.resolvedUrl("salvataggio.qml"), immediate:true})
                }
            }
        }

      }
    //*************************************
    //               RECIPES
    //*************************************


    ScrollView{
        anchors.horizontalCenter: parent.horizontalCenter
        width: mainWindow.width*0.9
        height: mainWindow.height - top_buttons.height - bot_buttons.height - top_bar.height
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff

    Column{
        spacing: 4

        Repeater
        {
           model: 14
           Rectangle
           {
              id: rect_meal
              width: mainWindow.width*0.9
              height: mainWindow.height/12
              color:
              {
                   if      (index === 0)  color = "#d7e5e6"
                   else if (index === 1)  color = "palegoldenrod"
                   else if (index === 2)  color = "palegoldenrod"
                   else if (index === 3)  color = "palegoldenrod"
                   else if (index === 4)  color = "palegoldenrod"
                   else if (index === 5)  color = "palegoldenrod"
                   else if (index === 6)  color = "palegoldenrod"
                   else if (index === 7)  color = "#d3ecc2"
                   else if (index === 8)  color = "#e8e6d3"
                   else if (index === 9)  color = "#e8e6d3"
                   else if (index === 10)  color = "#e8e6d3"
                   else if (index === 11) color = "#e8e6d3"
                   else if (index === 12) color = "#e8e6d3"
                   else if (index === 13) color = "#e8e6d3"
             }
             radius: 5
             border.color: "black"
             border.width: 2
             visible:
             {
                 if      (index === 0)  (breakfastModel.get(CalcMenu.returnBreakfast(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 1)  (primiModel.get(CalcMenu.returnPranzoPrimo(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 2)  (secondiModel.get(CalcMenu.returnPranzoSecondo(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 3)  (fullMealModel.get(CalcMenu.returnPranzoCompleto(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 4)  (contorniModel.get(CalcMenu.returnPranzoContorno(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 5)  (fruttaModel.get(CalcMenu.returnPranzoFrutta(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 6)  (paneModel.get(CalcMenu.returnPranzoPane(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 7)  (snacksModel.get(CalcMenu.returnMerenda(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 8)  (primiModel.get(CalcMenu.returnCenaPrimo(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 9)  (secondiModel.get(CalcMenu.returnCenaSecondo(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 10) (fullMealModel.get(CalcMenu.returnCenaCompleto(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 11) (contorniModel.get(CalcMenu.returnCenaContorno(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 12) (fruttaModel.get(CalcMenu.returnCenaFrutta(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
                 else if (index === 13) (paneModel.get(CalcMenu.returnCenaPane(CalcMenu.getDayClicked())).name === "NIENTE") ? false : true
             }

             Image{
                 anchors.verticalCenter: parent.verticalCenter
                 id: col_icon
                 anchors.left: parent.left
                 anchors.leftMargin : 5
                 source:
                 {
                     if         (index === 0)  source = "images/colazione_icon.png"
                     else if    (index === 1)  source = "images/pranzo_1_icon.png"
                     else if    (index === 2)  source = "images/pranzo_2_icon.png"
                     else if    (index === 3)  source = "images/pranzo_c_icon.png"
                     else if    (index === 4)  source = "images/pranzo_3_icon.png"
                     else if    (index === 5)  source = "images/frutta_icon.png"
                     else if    (index === 6)  source = "images/pane_icon.png"
                     else if    (index === 7)  source = "images/merenda_icon.png"
                     else if    (index === 8)  source = "images/cena_primo_icon.png"
                     else if    (index === 9)  source = "images/cena_secondo_icon.png"
                     else if    (index === 10)  source = "images/cena_1_icon.png"
                     else if    (index === 11) source = "images/cena_2_icon.png"
                     else if    (index === 12) source = "images/frutta_icon.png"
                     else if    (index === 13) source = "images/pane_icon.png"
                 }
                 height: parent.height*0.75
                 fillMode: Image.PreserveAspectFit
                 asynchronous: true
                 opacity: 0.7
             }

             Text{
                    anchors.left: col_icon.right
                    anchors.leftMargin : 25
                    anchors.verticalCenter: parent.verticalCenter
                    wrapMode: Text.Wrap;
                    verticalAlignment: Text.AlignVCenter
                    text:
                    {
                        if      (index === 0)  text = "Colazione:\n" + breakfastModel.get(CalcMenu.returnBreakfast(CalcMenu.getDayClicked())).name
                        else if (index === 1)  text = "Primo:\n" + primiModel.get(CalcMenu.returnPranzoPrimo(CalcMenu.getDayClicked())).name
                        else if (index === 2)  text = "Secondo:\n" + secondiModel.get(CalcMenu.returnPranzoSecondo(CalcMenu.getDayClicked())).name
                        else if (index === 3)  text = "Piatto unico:\n" + fullMealModel.get(CalcMenu.returnPranzoCompleto(CalcMenu.getDayClicked())).name
                        else if (index === 4)  text = "Contorno:\n" + contorniModel.get(CalcMenu.returnPranzoContorno(CalcMenu.getDayClicked())).name
                        else if (index === 5)  text = "Frutta:\n" + fruttaModel.get(CalcMenu.returnPranzoFrutta(CalcMenu.getDayClicked())).name
                        else if (index === 6)  text = "Pane:\n" + paneModel.get(CalcMenu.returnPranzoPane(CalcMenu.getDayClicked())).name
                        else if (index === 7)  text = "Merenda:\n" + snacksModel.get(CalcMenu.returnMerenda(CalcMenu.getDayClicked())).name
                        else if (index === 8)  text = "Primo:\n" + primiModel.get(CalcMenu.returnCenaPrimo(CalcMenu.getDayClicked())).name
                        else if (index === 9)  text = "Secondo:\n" + secondiModel.get(CalcMenu.returnCenaSecondo(CalcMenu.getDayClicked())).name
                        else if (index === 10)  text = "Piatto unico:\n" + fullMealModel.get(CalcMenu.returnCenaCompleto(CalcMenu.getDayClicked())).name
                        else if (index === 11) text = "Contorno:\n" + contorniModel.get(CalcMenu.returnCenaContorno(CalcMenu.getDayClicked())).name
                        else if (index === 12) text = "Frutta:\n" + fruttaModel.get(CalcMenu.returnCenaFrutta(CalcMenu.getDayClicked())).name
                        else if (index === 13) text = "Pane:\n" + paneModel.get(CalcMenu.returnCenaPane(CalcMenu.getDayClicked())).name
                    }
             }

             MouseArea{
                 anchors.fill: parent
                 onPressed:
                 {
                     rect_meal. color = "#f1b48b"
                 }

                 onReleased:
                 {

                     if      (index === 0)  rect_meal.color = "#d7e5e6"
                     else if (index === 1)  rect_meal.color = "palegoldenrod"
                     else if (index === 2)  rect_meal.color = "palegoldenrod"
                     else if (index === 3)  rect_meal.color = "palegoldenrod"
                     else if (index === 4)  rect_meal. color = "palegoldenrod"
                     else if (index === 5)  rect_meal.color = "palegoldenrod"
                     else if (index === 6)  rect_meal.color = "palegoldenrod"
                     else if (index === 7)  rect_meal.color = "#d3ecc2"
                     else if (index === 8)  rect_meal.color = "#e8e6d3"
                     else if (index === 9)  rect_meal.color = "#e8e6d3"
                     else if (index === 10) rect_meal.color = "#e8e6d3"
                     else if (index === 11) rect_meal.color = "#e8e6d3"
                     else if (index === 12) rect_meal.color = "#e8e6d3"
                     else if (index === 13) rect_meal.color = "#e8e6d3"

                     //set model
                     if      (index === 0)  recipe_type.text = "breakfast"
                     else if (index === 1)  recipe_type.text = "pranzo1"
                     else if (index === 2)  recipe_type.text = "pranzo2"
                     else if (index === 3)  recipe_type.text = "pranzo_c"
                     else if (index === 4)  recipe_type.text = "pranzo3"
                     else if (index === 5)  recipe_type.text = "frutta1"
                     else if (index === 6)  recipe_type.text = "pane1"
                     else if (index === 7)  recipe_type.text = "snack"
                     else if (index === 8)  recipe_type.text = "cena_p"
                     else if (index === 9)  recipe_type.text = "cena_s"
                     else if (index === 10) recipe_type.text = "cena"
                     else if (index === 11) recipe_type.text = "cena2"
                     else if (index === 12) recipe_type.text = "frutta2"
                     else if (index === 13) recipe_type.text = "pane2"

                     //set recipe ID
                     if      (index === 0)  recipe_id.text = CalcMenu.returnBreakfast(CalcMenu.getDayClicked())
                     else if (index === 1)  recipe_id.text = CalcMenu.returnPranzoPrimo(CalcMenu.getDayClicked())
                     else if (index === 2)  recipe_id.text = CalcMenu.returnPranzoSecondo(CalcMenu.getDayClicked())
                     else if (index === 3)  recipe_id.text = CalcMenu.returnPranzoCompleto(CalcMenu.getDayClicked())
                     else if (index === 4)  recipe_id.text = CalcMenu.returnPranzoContorno(CalcMenu.getDayClicked())
                     else if (index === 5)  recipe_id.text = CalcMenu.returnPranzoFrutta(CalcMenu.getDayClicked())
                     else if (index === 6)  recipe_id.text = CalcMenu.returnPranzoPane(CalcMenu.getDayClicked())
                     else if (index === 7)  recipe_id.text = CalcMenu.returnMerenda(CalcMenu.getDayClicked())
                     else if (index === 8)  recipe_id.text = CalcMenu.returnCenaPrimo(CalcMenu.getDayClicked())
                     else if (index === 9)  recipe_id.text = CalcMenu.returnCenaSecondo(CalcMenu.getDayClicked())
                     else if (index === 10)  recipe_id.text = CalcMenu.returnCenaCompleto(CalcMenu.getDayClicked())
                     else if (index === 11) recipe_id.text = CalcMenu.returnCenaContorno(CalcMenu.getDayClicked())
                     else if (index === 12) recipe_id.text = CalcMenu.returnCenaFrutta(CalcMenu.getDayClicked())
                     else if (index === 13) recipe_id.text = CalcMenu.returnCenaPane(CalcMenu.getDayClicked())
                     stackView.push(Qt.resolvedUrl("recipesel.qml"))
                 }
             }
         }
       }//end of repeater


       Image{

           id: fire_image
           anchors.horizontalCenter: parent.horizontalCenter
           source: "images/fire_icon.png"
           height: rect_calorie.height
           fillMode: Image.PreserveAspectFit
           asynchronous: true
           opacity: 0.7

           MouseArea{
               anchors.fill: parent
               onPressed:
               {
                   fire_image.source = "images/clessidra.png"
               }
               onReleased:
               {
                   if (rect_calorie.visible === false)
                   {
                       text_calorie.text = "Calorie giornaliere per persona: " + CalcList.calcolaCalorie(CalcMenu.getDayClicked(), 0, -1)  + " kcal";
                       rect_calorie.visible = true;
                       fire_image.visible = false
                       fire_image.source = "images/fire_icon.png"
                   }

               }
           }

       }

       Rectangle
       {
           id: rect_calorie
           visible: false
           width: mainWindow.width*0.9
           height: mainWindow.height/12
           color: "#f1b48b"

           radius: 5
           border.color: "black"
           border.width: 1

           Text
           {
             id: text_calorie
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            wrapMode: Text.Wrap;
            verticalAlignment: Text.AlignVCenter
            text: ""
           }
           MouseArea{
               anchors.fill: parent
               onClicked:
               {
                   rect_calorie.visible = false;
                   fire_image.visible = true;                   
               }
           }
       }
       Text{ text: " "}
     }// end column
    }//end scrollview

    //bottom buttons
    Row{
        id: bot_buttons
        spacing: 1
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            color: top_bar.color
            width: mainWindow.width/2
            height: mainWindow.height*0.065
            //radius: 34
            //border.width: 1
            Text {
                id: my_text
                color: mainWindow.color
                anchors.fill: parent
                text: qsTr("Spesa del Giorno")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            MouseArea{
                anchors.fill: parent
                onPressed:
                {
                    parent.color =  "#c4c238"
                    my_text.text = "in elaborazione..."
                }
                onReleased:
                {
                    console.log("day clicked = " + CalcMenu.getDayClicked())
                    CalcList.azzeraListaSpesa(CalcMenu.getDayClicked());
                    CalcList.creaListaSpesa(CalcMenu.getDayClicked());
                    stackView.push(Qt.resolvedUrl("visualizeSpesaGiorno.qml"))
                    parent.color = top_bar.color
                    my_text.text = "Spesa del Giorno"
                }
            }
        }


        Rectangle {
            color: top_bar.color
            width: mainWindow.width/2
            height: mainWindow.height*0.065
            //radius: 34
            //border.width: 1
            Text {
                id: bottom_text
                color: mainWindow.color
                anchors.fill: parent
                text: qsTr("Personalizza")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            MouseArea{
                anchors.fill: parent
                onPressed:
                {
                  parent.color =  "#c4c238"
                  bottom_text.text = "in elaborazione..."
                }
                onReleased:
                {
                    onClicked: stackView.push(Qt.resolvedUrl("personalizza.qml"))
                    parent.color = top_bar.color
                    bottom_text.text = "Personalizza"
                }
            }
        }
        Component.onCompleted: CalcList.setRestrictedListINDEX();
    }
  }
}

