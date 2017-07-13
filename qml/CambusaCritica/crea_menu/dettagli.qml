import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import "../functions/CalcList.js" as CalcList
import ".."


//*********************************************************//
//rectangle dettagli

Item{
id: rect_dettagli

//visible: (stackView.currentItem === rect_dettagli) ? true : false

    Component.onCompleted: console.log("Created dettagli menù...")

    Column
    {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -mainWindow.height*0.05
        width: mainWindow.width*0.8
        spacing: 10

        Text { text: "Tipo di Attività?"}
        ComboBox{
            id: combo_tipo
            width: parent.width
            model: (CalcMenu.getBranca()=== "rs") ? ["Sedentaria", "Campo scout", "Route (di cammino)"] : ["Sedentaria", "Campo scout"]
            currentIndex: 1
            Settings { property alias value_activity: combo_tipo.currentIndex  }
            Component.onCompleted:
            {
                console.log("branca = " + CalcMenu.getBranca())
                CalcMenu.setActivity(combo_tipo.currentIndex);
            }
            onActivated:
            {
                 console.log ("setting activity")
                 CalcMenu.setActivity(index)
                 console.log ("new activity = " + CalcMenu.getActivity())
            }
    }

    Text { text: "Hai forno ed elettricità? " }// + combo_ele.currentIndex}
    ComboBox{
            id: combo_ele
            width: parent.width
            model: ["Sì", "No"]
            currentIndex: 1
            Settings { property alias value_ele: combo_ele.currentIndex  }
            Component.onCompleted: CalcMenu.setEle(combo_ele.currentIndex)
            onActivated:
            {
                console.log ("setting ele index")
                CalcMenu.setEle(index)
                CalcList.setVetos();
                console.log ("new ele index = " + CalcMenu.getEle())
            }
    }

    Text { text: "Vuoi frutta e verdura di stagione? "}
    ComboBox{
           id: combo_fresco
           width: parent.width
           //height: mainWindow.height/20
           model: ["Sì", "No"]
           currentIndex: 0
           Settings { property alias value_fresco: combo_fresco.currentIndex  }
           Component.onCompleted:  CalcMenu.setFresco(combo_fresco.currentIndex)
           onActivated:
           {
                console.log ("setting fresco")
                CalcMenu.setFresco(index)
                CalcList.setVetos();
                console.log ("new fresco = " + CalcMenu.getFresco())
           }
    }


    Text { text: "Pane integrale una volta al giorno? "}
    ComboBox{
             id: combo_pane
             width: parent.width
             model: ["Sì", "No"]
             currentIndex: 0
             Settings { property alias value_fresco: combo_pane.currentIndex  }
             Component.onCompleted:  CalcMenu.setPane(combo_pane.currentIndex)
             onActivated:
             {
                  console.log ("setting pane integrale")
                  CalcMenu.setPane(index)
                  //CalcList.setVetos();
                  console.log ("new pane = " + CalcMenu.getPane())
             }
         }

    /*
        Text { text: "Vuoi la merenda? "}
        ComboBox{
            id: combo_merenda
            width: parent.width
           //height: mainWindow.height/20
            model: ["Sì", "No"]
            currentIndex: 1
            Settings { property alias value_merenda: combo_merenda.currentIndex  }
            Component.onCompleted:  CalcMenu.setVoglioMerenda(combo_merenda.currentIndex)
            onActivated:
            {
                  //console.log ("setting voglio merenda")
                  CalcMenu.setVoglioMerenda(index)
                  CalcList.setVetos();
                  //console.log ("new voglio merenda = " + CalcMenu.getVoglioMerenda())
            }
        }*/
    }//end column

    Rectangle {
          width: parent.width
          height: mainWindow.height*0.065
          color: top_bar.color
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.bottom
          anchors.verticalCenterOffset: -height/2

          Text
          {
             color: "#ffffff"
             anchors.fill: parent
             text: qsTr("Calcola Nuovo Menù")
             horizontalAlignment: Text.AlignHCenter
             verticalAlignment: Text.AlignVCenter
          }
          MouseArea
          {
               anchors.fill: parent
               onPressed:
               {
                   rect_waiting.visible = true;
                   loading_image.visible = true;
                   parent.color = "#c4c238"
               }

               onReleased:
               {
                    CalcList.setVetos();
                    CalcList.setRestrictedListINDEX();
                    CalcList.calcFullMenu();

                    for (var i = 0; i< 5; i++)
                    {
                         if(CalcList.evaluateFullMenu()<90)
                         {
                             console.log("WARNING: menù with low score...")
                             CalcList.calcFullMenu();
                         }
                         else break;
                    }
                    CalcMenu.setCurrentMenuName("[nuovo menù]");
                    CalcMenu.setNewList(true);
                    CalcMenu.setSavingStatus(false);
                    stackView.clear();
                    stackView.push({item:rect_home_buttons, immediate: true})
                    stackView.push({item:Qt.resolvedUrl("../mymenu.qml"), immediate: true})
                    //stackView.push(Qt.resolvedUrl("../mymenu.qml"));
               }
         }
    }

    Rectangle{
        id: rect_waiting
        color: "#cdd5ca"
        anchors.fill: parent
        opacity: 0.5
        visible: false

        Image
        {
            id: loading_image
            visible: false
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width/7
            fillMode: Image.PreserveAspectFit
            opacity: 1
            source: "../images/clessidra.png"
            asynchronous: true
        }
    }
}// end item dettagli
