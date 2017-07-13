import QtQuick 2.4
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Controls 1.3
import "../functions/CalcMenu.js" as CalcMenu
import "../functions/MenuModello.js" as MenuModello
import ".."


//*********************************************************//
// rectangle numeri
Item
{
    id: rect_numeri
    Component.onCompleted: console.log("Created imposta modello...")
    MouseArea{
        anchors.fill: parent
        onClicked:
        {
            calendar_inizio.visible = false
        }
    }

    Column
    {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    anchors.verticalCenterOffset: -mainWindow.height*0.05
    width: mainWindow.width*0.7
    spacing: mainWindow.height/30

    Text {  text: "Giorno d'inizio: "   }
    Row {
         width: parent.width
         spacing: 10
         ComboBox{
               id: combo_giorno_in
               width: parent.width/4
               model: ["1", "2", "3","4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15",
                       "16", "17", "18","19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
               Settings { property alias value_giorno_inizio: combo_giorno_in.currentIndex  }

          }
          ComboBox{
               id: combo_mese_in
               width: parent.width/2
               model: ["Gennaio", "Febbraio", "Marzo","Aprile", "Maggio", "Giugno",
                       "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"]
               Settings { property alias value_mese_inizio: combo_mese_in.currentIndex  }
          }

          Image{
              source: "../images/calendar_icon.png"
              height: parent.height
              fillMode: Image.PreserveAspectFit
              //asynchronous: true
              MouseArea{
                  anchors.fill: parent
                  onClicked:  calendar_inizio.visible = true
              }
          }
     }


    Text{
       text: " "
    }

    Text { text: "Numero maschi: " + male_slider.value  }
    Slider{
       id: male_slider
       width: parent.width
       height: mainWindow.height/10
       style: SliderStyle
       {
             groove: Rectangle {
                 implicitWidth: parent.width
                 implicitHeight: 8
                 color: "gray"
                 radius: 8
             }
             handle: Rectangle {
                 anchors.centerIn: parent
                 color: control.pressed ? "white" : "lightgray"
                 border.color: "gray"
                 border.width: 2
                 implicitWidth: 15
                 implicitHeight: 15
                 radius: 8
             }
        }

        minimumValue: 0
        maximumValue: 50
        stepSize: 1.0
        updateValueWhileDragging : true
        Settings { property alias value_male: male_slider.value  }
        onValueChanged: CalcMenu.setNMALE(male_slider.value);
        Component.onCompleted: CalcMenu.setNMALE(male_slider.value);
   }

  Text { text: "Numero femmine: " + female_slider.value }
  Slider{
     id: female_slider
     width: parent.width
     height: mainWindow.height/10
     style: SliderStyle
     {
           groove: Rectangle {
               implicitWidth: parent.width
               implicitHeight: 8
               color: "gray"
               radius: 8
           }
           handle: Rectangle {
               anchors.centerIn: parent
               color: control.pressed ? "white" : "lightgray"
               border.color: "gray"
               border.width: 2
               implicitWidth: 15
               implicitHeight: 15
               radius: 8
           }
     }
     minimumValue: 0
     maximumValue: 50
     stepSize: 1.0
     updateValueWhileDragging : true
     Settings { property alias value_female: female_slider.value  }
     onValueChanged: CalcMenu.setNFEMALE(female_slider.value);
     Component.onCompleted: CalcMenu.setNFEMALE(female_slider.value);
  }



 }// end column

 Calendar{
     id: calendar_inizio
     width: parent.width*0.9
     height: mainWindow.height*0.5
     anchors.centerIn: parent
     visibleMonth : new Date().getMonth()
     visible: false
     onClicked:
     {
         combo_giorno_in.currentIndex =  selectedDate.getDate()-1
         combo_mese_in.currentIndex   =  selectedDate.getMonth()
         visible = false
     }
  }


 Rectangle {
      width: parent.width
      height: mainWindow.height*0.065
      color: top_bar.color

      anchors.horizontalCenter: parent.horizontalCenter
      anchors.verticalCenter: parent.bottom
      anchors.verticalCenterOffset: -height/2

      Text {
          id: testo_bottom
          color: "#ffffff"
          anchors.fill: parent
          text: qsTr("Avanti")
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
      }
      MouseArea {
          anchors.fill: parent
          onPressed:
          {
            testo_bottom.text = "in elaborazione..."
            parent.color =  "#c4c238"
          }
          onReleased:
          {
              CalcMenu.setNMALE(male_slider.value);
              CalcMenu.setNFEMALE(female_slider.value);              
              CalcMenu.setDayIn(combo_giorno_in.currentIndex);
              CalcMenu.setMeseIn(combo_mese_in.currentIndex);            

              MenuModello.setModelloAsMenu(modello_sel.text);


              CalcMenu.setCurrentMenuName("[nuovo menù]");
              CalcMenu.setNewList(true);
              CalcMenu.setSavingStatus(false);
              stackView.clear();
              stackView.push({item:rect_home_buttons, immediate: true})
              stackView.push({item:Qt.resolvedUrl("../mymenu.qml"), immediate: true})
              parent.color = top_bar.color
              testo_bottom.text = "Avanti"
          }
      }
   }
 } //end item  numeri

