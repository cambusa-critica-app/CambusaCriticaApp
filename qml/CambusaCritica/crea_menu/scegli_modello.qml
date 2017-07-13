import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import ".."
import "../models"

//*********************************************************//
// per chi cucino? - branca

Item{
  id: rect_perchi



  Component.onCompleted:
  {
      crea_button_text.opacity = 1
      menu_button_text.opacity = 0.5;
      importa_button_text.opacity = 0.5;
      home_button_text.opacity = 0.5;
      top_underline.x =  mainWindow.width/4;
      console.log("Created lista modelli")
  }


  Column
  {
      anchors.fill: parent
      id: column_modelli
      spacing: 0      


      //HEADER tabella con modelli, branca, numero giorni per CC
      Rectangle
      {
          id: header_rect
          anchors.horizontalCenter: parent.horizontalCenter
          width: mainWindow.width
          height: mainWindow.height/8
          border.color: "#4c6f3a"
          border.width: 2
          color: "#d3ecc2"      // green as crea menù

          Text
          {
              color: "#4c6f3a"  //standard
              font.bold: true;
              width: parent.width-mainWindow.width/7
              anchors.centerIn: parent
              anchors.verticalCenter: parent.verticalCenter
              wrapMode: Text.Wrap;
              text: "Modelli Cambusa Critica"
          }
          Text
          {
              wrapMode: Text.Wrap;
              color: "#4c6f3a"  //standard
              //font.bold: true;
              width: mainWindow.width*0.1
              anchors.left: parent.left; anchors.leftMargin: mainWindow.width/1.5;
              anchors.verticalCenter: parent.verticalCenter
              text: "gg"
          }
          Text
          {
              wrapMode: Text.Wrap;
              color: "#4c6f3a"  //standard
              //font.bold: true;
              width: mainWindow.width*0.15
              anchors.left: parent.left; anchors.leftMargin: mainWindow.width/1.2;
              anchors.verticalCenter: parent.verticalCenter
              text: "branca"
          }
      }


      //tabella con modelli, branca, numero giorni
      ScrollView{
          //anchors.top: header_rect.bottom
          verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
          horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
          width: parent.width
          height: mainWindow.height -top_bar.height - header_rect.height

      Column
      {
        spacing: 0


      Repeater
      {
          id: rep_recipes
          model: menuCC.count

          Rectangle
          {
              width: mainWindow.width
              height: mainWindow.height/12
              color: mainWindow.color
              border.color: "black"
              border.width: 1


              Text
              {
                  wrapMode: Text.Wrap;
                  width: parent.width/2
                  anchors.left: parent.left; anchors.leftMargin: mainWindow.width/16;
                  anchors.verticalCenter: parent.verticalCenter
                  text: menuCC.get(index).nome
              }

              Text
              {
                  wrapMode: Text.Wrap;
                  width: parent.width/10
                  anchors.left: parent.left; anchors.leftMargin: mainWindow.width/1.5;
                  anchors.verticalCenter: parent.verticalCenter
                  text: menuCC.get(index).durata
              }
              Text
              {

                  wrapMode: Text.Wrap;
                  width: parent.width/10
                  anchors.left: parent.left; anchors.leftMargin: mainWindow.width/1.2;
                  anchors.verticalCenter: parent.verticalCenter
                  text: menuCC.get(index).branca
              }
              //Text{id:modello_id;}


              MouseArea
              {
                  anchors.fill: parent
                  onPressed:
                  {
                      parent.color = "#d9eaee"
                      //bottom_text.text = "in elaborazione..."
                  }

                  onReleased:
                  {
                      modello_sel.text = index
                      //CalcMenu.setModelloType("cambusa");
                      stackView.push(Qt.resolvedUrl("mm_captions.qml"))
                      parent.color = mainWindow.color
                      //bottom_text.text = ""
                  }
              }
          }//end of rectangle for recipe
        }//end of repeater
      }//end of column
    }//end of scrollview
  }//end of column
}//end item perchi


