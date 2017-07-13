import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import ".."


Item
{


    Rectangle
    {
        id: modello_header
        width: mainWindow.width
        height: mainWindow.height/10
        anchors.top: parent.top
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
                //text: CalcList.getRecipeName(sel_meal, my_id);
                text: menuCC.get(modello_sel.text).nome
            }
    }

    Column
    {

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: modello_header.bottom
        spacing: mainWindow.height / 30
        width: mainWindow.width*0.9
        Text{ text: " "}

        Text
        {
            width:parent.width*0.95
            wrapMode: Text.Wrap;
            anchors.left: parent.left; anchors.leftMargin: mainWindow.width*0.025;
            text: "Durata: " + menuCC.get(modello_sel.text).durata + " giorni"
        }
        Text
        {
            width:parent.width*0.95
            wrapMode: Text.Wrap;
            anchors.left: parent.left; anchors.leftMargin: mainWindow.width*0.025;
            text: "Branca: " + menuCC.get(modello_sel.text).branca
        }
        Text
        {
            width:parent.width*0.95
            wrapMode: Text.Wrap;
            anchors.left: parent.left; anchors.leftMargin: mainWindow.width*0.025;
            text: "Autore: " + menuCC.get(modello_sel.text).autore
        }
        Text
        {
            width:parent.width*0.95
            wrapMode: Text.Wrap;
            anchors.left: parent.left; anchors.leftMargin: mainWindow.width*0.025;
            text: "Stagionalità: " + menuCC.get(modello_sel.text).stagione
        }
        Text
        {
            width:parent.width*0.95
            wrapMode: Text.Wrap;
            anchors.left: parent.left; anchors.leftMargin: mainWindow.width*0.025;
            text: "Descrizione: \n" + menuCC.get(modello_sel.text).descrizione
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
              text: qsTr("Usa questo modello")
              horizontalAlignment: Text.AlignHCenter
              verticalAlignment: Text.AlignVCenter
          }
          MouseArea
          {
              anchors.fill: parent
              onPressed:
              {
                  testo_bottom.text = "in elaborazione..."
                  parent.color =  "#c4c238"
              }

              onReleased:
              {
                  stackView.push(Qt.resolvedUrl("imposta_modello.qml"))
                  testo_bottom.text = "Usa questo modello"
                  parent.color = top_bar.color
              }

          }
      }

}
