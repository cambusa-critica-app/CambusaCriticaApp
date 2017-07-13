import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import ".."


//*********************************************************//
// rectangle numeri
Item
{
    id: rect_numeri
    Component.onCompleted: console.log("Created numeri ragazzi...")

    Column
    {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    anchors.verticalCenterOffset: -mainWindow.height*0.05
    width: mainWindow.width*0.7
    spacing: 10

    Text { text: "Numero maschi: " + male_slider.value  }
    Slider{
       id: male_slider
       width: parent.width
       height: mainWindow.height/10
       style: SliderStyle
       {
             groove: Rectangle {
                 implicitWidth: parent.width
                 implicitHeight: 10
                 color: "gray"
                 radius: 8
             }
             handle: Rectangle {
                 anchors.centerIn: parent
                 color: control.pressed ? "white" : "lightgray"
                 border.color: "gray"
                 border.width: 2
                 implicitWidth: 30
                 implicitHeight: 30
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
               implicitHeight: 10
               color: "gray"
               radius: 8
           }
           handle: Rectangle {
               anchors.centerIn: parent
               color: control.pressed ? "white" : "lightgray"
               border.color: "gray"
               border.width: 2
               implicitWidth: 30
               implicitHeight: 30
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
  Text{
    text: " "
  }
  Text{
    anchors.horizontalCenter: parent.horizontalCenter
    text: "Totale"
    font.pointSize: 14
    }
  Text{
    anchors.horizontalCenter: parent.horizontalCenter
    text: (male_slider.value + female_slider.value)
    font.pointSize: 24
  }
 }// end column


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

            //  stackView.clear();
            //  stackView.push({item:rect_home_buttons, immediate: true})
            //  stackView.push({item:Qt.resolvedUrl("crea_branca.qml"), immediate: true})
            //  stackView.push({item:Qt.resolvedUrl("crea_numeri.qml"), immediate:true})
              //stackView.push({item:Qt.resolvedUrl("crea_giorni.qml"), immediate:true})
              stackView.push(Qt.resolvedUrl("crea_giorni.qml"));
              testo_bottom.text = "Avanti"
              parent.color = top_bar.color
          }
      }
   }
 } //end item  numeri

