import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0

Item  {
    width: mainWindow.width

    ScrollView{
        id: scroll_view_id

        anchors.horizontalCenter: mainWindow.horizontalCenter
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff


        Column{
            width: mainWindow.width
            spacing: 20
            anchors.topMargin: parent.height/20

        //Row{
          //  anchors.horizontalCenter: parent.horizontalCenter
//            spacing: mainWindow.width*0.1
            Image{
                anchors.horizontalCenter: parent.horizontalCenter
                height: mainWindow.width*0.12
                fillMode: Image.PreserveAspectFit
                source: "../images/junk_1.png"
            }


         //}

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:"'Cibo spazzatura' è un termine popolare per definire del cibo poco salutare e di scarso valore nutritivo, per lo più commercializzato da multinazionali. Ha origine dal termine inglese 'junk food'. \n\nTipicamente il 'cibo spazzatura' contiene molti grassi, molto sale e/o molto zucchero, numerosi conservanti (come il glutammato di sodio e la tartrazina), per contro il 'cibo spazzatura' manca di sostanze importanti, in particolare vitamine e fibre. "
        }

        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            height: mainWindow.width*0.12
            fillMode: Image.PreserveAspectFit
            source: "../images/junk_2.png"
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Come riconoscerlo?"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            text: " - Molto grasso\n\n - Molto sale\n\n - Molto zucchero\n\n - Molto saporito\n\n - Costa poco\n\n - Poche fibre e vitamine"
        }

        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            height: mainWindow.width*0.15
            fillMode: Image.PreserveAspectFit
            source: "../images/junk_3.png"
        }
        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Le bibite dolci, lisce o gassate ad esempio, sono una vera truffa miliardaria. Sono per la quasi totalità acqua con l'aggiunta di bollicine, coloranti, zucchero o edulcoranti artificiali, additivi e acido fosforico. Calorie senza vitamine e valori nutritivi, in aggiunta a lattine e plastica ad ingrassare le discariche di tutto il mondo."

        }
        Text{text: " "}
       }//end column


    }
}
