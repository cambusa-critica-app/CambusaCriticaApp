import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcFunction.js" as CalcFunction

Item  {
    width: mainWindow.width
    anchors.horizontalCenter: mainWindow.horizontalCenter



    ScrollView{
        id: scroll_view_id
        width: mainWindow.width
        //height: mainWindow.height - top_bar.height

        anchors.centerIn: parent
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

        Column{
            anchors.horizontalCenter: parent.horizontalCenter

            width: mainWindow.width
            spacing: 10
            anchors.topMargin: parent.height/25
            Text{text: " "}

            Text { width: parent.width*0.7; text: qsTr("Peso: " + peso_slider.value + " kg"); horizontalAlignment: Text.AlignHCenter;anchors.horizontalCenter: parent.horizontalCenter }
            Slider{
               id: peso_slider
               width: parent.width*0.7
               height: mainWindow.height/20
               anchors.horizontalCenter: parent.horizontalCenter
               style: SliderStyle
               {
                     groove: Rectangle {
                         implicitWidth: parent.width
                         implicitHeight: 5
                         color: "gray"
                         radius: 8
                     }
                     handle: Rectangle {
                         anchors.centerIn: parent
                         color: control.pressed ? "white" : "lightgray"
                         border.color: "gray"
                         border.width: 2
                         implicitWidth: 20
                         implicitHeight: 15
                         radius: 8
                     }
                }

                minimumValue: 30
                maximumValue: 150
                //value: 70
                stepSize: 1.0
                updateValueWhileDragging : true
                Settings { property alias peso: peso_slider.value  }
                onValueChanged:
                {
                    if (pressed)
                    {
                        button_rect.color = "#c4c238"
                        button_text.color = "black"
                        button_text.text = "Calcola BMI"
                    }
                }
           }

        Row{
            //width: parent.width*0.8
            //height: mainWindow.width/2
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: mainWindow.width/6

            Image{
                anchors.verticalCenter: parent.verticalCenter
                source: "../images/minus.png"
                width: mainWindow.width/14
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {

                        peso_slider.value--;
                        button_rect.color = "#c4c238"
                        button_text.color = "black"
                        button_text.text = "Calcola BMI"
                    }
                }
            }

            Image{
                anchors.verticalCenter: parent.verticalCenter
                source: "../images/plus.png"
                width: mainWindow.width/14
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {

                        peso_slider.value++;
                        button_rect.color = "#c4c238"
                        button_text.color = "black"
                        button_text.text = "Calcola BMI"
                    }
                }
            }
           }

           Text{text: " "}

            Text { width: parent.width*0.7; text: qsTr("Altezza: " + altezza_slider.value  + " cm") ; horizontalAlignment: Text.AlignHCenter;anchors.horizontalCenter: parent.horizontalCenter}
            Slider{
                id: altezza_slider
                width: parent.width*0.7
                height: mainWindow.height/20
                anchors.horizontalCenter: parent.horizontalCenter
                style: SliderStyle
                {
                         groove: Rectangle {
                             implicitWidth: parent.width
                             implicitHeight: 5
                             color: "gray"
                             radius: 8
                         }
                         handle: Rectangle {
                             anchors.centerIn: parent
                             color: control.pressed ? "white" : "lightgray"
                             border.color: "gray"
                             border.width: 2
                             implicitWidth: 20
                             implicitHeight: 15
                             radius: 8
                         }
                    }

                    minimumValue: 40
                    maximumValue: 300
                    //value: 180
                    stepSize: 1.0
                    updateValueWhileDragging : true
                    Settings { property alias altezza: altezza_slider.value  }
                    onValueChanged:
                    {
                        if (pressed)
                        {
                            button_rect.color = "#c4c238"
                            button_text.color = "black"
                            button_text.text = "Calcola BMI"
                        }
                    }
            }

        Row
        {
            //width: parent.width*0.8
            //height: mainWindow.width/2
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: mainWindow.width/6

            Image{
                anchors.verticalCenter: parent.verticalCenter
                source: "../images/minus.png"
                width: mainWindow.width/14
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {

                        altezza_slider.value--;
                        button_rect.color = "#c4c238"
                        button_text.color = "black"
                        button_text.text = "Calcola BMI"
                    }
                }
            }

            Image{
                anchors.verticalCenter: parent.verticalCenter
                source: "../images/plus.png"
                width: mainWindow.width/14
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {

                        altezza_slider.value++;
                        button_rect.color = "#c4c238"
                        button_text.color = "black"
                        button_text.text = "Calcola BMI"
                    }
                }
            }
          }

    /*
        Text {width: parent.width*0.7;  text: qsTr("Età: " + age_slider.value  + " anni");anchors.horizontalCenter: parent.horizontalCenter }
        Slider{
           id: age_slider
           width: parent.width*0.7
           height: mainWindow.height/20
           anchors.horizontalCenter: parent.horizontalCenter
           style: SliderStyle
           {
                 groove: Rectangle {
                     implicitWidth: parent.width
                     implicitHeight: 5
                     color: "gray"
                     radius: 8
                 }
                 handle: Rectangle {
                     anchors.centerIn: parent
                     color: control.pressed ? "white" : "lightgray"
                     border.color: "gray"
                     border.width: 2
                     implicitWidth: 20
                     implicitHeight: 15
                     radius: 8
                 }
            }

            minimumValue: 20
            maximumValue: 100
            //value: 30
            stepSize: 1.0
            updateValueWhileDragging : true
            Settings { property alias age: age_slider.value  }
            onValueChanged:
            {
                if (pressed)
                {
                    button_rect.color = "#c4c238"
                    button_text.color = "black"
                    button_text.text = "Calcola BMI"
                }
            }
        }*/

        Text{
            width: parent.width*0.7;
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Indice di massa corporea: ")
            horizontalAlignment: Text.AlignHCenter
}
        Text{
            id: text_bmi
            width: parent.width*0.7;
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: " "
            //text: qsTr("Indice di massa corporea: ")
        }

        Text{
            width: parent.width*0.7;
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Categoria: ")
            horizontalAlignment: Text.AlignHCenter
}
        Text{
            id: text_category
            width: parent.width*0.7;
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            text: " "
        }
       }//end column
    }//end scrollview


    Rectangle {
        id: button_rect
        color: "#c4c238"
        width: mainWindow.width
        height: mainWindow.height*0.065
        anchors.bottom: parent.bottom

        Text {
            id: button_text
            color: "black"
            anchors.fill: parent
            text: qsTr("Calcola BMI")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        MouseArea{
            anchors.fill: parent
            onClicked:
            {
                if (button_text.text === "Indietro") stackView.pop();
                else
                {
                    button_text.text = "Indietro"
                    button_rect.color = top_bar.color
                    button_text.color = mainWindow.color
                    text_bmi.text = CalcFunction.getBMI(peso_slider.value, altezza_slider.value);
                    //text_category.text = CalcFunction.getBMI_Category(CalcFunction.getBMI(peso_slider.value, altezza_slider.value), age_slider.value);
                    text_category.text = CalcFunction.getBMI_Category(CalcFunction.getBMI(peso_slider.value, altezza_slider.value), 30);
                }
            }
        }
    }

}

