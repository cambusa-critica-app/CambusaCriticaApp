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



 //   Rectangle
   // {
     //   id: change_dose_rect
       // visible: false
        //width: mainWindow.width
        //height: mainWindow.height/2
        //anchors.bottomMargin: consulta_recipe.bottom
    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.topMargin: mainWindow.height/30

        Column
        {
            spacing: mainWindow.height/25
            anchors.horizontalCenter: parent.horizontalCenter
            height: mainWindow.height  - top_bar.height - bot_bar.height

            Text{text: " "}

            Text{
                text: "Numeri"
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                //font.pointSize: 10
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            Row{
                id: row_adding_people
                //width: parent.width*0.8
                height: mainWindow.width/12
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: mainWindow.width/26


                Image{
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/minus.png"
                    width: parent.height*0.6
                    fillMode: Image.PreserveAspectFit
                    asynchronous: true
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            CalcMenu.setNMALE(CalcMenu.getNMALE()-1);
                            n_males.text = CalcMenu.getNMALE();
                        }
                    }
                }

                Image{
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/male.png"
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                    asynchronous: true
                }


                Image{
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/plus.png"
                    width: parent.height*0.6
                    fillMode: Image.PreserveAspectFit
                    asynchronous: true
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            CalcMenu.setNMALE(CalcMenu.getNMALE()+1);
                            n_males.text = CalcMenu.getNMALE();
                        }
                    }
                }

                Text{
                    id: n_males
                    anchors.verticalCenter: parent.verticalCenter
                    text: CalcMenu.getNMALE();
                }

                Text{      visible: true;  text: " "   }
                Text{      visible: true;  text: " "   }
                Text{      visible: true;  text: " "   }

                Text{
                    id: n_females
                    anchors.verticalCenter: parent.verticalCenter
                    text: CalcMenu.getNFEMALE();
                }

                Image{
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/minus.png"
                    width: parent.height*0.6
                    fillMode: Image.PreserveAspectFit
                    asynchronous: true
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            CalcMenu.setNFEMALE(CalcMenu.getNFEMALE()-1);
                            n_females.text = CalcMenu.getNFEMALE();
                        }
                    }
                }

                Image{
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/female.png"
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                    asynchronous: true
                }

                Image{
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/plus.png"
                    width: parent.height*0.6
                    fillMode: Image.PreserveAspectFit
                    asynchronous: true
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            CalcMenu.setNFEMALE(CalcMenu.getNFEMALE()+1);
                            n_females.text = CalcMenu.getNFEMALE();
                        }
                    }
                }
            }// end row change numbers


        //Text{text: " "}//spacer
        Text{
            text: "Branca"
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            //font.pointSize: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
         Row
         {
             id: row_change_branca
             anchors.horizontalCenter: parent.horizontalCenter
             spacing: mainWindow.width/20

             Rectangle{
                 id: rect_lc
                 width:id_lc.width
                 height: id_lc.height
                 border.width: 2
                 border.color: txt_lc.color
                 color: "#0000ffff"
                 opacity: (CalcMenu.getBranca()==="lc") ? 1: 0.2
             Image{
                 id: id_lc
                 source: "images/lupetti.png"
                 fillMode: Image.PreserveAspectFit
                 width: mainWindow.width/6
                 //asynchronous: true
                 //anchors.fill: parent

                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         CalcMenu.setBranca("lc");
                         txt_lc.opacity= 1;
                         txt_eg.opacity= 0.4;
                         txt_rs.opacity= 0.4;
                         txt_coca.opacity= 0.4;

                         rect_lc.opacity= 1;
                         rect_eg.opacity= 0.2;
                         rect_rs.opacity= 0.2;
                         rect_coca.opacity= 0.2;
                     }
                 }
             }
             }

             Rectangle{
                 id: rect_eg
                 width:id_lc.width
                 height: id_lc.height
                 border.width: 2
                 border.color: txt_eg.color
                 color: "#0000ffff"
                 opacity: (CalcMenu.getBranca()==="eg") ? 1: 0.2
             Image{
                 id: id_eg
                 source: "images/reparto.png"
                 fillMode: Image.PreserveAspectFit
                 width: mainWindow.width/6
                 asynchronous: true
                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         CalcMenu.setBranca("eg");
                         txt_lc.opacity= 0.4;
                         txt_eg.opacity= 1;
                         txt_rs.opacity= 0.4;
                         txt_coca.opacity= 0.4;

                         rect_lc.opacity= 0.2;
                         rect_eg.opacity= 1;
                         rect_rs.opacity= 0.2;
                         rect_coca.opacity= 0.2;
                     }
                 }
             }
             }

             Rectangle{
                 id: rect_rs
                 width:id_lc.width
                 height: id_lc.height
                 border.width: 2
                 border.color: txt_rs.color
                 color: "#0000ffff"
                 opacity: (CalcMenu.getBranca()==="rs") ? 1: 0.2
             Image{
                 id: id_rs
                 source: "images/clan.png"
                 fillMode: Image.PreserveAspectFit
                 width: mainWindow.width/6
                 asynchronous: true

                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         CalcMenu.setBranca("rs");
                         txt_lc.opacity= 0.4;
                         txt_eg.opacity= 0.4;
                         txt_rs.opacity= 1;
                         txt_coca.opacity= 0.4;

                         rect_lc.opacity= 0.2;
                         rect_eg.opacity= 0.2;
                         rect_rs.opacity= 1;
                         rect_coca.opacity= 0.2;
                     }
                 }
             }
             }

             Rectangle{
                 id: rect_coca
                 width:id_lc.width
                 height: id_lc.height
                 border.width: 2
                 border.color: txt_coca.color
                 color: "#0000ffff"
                 opacity: (CalcMenu.getBranca()==="coca") ? 1: 0.2
             Image{
                 id: id_coca
                 source: "images/giwell_2.png"
                 fillMode: Image.PreserveAspectFit
                 width: mainWindow.width/6
                 asynchronous: true

                 MouseArea {
                     anchors.fill: parent
                     onClicked: {
                         CalcMenu.setBranca("coca");
                         txt_lc.opacity= 0.4;
                         txt_eg.opacity= 0.4;
                         txt_rs.opacity= 0.4;
                         txt_coca.opacity= 1;
                         rect_lc.opacity= 0.2;
                         rect_eg.opacity= 0.2;
                         rect_rs.opacity= 0.2;
                         rect_coca.opacity= 1;
                     }
                 }
             }
             }
         }//end row change branca

         Row {
             anchors.horizontalCenter: parent.horizontalCenter
             spacing: mainWindow.width/7
             Text{id:txt_lc;   color: "#b5b32d";text: "L/C" ;font.bold: true;   opacity: (CalcMenu.getBranca()==="lc") ? 1: 0.4}
             Text{id:txt_eg;   color: "#3e842b";text: "E/G" ;font.bold: true;   opacity: (CalcMenu.getBranca()==="eg") ? 1: 0.4}
             Text{id:txt_rs;   color: "#d9593c";text: "R/S" ;font.bold: true;   opacity: (CalcMenu.getBranca()==="rs") ? 1: 0.4}
             Text{id:txt_coca; color: "#a02f91";text: "COCA" ;font.bold: true;  opacity: (CalcMenu.getBranca()==="coca") ? 1: 0.4}
         }


         //Text{text: " "}//spacer
         Text{
             text: "Attività"
             anchors.horizontalCenter: parent.horizontalCenter
             font.bold: true
             //font.pointSize: 10
             verticalAlignment: Text.AlignVCenter
             horizontalAlignment: Text.AlignHCenter
         }
         Row
         {
             id: row_change_activity
             spacing: mainWindow.width/10

                 CheckBox{
                     id: cat_sedentaria
                     width: mainWindow.width*0.4
                     text: qsTr("Sedentaria")
                     checked: (CalcMenu.getActivity()===0) ? true : false
                     onCheckedChanged: {if (checked == true) {CalcMenu.setActivity(0); cat_campo.checked = false;}}
                 }
                 CheckBox{
                     id: cat_campo
                     width: mainWindow.width*0.4
                     text: qsTr("Campo scout")
                     checked: (CalcMenu.getActivity()!==0) ? true : false
                     Component.onCompleted: console.log("activity = " + CalcMenu.getActivity())
                     onCheckedChanged: {if (checked == true) {CalcMenu.setActivity(1); cat_sedentaria.checked = false;}}
                 }

         }//end row change activity
        }//end column change doses

        //bottom button
        Row{
            id: bot_bar
            visible: (CalcMenu.getConsulta()) ? true : false
            spacing: 1
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                color: top_bar.color
                width: mainWindow.width
                height: mainWindow.height*0.065
                Text {
                    id: my_text
                    color: mainWindow.color
                    anchors.fill: parent
                    text: qsTr("Ricalcola grammature")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                MouseArea{
                    anchors.fill: parent
                    onPressed:
                    {
                        parent.color = "#c4c238"
                    }

                    onReleased:
                    {
                        CalcMenu.setConsulta(true);
                        stackView.pop();
                        stackView.push({item:Qt.resolvedUrl("recipesel.qml"), immediate: true})

                    }
                }
            }

          }
        }//end of bottom optional raw
    //}//end rect change doses

}
