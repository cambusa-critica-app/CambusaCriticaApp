import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
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

    MouseArea{
        anchors.fill: parent
        onClicked:
        {
            calendar_inizio.visible = false
            calendar_fine.visible = false
        }
    }

    Column
    {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    anchors.verticalCenterOffset: -mainWindow.height*0.05
    width: mainWindow.width*0.7
    spacing: 20

    Text {  text: "Giorno d'inizio: "   }
    Row{
           width: parent.width
           spacing: 10
           ComboBox{
                 id: combo_giorno_in
                 width: parent.width/4
                 model: ["1", "2", "3","4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15",
                         "16", "17", "18","19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
                 Settings { property alias value_giorno_inizio: combo_giorno_in.currentIndex  }
                 onCurrentIndexChanged:          n_days.update()

            }
            ComboBox{
                 id: combo_mese_in
                 width: parent.width/2
                 model: ["Gennaio", "Febbraio", "Marzo","Aprile", "Maggio", "Giugno",
                         "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"]
                 Settings { property alias value_mese_inizio: combo_mese_in.currentIndex  }
                 onCurrentIndexChanged:          n_days.update()
            }

            Image{
                source: "../images/calendar_icon.png"
                height: parent.height
                fillMode: Image.PreserveAspectFit
                //asynchronous: true
                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        calendar_inizio.visible = true
                        //load_cal.sourceComponent = comp_cal_in
                    }
                }
            }
    }

    Text { text: "Giorno di fine: "   }
    Row{
             width: parent.width
             spacing: 10
             ComboBox{
                 id: combo_giorno_fin
                 width: parent.width/4

                 model: ["1", "2", "3","4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15",
                         "16", "17", "18","19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
                 Settings { property alias value_giorno_fine: combo_giorno_fin.currentIndex  }
                 onCurrentIndexChanged:          n_days.update()
             }

             ComboBox{
                 id: combo_mese_fin
                 width: parent.width/2
                 model: ["Gennaio", "Febbraio", "Marzo","Aprile", "Maggio", "Giugno",
                         "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"]
                 Settings { property alias value_mese_fine: combo_mese_fin.currentIndex  }
                 onCurrentIndexChanged: n_days.update()
             }

             Image{
                source: "../images/calendar_icon.png"
                height: parent.height
                fillMode: Image.PreserveAspectFit
                //asynchronous: true
                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        calendar_fine.visible = true
                        //load_cal.sourceComponent = comp_cal_fin
                    }
                }
            }
    }

    Text
    {
        visible: false
        id: n_days
        text: ""
        function update ()
        {
            text = CalcMenu.getNDAYS(combo_giorno_in.currentIndex,
                                     combo_giorno_fin.currentIndex,
                                     combo_mese_in.currentIndex,
                                     combo_mese_fin.currentIndex);

            if (CalcMenu.getNDAYS(combo_giorno_in.currentIndex,
                                            combo_giorno_fin.currentIndex,
                                            combo_mese_in.currentIndex,
                                            combo_mese_fin.currentIndex) < 15 &&
               CalcMenu.getNDAYS(combo_giorno_in.currentIndex,
                                 combo_giorno_fin.currentIndex,
                                 combo_mese_in.currentIndex,
                                 combo_mese_fin.currentIndex) > 0 )
            {
                id_text_days.color = "black";
                id_text_days.text = text;
                id_avanti_button.visible = true;
            }
            else
            {
                id_text_days.color = "red";
                id_text_days.text = "Campo troppo lungo! \n(controllare date)";
                id_avanti_button.visible = false;
            }
        }
   }
   Text{
       text: " "
   }
   Text{
     anchors.horizontalCenter: parent.horizontalCenter
     text: "Giorni"
     font.pointSize: 14
   }

   Text{
      id: id_text_days
      anchors.horizontalCenter: parent.horizontalCenter
      font.pointSize: 24
      text: "-"
      color: "black"
      Settings
      {
          property alias value_giorni: id_text_days.text
          property alias value_color: id_text_days.color
      }
   }
}// end column

/*
    Loader
    {
        width: parent.width*0.9
        height: parent.height*0.7
        anchors.centerIn: parent
        id: load_cal
        //asynchronous: true
    }*/

/*
    Component{
        id: comp_cal_in
*/
        Calendar{
            id: calendar_inizio
            width: parent.width*0.9
            height: parent.height*0.7
            anchors.centerIn: parent
            //minimumDate  : new Date()
            visibleMonth : new Date().getMonth()
            visible: false
            onClicked:
            {
                combo_giorno_in.currentIndex =  selectedDate.getDate()-1
                combo_mese_in.currentIndex   =  selectedDate.getMonth()
                visible = false
                //load_cal.sourceComponent = undefined
                n_days.update()
            }
        }
    //}

    //Component{
      //  id: comp_cal_fin

        Calendar{
            //Component.onCompleted: console.log("calendario fine completed")
            id: calendar_fine
            anchors.centerIn: parent
            width: parent.width*0.9
            height: parent.height*0.7
            //minimumDate  : new Date()
            minimumDate  : calendar_inizio.selectedDate
            visibleMonth : calendar_inizio.selectedDate.getMonth()
            visible: false
            onClicked:
            {
                combo_giorno_fin.currentIndex =  selectedDate.getDate()-1
                combo_mese_fin.currentIndex   =  selectedDate.getMonth()
                visible = false
                //load_cal.sourceComponent = undefined
                n_days.update()
            }
        }
   // }



    Rectangle {
       id: id_avanti_button
       width: parent.width
       height: mainWindow.height*0.065
       visible: false
       color: top_bar.color
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.bottom
       anchors.verticalCenterOffset: -height/2

       Text {
           id: testo_bottom
           color: "#ffffff"
           anchors.fill: parent
           text: "Avanti"
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
            //   stackView.clear();
            //   stackView.push({item:rect_home_buttons, immediate: true})
            //   stackView.push({item:Qt.resolvedUrl("crea_branca.qml"), immediate: true})
            //   stackView.push({item:Qt.resolvedUrl("crea_numeri.qml"), immediate:true})
            //   stackView.push({item:Qt.resolvedUrl("crea_giorni.qml"), immediate:true})
               //stackView.push(Qt.resolvedUrl("dettagli.qml"));
               stackView.push(Qt.resolvedUrl("crea_struttura.qml"));
           }
       }
    }
} //end item date


