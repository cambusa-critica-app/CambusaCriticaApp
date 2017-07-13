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



//*********************************************************//
//rectangle dettagli

   Item{
    id: rect_personalizza

    ListModel {        id: listaColazioni   }
    ListModel {        id: listaPrimi       }
    ListModel {        id: listaSecondi     }
    ListModel {        id: listaContorni    }
    ListModel {        id: listaSnacks      }
    ListModel {        id: listaFullMeal    }
    ListModel {        id: listaFrutta      }
    ListModel {        id: listaPane        }

    Component.onCompleted:
    {
        CalcList.setRestrictedListINDEX();
        CalcList.clearCustomLists();
        CalcList.fillCustomLists();
    }

    Column
    {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 0

        //*************************************************//
        //                  combo boxes!!
        //*************************************************//

        Item{
            id: top_buttons_pers
            width: parent.width*0.7
            height: mainWindow.height*0.07
            anchors.horizontalCenter: parent.horizontalCenter

            Image{
                id: id_back_b
                source: "images/back_button.png"
                height: parent.height
                fillMode: Image.PreserveAspectFit
                visible: (CalcMenu.getDayClicked()===0) ? false : true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.leftMargin
                //anchors.horizontalCenterOffset: -width/2

                MouseArea{
                    anchors.fill: parent
                    onPressed:
                    {
                        id_back_b.source = "images/clessidra.png"
                    }

                    onReleased:
                    {
                        salva_modifiche.update()
                        stackView.pop()
                        stackView.pop()
                        CalcMenu.setDayClicked(CalcMenu.getDayClicked()-1)
                        stackView.push({item:Qt.resolvedUrl("daysel.qml"), immediate: true})
                        stackView.push({item:Qt.resolvedUrl("personalizza.qml"), immediate: true})
                        id_back_b.source = "images/back_button.png"
                    }
                }
            }

            Text{id: day_text; font.bold: true;
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text : CalcMenu.getGiornoEsatto(CalcMenu.getDayClicked()+1);//"Giorno " + (CalcMenu.getDayClicked()+1)
            }

            Image{
                id: id_next_b
                source: "images/next_button.png"
                height: parent.height
                fillMode: Image.PreserveAspectFit

                visible: (CalcMenu.getDayClicked()>=CalcMenu.getTotDays()-1) ? false : true
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.right
                anchors.horizontalCenterOffset: -width/2

                MouseArea{
                    anchors.fill: parent
                    onPressed:
                    {
                        id_next_b.source = "images/clessidra.png"
                    }
                    onReleased:
                    {
                        salva_modifiche.update()
                        stackView.pop()
                        stackView.pop()
                        CalcMenu.setDayClicked(CalcMenu.getDayClicked()+1)
                        stackView.push({item: Qt.resolvedUrl("daysel.qml"), immediate:true})
                        stackView.push({item: Qt.resolvedUrl("personalizza.qml"), immediate:true})
                        id_next_b.source = "images/next_button.png"
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
                        salva_modifiche.update()
                        CalcMenu.setSalvaImporta("salva");
                        //stackView.clear();
                        stackView.push({item: Qt.resolvedUrl("salvataggio.qml"), immediate:true})
                    }
                }
            }

          }
          ScrollView{
              anchors.horizontalCenter: parent.horizontalCenter
              width: mainWindow.width*0.9
              height: mainWindow.height - top_buttons_pers.height - bot_buttons_pers.height - top_bar.height
              verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff


            Column{
                spacing: 4

        Text {text: "Colazione:" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}


        ComboBox{
            id: combo_br
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaColazioni
            Component.onCompleted: currentIndex= CalcMenu.returnRestrBreakfast(CalcMenu.returnBreakfast(CalcMenu.getDayClicked()));

            onActivated: {
                currentIndex = index;
            }
        }

        Row{
            spacing: 2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.9
            Text{text: "Applica: "}
            CheckBox{
                id: check_br_tutti
                width: mainWindow.width*0.35
                text: qsTr("Sempre")
                checked: false
                onClicked: check_br_alt.checked = false
            }
            CheckBox{
                id: check_br_alt
                width: mainWindow.width*0.35
                text: qsTr("Alterni")
                checked: false
                onClicked: check_br_tutti.checked = false
            }
        }

        /*Image{source: "images/linea_sottile.png"; anchors.horizontalCenter: parent.horizontalCenter;
            width: parent.width;     fillMode: Image.PreserveAspectFit
            asynchronous: true
        }*/

        Text {text: "Pranzo (primo):" ; font.underline: true; anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_pr1
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaPrimi
            Component.onCompleted:
            {
                currentIndex= CalcMenu.returnRestrPrimo(CalcMenu.returnPranzoPrimo(CalcMenu.getDayClicked()));
                console.log("pranzo primo [" + CalcMenu.getDayClicked() + "] = " + CalcMenu.returnPranzoPrimo(CalcMenu.getDayClicked())
                            + " :: " + CalcMenu.returnRestrPrimo(CalcMenu.returnPranzoPrimo(CalcMenu.getDayClicked())))
            }
            onActivated:  {
                currentIndex = index;

            }

         }

        Text {text: "Pranzo (secondo):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_pr2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaSecondi
            Component.onCompleted: currentIndex= CalcMenu.returnRestrSecondo(CalcMenu.returnPranzoSecondo(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }

        Text {text: "Pranzo (completo):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_prc
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaFullMeal
            Component.onCompleted: currentIndex= CalcMenu.returnRestrCompleto(CalcMenu.returnPranzoCompleto(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }

        Text {text: "Pranzo (contorno):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_pr3
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaContorni
            Component.onCompleted:
            {
                console.log("pranzo contorno [" + CalcMenu.getDayClicked() + "] = " + CalcMenu.returnPranzoContorno(CalcMenu.getDayClicked())
                            + " :: " + CalcMenu.returnRestrContorno(CalcMenu.returnPranzoContorno(CalcMenu.getDayClicked())))
                currentIndex= CalcMenu.returnRestrContorno(CalcMenu.returnPranzoContorno(CalcMenu.getDayClicked()));
            }
            onActivated: {
                currentIndex = index;
            }
         }
        Text {text: "Pranzo (frutta):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_fr1
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaFrutta
            Component.onCompleted: currentIndex= CalcMenu.returnRestrFrutta(CalcMenu.returnPranzoFrutta(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }
        Row{
            spacing: 2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.9
            Text{text: "Applica: "}
            CheckBox{
                id: check_fr1_tutti
                width: mainWindow.width*0.35
                text: qsTr("Sempre")
                checked: false
                onClicked: check_fr1_alt.checked = false
            }
            CheckBox{
                id: check_fr1_alt
                width: mainWindow.width*0.35
                text: qsTr("Alterni")
                checked: false
                onClicked: check_fr1_tutti.checked = false
            }
        }

        Text {text: "Pranzo (pane):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_pn1
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaPane
            Component.onCompleted: currentIndex= CalcMenu.returnRestrPane(CalcMenu.returnPranzoPane(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }
        Row{
            spacing: 2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.9
            Text{text: "Applica: "}
            CheckBox{
                id: check_pn1_tutti
                width: mainWindow.width*0.35
                text: qsTr("Sempre")
                checked: false
                onClicked: check_pn1_alt.checked = false
            }
            CheckBox{
                id: check_pn1_alt
                width: mainWindow.width*0.35
                text: qsTr("Alterni")
                checked: false
                onClicked: check_pn1_tutti.checked = false
            }
        }

        Text {text: "Merenda:" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_mer
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaSnacks
            Component.onCompleted: currentIndex= CalcMenu.returnRestrMerenda(CalcMenu.returnMerenda(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }
        Row{
            spacing: 2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.9
            Text{text: "Applica: "}
            CheckBox{
                id: check_mer_tutti
                width: mainWindow.width*0.35
                text: qsTr("Sempre")
                checked: false
                onClicked: check_mer_alt.checked = false
            }
            CheckBox{
                id: check_mer_alt
                width: mainWindow.width*0.35
                text: qsTr("Alterni")
                checked: false
                onClicked: check_mer_tutti.checked = false
            }
        }

        Text {text: "Cena (primo):"; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter }
        ComboBox{
            id: combo_ce_p
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaPrimi
            Component.onCompleted: currentIndex=  CalcMenu.returnRestrPrimo(CalcMenu.returnCenaPrimo(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }

        Text {text: "Cena (secondo):"; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter }
        ComboBox{
            id: combo_ce_s
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaSecondi
            Component.onCompleted: currentIndex=  CalcMenu.returnRestrSecondo(CalcMenu.returnCenaSecondo(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }

        Text {text: "Cena (completo):"; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter }
        ComboBox{
            id: combo_ce1
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaFullMeal
            Component.onCompleted: currentIndex=  CalcMenu.returnRestrCompleto(CalcMenu.returnCenaCompleto(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;                
            }
         }

        Text {text: "Cena (contorno):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_ce2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaContorni
            Component.onCompleted:
            {
                console.log(CalcMenu.returnRestrContorno(CalcMenu.returnCenaContorno(CalcMenu.getDayClicked())));
                currentIndex= CalcMenu.returnRestrContorno(CalcMenu.returnCenaContorno(CalcMenu.getDayClicked()));
            }
            onActivated: {
                currentIndex = index;                
            }
         }
        Text {text: "Cena (frutta):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_fr2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaFrutta
            Component.onCompleted: currentIndex= CalcMenu.returnRestrFrutta(CalcMenu.returnCenaFrutta(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;                
            }
         }
        Row{
            spacing: 2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.9
            Text{text: "Applica: "}
            CheckBox{
                id: check_fr2_tutti
                width: mainWindow.width*0.35
                text: qsTr("Sempre")
                checked: false
                onClicked: check_fr2_alt.checked = false
            }
            CheckBox{
                id: check_fr2_alt
                width: mainWindow.width*0.35
                text: qsTr("Alterni")
                checked: false
                onClicked: check_fr2_tutti.checked = false
            }
        }

        Text {text: "Cena (pane):" ; font.underline: true;anchors.horizontalCenter: parent.horizontalCenter}
        ComboBox{
            id: combo_pn2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.8
            model: listaPane
            Component.onCompleted: currentIndex= CalcMenu.returnRestrPane(CalcMenu.returnCenaPane(CalcMenu.getDayClicked()));
            onActivated: {
                currentIndex = index;
            }
         }
        Row{
            spacing: 2
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainWindow.width*0.9
            Text{text: "Applica: "}
            CheckBox{
                id: check_pn2_tutti
                width: mainWindow.width*0.35
                text: qsTr("Sempre")
                checked: false
                onClicked: check_pn2_alt.checked = false
            }
            CheckBox{
                id: check_pn2_alt
                width: mainWindow.width*0.35
                text: qsTr("Alterni")
                checked: false
                onClicked: check_pn2_tutti.checked = false
            }
        }

        Text{text: " "}

        }//end column
      }//end scrollview


      Row{
          id: bot_buttons_pers
          anchors.horizontalCenter: parent.horizontalCenter
          spacing: 1
          Rectangle {
                color: top_bar.color
                width: mainWindow.width/2
                height: mainWindow.height*0.065

                Text {
                    color: mainWindow.color
                    anchors.fill: parent
                    text: qsTr("Annulla")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                MouseArea{
                    anchors.fill: parent
                    onPressed:
                    {
                      parent.color =  "#c4c238"
                    }
                    onReleased:
                    {
                        stackView.pop();
                    }
                }//end mouse area
            }//end button

      Rectangle {
            id: salva_modifiche
            color: top_bar.color
            //color: "#c4c238"
            width: mainWindow.width/2
            height: mainWindow.height*0.065

            Text {
                //color: mainWindow.color
                id: bottom_text
                color: "#ffffff"
                anchors.fill: parent
                text: qsTr("Salva Modifiche")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            function update ()
            {
                // applica tutte le modifiche
                CalcMenu.setBreakfast(CalcMenu.getDayClicked(),      listaColazioni.get(combo_br.currentIndex).id)
                CalcMenu.setPranzoPrimo(CalcMenu.getDayClicked(),    listaPrimi.get(combo_pr1.currentIndex).id);
                CalcMenu.setPranzoSecondo(CalcMenu.getDayClicked(),  listaSecondi.get(combo_pr2.currentIndex).id);
                CalcMenu.setPranzoCompleto(CalcMenu.getDayClicked(),  listaFullMeal.get(combo_prc.currentIndex).id);
                CalcMenu.setPranzoContorno(CalcMenu.getDayClicked(), listaContorni.get(combo_pr3.currentIndex).id);
                CalcMenu.setPranzoFrutta(CalcMenu.getDayClicked(),   listaFrutta.get(combo_fr1.currentIndex).id);
                CalcMenu.setPranzoPane(CalcMenu.getDayClicked(),     listaPane.get(combo_pn1.currentIndex).id);
                CalcMenu.setMerenda(CalcMenu.getDayClicked(),        listaSnacks.get(combo_mer.currentIndex).id);
                CalcMenu.setCenaPrimo(CalcMenu.getDayClicked(),      listaPrimi.get(combo_ce_p.currentIndex).id);
                CalcMenu.setCenaSecondo(CalcMenu.getDayClicked(),    listaSecondi.get(combo_ce_s.currentIndex).id);
                CalcMenu.setCenaCompleto(CalcMenu.getDayClicked(),   listaFullMeal.get(combo_ce1.currentIndex).id);
                CalcMenu.setCenaContorno(CalcMenu.getDayClicked(),   listaContorni.get(combo_ce2.currentIndex).id);
                CalcMenu.setCenaFrutta(CalcMenu.getDayClicked(),     listaFrutta.get(combo_fr2.currentIndex).id);
                CalcMenu.setCenaPane(CalcMenu.getDayClicked(),       listaPane.get(combo_pn2.currentIndex).id);

              //estendi la selezione del pasto in funzione delle check boxes
              // colazione
              if (check_br_tutti.checked) {
                  for (var i = 1; i<CalcMenu.getTotDays(); i++)
                  {
                      CalcMenu.setBreakfast(i, listaColazioni.get(combo_br.currentIndex).id);
                  }
              }
              else if (check_br_alt.checked) {
                  for (var j = 1; j<CalcMenu.getTotDays(); j++)
                  {
                      if ((j+CalcMenu.getDayClicked())%2 === 0) CalcMenu.setBreakfast(j, listaColazioni.get(combo_br.currentIndex).id);
                  }
              }
              //frutta pranzo
              if (check_fr1_tutti.checked) {
                  for (i = 1; i<CalcMenu.getTotDays(); i++)
                  {
                      CalcMenu.setPranzoFrutta(i, listaFrutta.get(combo_fr1.currentIndex).id);
                  }
              }
              else if (check_fr1_alt.checked) {
                  for (j = 1; j<CalcMenu.getTotDays(); j++)
                  {
                      if ((j+CalcMenu.getDayClicked())%2 === 0) CalcMenu.setPranzoFrutta(j, listaFrutta.get(combo_fr1.currentIndex).id);
                  }
              }
              //pane pranzo
              if (check_pn1_tutti.checked) {
                  for (i = 1; i<CalcMenu.getTotDays(); i++)
                  {
                      CalcMenu.setPranzoPane(i, listaPane.get(combo_pn1.currentIndex).id);
                  }
              }
              else if (check_pn1_alt.checked) {
                  for (j = 1; j<CalcMenu.getTotDays(); j++)
                  {
                      if ((j+CalcMenu.getDayClicked())%2 === 0) CalcMenu.setPranzoPane(j, listaPane.get(combo_pn1.currentIndex).id);
                  }
              }
              //merenda
              if (check_mer_tutti.checked) {
                  for (i = 1; i<CalcMenu.getTotDays(); i++)
                  {
                      CalcMenu.setMerenda(i, listaSnacks.get(combo_mer.currentIndex).id);
                  }
              }
              else if (check_mer_alt.checked) {
                  for (j = 1; j<CalcMenu.getTotDays(); j++)
                  {
                      if ((j+CalcMenu.getDayClicked())%2 === 0) CalcMenu.setMerenda(j, listaSnacks.get(combo_mer.currentIndex).id);
                  }
              }

              //frutta cena
              if (check_fr2_tutti.checked) {
                  for (i = 0; i<CalcMenu.getTotDays()-1; i++)
                  {
                      CalcMenu.setCenaFrutta(i, listaFrutta.get(combo_fr2.currentIndex).id);
                  }
              }
              else if (check_fr2_alt.checked) {
                  for (j = 0; j<CalcMenu.getTotDays()-1; j++)
                  {
                      if ((j+CalcMenu.getDayClicked())%2 === 0) CalcMenu.setCenaFrutta(j, listaFrutta.get(combo_fr2.currentIndex).id);
                  }
              }
              //pane cena
              if (check_pn2_tutti.checked) {
                  for (i = 1; i<CalcMenu.getTotDays(); i++)
                  {
                      CalcMenu.setCenaPane(i, listaPane.get(combo_pn2.currentIndex).id);
                  }
              }
              else if (check_pn1_alt.checked) {
                  for (j = 1; j<CalcMenu.getTotDays(); j++)
                  {
                      if ((j+CalcMenu.getDayClicked())%2 === 0) CalcMenu.setCenaPane(j, listaPane.get(combo_pn2.currentIndex).id);
                  }
              }

              current_menu.storeMenu();
              CalcMenu.setSavingStatus(false);    // changes not saved to the named menù
              CalcMenu.setNewList(true);          // ricrea la lista spesa

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

                    salva_modifiche.update();
                    stackView.pop();
                    stackView.pop();
                    stackView.push(Qt.resolvedUrl("daysel.qml"))
                    parent.color = top_bar.color
                    bottom_text.text = "Salva Modifiche"
            }
          }//end mouse area
        }//end button
       }//end row buttons

    }//end column

}

