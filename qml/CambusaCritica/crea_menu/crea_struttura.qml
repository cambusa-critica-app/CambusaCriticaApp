import QtQuick 2.4
//import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Controls 1.4
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import ".."

//*********************************************************//
// rectangle date

Item{
    id: rect_date
    Component.onCompleted:
    {
        console.log("Created date campo...")
    }

    Column
    {
        //anchors.fill: parent
        anchors.centerIn: parent

    ScrollView{
        anchors.horizontalCenter: parent.horizontalCenter
        width: mainWindow.width*0.9
        height: mainWindow.height - id_avanti_button.height - top_bar.height
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff

    Column{
        spacing: 4

        Text{text: "Scegli come strutturare il tuo menù\nselezionando i pasti che vuoi avere.\n(potrai comunque modificarlo in seguito)" ;font.italic: true}

        Repeater
        {
          id: repeater_id
          model: 14
          Rectangle
          {
             width: mainWindow.width*0.9
             height: mainWindow.height/15
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
             opacity: (switches.checked === true) ? 1 : 0.5
             radius: 5
             border.color: "black"
             border.width: 2

             Image{
                 anchors.verticalCenter: parent.verticalCenter
                 id: col_icon
                 anchors.left: parent.left
                 anchors.leftMargin : 5
                 source:
                 {
                     if         (index === 0)  source = "../images/colazione_icon.png"
                     else if    (index === 1)  source = "../images/pranzo_1_icon.png"
                     else if    (index === 2)  source = "../images/pranzo_2_icon.png"
                     else if    (index === 3)  source = "../images/pranzo_c_icon.png"
                     else if    (index === 4)  source = "../images/pranzo_3_icon.png"
                     else if    (index === 5)  source = "../images/frutta_icon.png"
                     else if    (index === 6)  source = "../images/pane_icon.png"
                     else if    (index === 7)  source = "../images/merenda_icon.png"
                     else if    (index === 8)  source = "../images/cena_primo_icon.png"
                     else if    (index === 9)  source = "../images/cena_secondo_icon.png"
                     else if    (index === 10)  source = "../images/cena_1_icon.png"
                     else if    (index === 11) source = "../images/cena_2_icon.png"
                     else if    (index === 12) source = "../images/frutta_icon.png"
                     else if    (index === 13) source = "../images/pane_icon.png"
                 }
                 height: parent.height*0.8
                 fillMode: Image.PreserveAspectFit
                 asynchronous: true
                // opacity: (switches.checked === true) ? 1 : 0.3
             }


             Text{
                    anchors.left: col_icon.right
                    anchors.leftMargin : 25
                    anchors.verticalCenter: parent.verticalCenter
                    wrapMode: Text.Wrap;
                    verticalAlignment: Text.AlignVCenter
                    text:
                    {
                        if      (index === 0)  text = "Colazione"
                        else if (index === 1)  text = "Primo (pranzo)"
                        else if (index === 2)  text = "Secondo (pranzo)"
                        else if (index === 3)  text = "Primo completo"
                        else if (index === 4)  text = "Contorno (pranzo)"
                        else if (index === 5)  text = "Frutta a pranzo"
                        else if (index === 6)  text = "Pane a pranzo"
                        else if (index === 7)  text = "Merenda"
                        else if (index === 8)  text = "Primo (cena)"
                        else if (index === 9)  text = "Secondo (cena)"
                        else if (index === 10)  text = "Primo completo"
                        else if (index === 11) text = "Contorno (cena)"
                        else if (index === 12) text = "Frutta a cena"
                        else if (index === 13) text = "Pane a cena"
                    }
                    //opacity: (switches.checked === true) ? 1 : 0.3
             }

             Switch
             {
                 id: switches
                 width: parent.width/3
                 checked:
                 {
                     //disattiva primo completo pranzo, merenda e primo+secondo cena
                     if (index === 3 || index === 7 || index === 8 || index === 9)  checked = false
                     else checked = true
                 }
                 anchors.verticalCenter: parent.verticalCenter
                 anchors.right: parent.right
                 anchors.rightMargin : 10

                 onCheckedChanged:
                 {
                    avanti_text.text = "Avanti"
                 }

             }

         }

       }//end of repeater

        Text{text: " "}
        Text{text: " "}
     }//column

    }//scrollview
  }//column

    Rectangle {
        color: "#cf5d5d"

    }

    Rectangle {
       id: id_avanti_button
       width: parent.width
       height: mainWindow.height*0.065
       color: (avanti_text.text === "Avanti") ? top_bar.color : "#cf5d5d"
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.bottom
       anchors.verticalCenterOffset: -height/2

       Text {
           id: avanti_text
           color: "#ffffff"
           anchors.fill: parent
//           text: "Avanti"

           horizontalAlignment: Text.AlignHCenter
           verticalAlignment: Text.AlignVCenter
       }
       MouseArea {
           anchors.fill: parent
           onPressed:
           {
            // avanti_text.text = "in elaborazione..."
             parent.color =  "#c4c238"
           }
           onReleased:
           {

               if  (  (repeater_id.itemAt(9).opacity === 1 && repeater_id.itemAt(7).opacity === 1)
                   || (repeater_id.itemAt(9).opacity === 1 && repeater_id.itemAt(8).opacity === 1))

                    avanti_text.text = "Scegli tra primo/secondo o piatto completo"
               else
                    avanti_text.text = "Avanti"

               for (var i = 0; i< 14; i++)
               {

                   if (repeater_id.itemAt(i).opacity === 1) CalcMenu.setStruttura(i, true);
                   else                                     CalcMenu.setStruttura(i, false);
               }

               if (id_avanti_button.color !== "#cf5d5d") stackView.push(Qt.resolvedUrl("dettagli.qml"));
               avanti_text.text = "Avanti"
           }
       }
    }

} //end item date


