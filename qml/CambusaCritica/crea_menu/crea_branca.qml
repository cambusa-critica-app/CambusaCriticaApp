import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import ".."

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
      console.log("Created per chi cucino...")
  }

     Image{
        id: id_image_branca
        source: "../images/cerchio_giallo.png"
        fillMode: Image.PreserveAspectFit
        width: mainWindow.width/3.2
        x: id_lc.x +grid_column.x
        y: id_lc.y +grid_column.y+grid.y
        asynchronous: true
     }

  Column{
     id: grid_column
     spacing: 20
     anchors.centerIn: parent
     anchors.verticalCenterOffset: -mainWindow.height*0.05
     width: mainWindow.width*0.7

     Text{
         text: " "
     }

     Grid
     {
      id: grid
      columns: 2
      rows: 2
      spacing: 20

      Image{
          id: id_lc
          source: "../images/lupetti.png"
          fillMode: Image.PreserveAspectFit
          width: mainWindow.width/3.2
          //asynchronous: true

          MouseArea {
              anchors.fill: parent
              onClicked: {
                  CalcMenu.setBranca("lc");
                  text_branca.text = "lc";
                  eta_branca.text = " 8 - 11 anni"
                  id_image_branca.source = "../images/cerchio_giallo.png"
                  id_image_branca.x = x + grid_column.x
                  id_image_branca.y = y + grid_column.y+grid.y
              }
          }
      }

      Image{
          id: id_eg
          source: "../images/reparto.png"
          fillMode: Image.PreserveAspectFit
          width: mainWindow.width/3.2
          //asynchronous: true
          MouseArea {
              anchors.fill: parent
              onClicked: {
                  CalcMenu.setBranca("eg");
                  text_branca.text = "eg"
                  eta_branca.text = " 12 - 15 anni"
                  id_image_branca.source = "../images/cerchio_verde.png"
                  id_image_branca.x = id_eg.x + grid_column.x
                  id_image_branca.y = id_eg.y + grid_column.y+grid.y
              }
          }

      }

      Image{
          id: id_rs
          source: "../images/clan.png"
          fillMode: Image.PreserveAspectFit
          width: mainWindow.width/3.2
          //asynchronous: true

          MouseArea {
              anchors.fill: parent
              onClicked: {
                  CalcMenu.setBranca("rs");
                  text_branca.text = "rs"
                  eta_branca.text = " 15 - 19 anni"
                  id_image_branca.source = "../images/cerchio_rosso.png"
                  id_image_branca.x = id_rs.x + grid_column.x
                  id_image_branca.y = id_rs.y + grid_column.y+grid.y
              }
          }
      }

      Image{
          id: id_coca
          source: "../images/giwell_2.png"
          fillMode: Image.PreserveAspectFit
          width: mainWindow.width/3.2
          //asynchronous: true

          MouseArea {
              anchors.fill: parent
              onClicked: {
                  CalcMenu.setBranca("coca");
                  text_branca.text = "coca"
                  eta_branca.text = " 20+ anni"
                  id_image_branca.source = "../images/cerchio_viola.png"
                  id_image_branca.x = id_coca.x + grid_column.x
                  id_image_branca.y = id_coca.y + grid_column.y+grid.y
              }
          }
      }
    }//end grid

    Text{
      anchors.horizontalCenter: parent.horizontalCenter
      text: " " + text_branca.text.toUpperCase() + " "
      font.pointSize: 24
    }
    Text{
      anchors.horizontalCenter: parent.horizontalCenter
      text: "Età: " + eta_branca.text
    }
    Text{
      id: text_branca
      visible: false
      Settings { property alias value_branca: text_branca.text }
      Component.onCompleted: CalcMenu.setBranca(text_branca.text)
    }
    Text{
      id: eta_branca
      visible: false
      Settings { property alias eta_branca: eta_branca.text }
    }
 }//end column

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
                   parent.color =  "#c4c238"
                   testo_bottom.text = "in elaborazione..."
               }

               onReleased:
               {
                 //  stackView.clear();
                 //  stackView.push({item:rect_home_buttons, immediate: true})
                 //  stackView.push({item:Qt.resolvedUrl("crea_branca.qml"), immediate: true})
                   stackView.push(Qt.resolvedUrl("crea_numeri.qml"))
                   testo_bottom.text = "Avanti"
                   parent.color = top_bar.color
               }
           }
       }
}//end item perchi

