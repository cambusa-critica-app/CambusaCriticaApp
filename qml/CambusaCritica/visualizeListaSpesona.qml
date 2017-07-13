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

Item{
    id: rect_lista_spesona

    Component.onCompleted:
    {
        console.log("destroying lista spesona...");

    }


    Component {
            id: sectionHeading
            Rectangle {
                width: mainWindow.width
                height: childrenRect.height
                //width: listaSpesa.width
                //height: listaSpesa.height
                color: "lightsteelblue"

                Text {
                    text: section
                    font.bold: true
                    //font.pixelSize: 20
                }
            }
        }


    Column{
        spacing: 5
        anchors.horizontalCenter: rect_lista_spesona.horizontalCenter
        anchors.verticalCenter: rect_lista_spesona.verticalCenter
        height:parent.height


TableView {
    id: table_spesa_totale
    width: mainWindow.width//*0.95
    height: parent.height
    //backgroundVisible: false
    sortIndicatorVisible: true
    verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
    horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

    section.property: "sezione"
    section.criteria: ViewSection.FullString
    section.delegate: sectionHeading
/*
    itemDelegate: Item
    {
          clip: true
          Text
          {
              anchors.verticalCenter: parent.verticalCenter
              color: styleData.textColor

              Component.onCompleted:{
              if(listaSpesa.get(styleData.row).missing===0)             //problem
                  {
                       color="black"
                  }
                  else if (listaSpesa.get(styleData.row).missing===1)
                  {
                      color="green"
                  }
              }
              text: styleData.value

              //anchors.leftMargin: 5
              elide: Text.ElideMiddle
          }
          //Row{}
    }*/

    onDoubleClicked:
    {
      if      (listaSpesa.get(row).missing === "OK") listaSpesa.setProperty(row, "missing", "X");
      else if (listaSpesa.get(row).missing === "X") listaSpesa.setProperty(row, "missing", "OK");
      //stackView.push({item:Qt.resolvedUrl("visualizeListaSpesona.qml"), immediate:true, replace:true});
      console.log("setting missing property" + row + " - " + listaSpesa.get(row).missing);

    }


    TableViewColumn {
        role: "ingrediente"
        title: "Ingrediente"
        width: parent.width*0.46
        movable: false
        resizable: true
    }
    TableViewColumn {
        role: "dose"
        title: "Dose"
        width: parent.width*0.18
        movable: false
        resizable: true
    }
    TableViewColumn {
        role: "unit"
        title: "Unità"
        width: parent.width*0.22
        movable: false
        resizable: true
    }
    TableViewColumn {
        role: "missing"
        title: "-"
        width: parent.width*0.14
        movable: false
        resizable: true
    }
    model: listaSpesa
  }
 }

    Rectangle{
        id: rect_info
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width*0.8
        height: parent.height*0.6
        color: "#b5dd65"
        border.color: "#427a4a"
        //visible: true
        visible: (check_info.checked === true) ? false : true

        Column
        {
            anchors.fill: parent
            anchors.centerIn: parent
            spacing: parent.height/10
            Text{text: " "}

            Text
            {
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignJustify
                wrapMode: Text.Wrap
                width: parent.width*0.9
                text: "Le dosi qui riportate fanno riferimento al prodotto ripulito dagli scarti. Per frutta e verdura, se necessario, considerare dosaggi più alti."
            }
            CheckBox
            {
                id: check_info
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainWindow.width*0.7
                checked: false
                text: qsTr("Non ricordarmelo")
                Settings { property alias check_visible: check_info.checked  }
            }
            Button
            {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "ok"
                onClicked: rect_info.visible  = false
            }
        }
    }

}

