import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import ".."

//*********************************************************//

Item{
  id: rect_perchi
  Component.onCompleted:
  {
      crea_button_text.opacity = 1
      menu_button_text.opacity = 0.5;
      importa_button_text.opacity = 0.5;
      home_button_text.opacity = 0.5;
      top_underline.x =  mainWindow.width/4;
      console.log("Created scegli opzione menù...")
  }


  Column
  {

      anchors.centerIn: parent
      spacing: mainWindow.height / 20

      Image
      {
          id: crea_nuovo_image
          source: "../images/create.png"
          fillMode: Image.PreserveAspectFit
          width: mainWindow.width/3.5
          anchors.horizontalCenter: parent.horizontalCenter
          MouseArea
          {
              anchors.fill: parent
              onClicked:
              {
                  stackView.push(Qt.resolvedUrl("crea_branca.qml"))
              }
          }
      }

      Rectangle {

          width: mainWindow.width*0.6 //*0.35
          height: mainWindow.height/16
          color: "#d3ecc2"
          border.width: 2
          radius: 15
          anchors.horizontalCenter: parent.horizontalCenter

          Text
          {
              id: testo_crea_nuovo
              anchors.verticalCenter: parent.verticalCenter
              anchors.horizontalCenter: parent.horizontalCenter
              textFormat: Text.PlainText
              text: qsTr("Crea nuovo menù")
              horizontalAlignment: Text.AlignHCenter
              verticalAlignment: Text.AlignVCenter
          }

           MouseArea {
               anchors.fill: parent
               onPressed:
               {
                 testo_crea_nuovo.text = "in elaborazione..."
                 parent.color =  "#c4c238"
               }
               onReleased:
               {
                   stackView.push(Qt.resolvedUrl("crea_branca.qml"));
                   testo_crea_nuovo.text = "Crea nuovo menù"
                   parent.color =  "#d3ecc2"
               }
           }
        }

      Rectangle
      {
          color: "#000000"
          border.color: "black"
          height: 2
          border.width: 2
          anchors.horizontalCenter: parent.horizontalCenter
          width: mainWindow.width

      }

      Image
      {
          id: usa_modello_image
          source: "../images/model_icon.png"
          fillMode: Image.PreserveAspectFit
          width: mainWindow.width/3.2
          anchors.horizontalCenter: parent.horizontalCenter
          MouseArea
          {
              anchors.fill: parent
              onClicked:
              {
                  stackView.push(Qt.resolvedUrl("scegli_modello.qml"))
              }
          }
      }

      Rectangle
      {
          width: mainWindow.width*0.6 //*0.35
          height: mainWindow.height/16
          color: "#d3ecc2"
          border.width: 2
          radius: 15
          anchors.horizontalCenter: parent.horizontalCenter

          Text
          {
              id: testo_usa_modello
              anchors.verticalCenter: parent.verticalCenter
              anchors.horizontalCenter: parent.horizontalCenter
              textFormat: Text.PlainText
              text: qsTr("Usa un modello")
              horizontalAlignment: Text.AlignHCenter
              verticalAlignment: Text.AlignVCenter
          }
           MouseArea {
               anchors.fill: parent
               onPressed:
               {
                 testo_usa_modello.text = "in elaborazione..."
                 parent.color =  "#c4c238"
               }
               onReleased:
               {
                   stackView.push(Qt.resolvedUrl("scegli_modello.qml"));
                   testo_crea_nuovo.text = "Usa un modello"
                   parent.color =  "#d3ecc2"
               }
           }
        }
   }

}//end item

