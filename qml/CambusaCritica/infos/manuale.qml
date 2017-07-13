import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0
import "../images"



//***********************************************************************//
//                             manuale
//***********************************************************************//
Item {

    id: rect_info
    //height: mainWindow.height*0.95
    ProgressBar {

        id: manuale_progress
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.verticalCenter: mainWindow.top
        //anchors.verticalCenterOffset: manuale_progress.width*2
        width: mainWindow.width
        //anchors.verticalCenter: parent.bottom
        //anchors.verticalCenterOffset: -width
        value: (stack_manual.depth -1 )/5

        style: ProgressBarStyle {
                background: Rectangle {
                    //radius: 5
                    color: "#eee7ad"
                    border.color: "gray"
                    border.width: 1
                    implicitWidth: 200
                    implicitHeight: 24
                }
                progress: Rectangle {
                    //radius: 5
                    //color: "#f3c26c"
                    color: "#eee5d0"
                    border.color: "#b44646"
                }
            }

    }


    StackView{
        id: stack_manual
        initialItem: manual_intro

        focus: true
        Keys.onReleased: if (event.key === Qt.Key_Back && stack_manual.depth > 1) {
                             stack_manual.pop();
                             event.accepted = true;
                             }

        height: mainWindow.height*0.7
        width: mainWindow.width*0.9

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: manuale_progress.bottom
        anchors.topMargin: manuale_progress.height/2

        //anchors.verticalCenter: parent.verticalCenter

    }


    Column {
        id: manual_intro
        visible: (stack_manual.currentItem === manual_intro) ? true : false

        Text {

            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Questa app vuole aiutarti a realizzare un menù che segua i principi di Cambusa Critica.\n\n" +
                   "Acquistare prodotti per la nostra alimentazione non è un atto banale e innocuo. \n\n" +
                   "Esso può avere un fortissimo impatto su problemi di portata planetaria, di natura sociale, sanitaria, politica ed ambientale.\n\n"+
                   "Un menù sano ed etico è quindi una sfida sia per un capo sia per un campo scout.\n\n"
        }
       // Text{text: "Ringraziamenti" ;font.bold: true}
    }

    Column {
        id: manual_1
        visible: (stack_manual.currentItem === manual_1) ? true : false

        Text{text: "1. Seleziona la tua branca\n"; font.bold: true; width: parent.width/3}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "- I lupetti mangiano meno di tutti (LC)\n"+
                  "- Il reparto mangia di più (+19% LC)\n"+
                  "- Il clan poco più del reparto (+22% LC)\n"+
                  "- La COCA meno del reparto (+15% LC)\n\n"
        }

        Text{
            width: stack_manual.width
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignJustify
            text: "Le porzioni prendono spunto dalle indicazioni LARN dei consumi medi di calorie per fascia d'età con adattamenti alle esigenze di un campo scout.\n"
            font.italic: true
        }

        Text {
            id: link_Text
            text: '<html><style type="text/css"></style><a href="http://www.sinu.it/html/pag/larn-2014.asp">Tabelle LARN</a></html>'
            onLinkActivated: Qt.openUrlExternally(link)
        }
    }


    Column {
        id: manual_2
        visible: (stack_manual.currentItem === manual_2) ? true : false

        Text{text: "2. Numeri, genere e date\n"; font.bold: true; width: parent.width/3}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Indica il numero di persone per cui vuoi cucinare e le date del tuo campo: ci permetterà di calcolare le dosi adeguate.\n\nIl numero di persone potrà essere cambiato in seguito. \n\n"
        }

        Text{
            width: stack_manual.width
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignJustify
            text: "I maschi mangiano circa il 10% in più delle femmine.\n"
                  // + "Scegli un campo di massimo 15 giorni. "
            font.italic: true

        }
    }

    Column {
        id: manual_3

        visible: (stack_manual.currentItem === manual_3) ? true : false
        Text{text: "3. Tipo di attività\n"; font.bold: true; width: parent.width/3}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Durante un campo scout l'attività fisica intensa aumenta del 10% il consumo calorico e di conseguenza le dosi rispetto all'attività sedentaria.\n\nDurante una route il consumo calorico è simile a un campo scout ma alcune ricette difficili da realizzare senza cucina organizzata non vengono usate.\n"
        }

        Text{text: "4. Forno ed elettricità\n"; font.bold: true; width: parent.width/3}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Alcune ricette richiedono l'utilizzo di forno o di elettrodomestici. Se vuoi escludere queste ricette seleziona l'opzione 'no forno'."
        }
    }

    Column {
        id: manual_4

        visible: (stack_manual.currentItem === manual_4) ? true : false
        Text{
            font.bold: true; width: stack_manual.width;
            horizontalAlignment: Text.AlignJustify;
            wrapMode: Text.Wrap
            text: "5. Frutta e verdura di stagione\n";
        }

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "In base alle date che hai scelto per il tuo campo puoi richiedere di utilizzare solo frutta e verdura di stagione.\n"
        }
        Text{
            width: stack_manual.width
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignJustify
            text: "Il fresco di stagione costa meno ed è più buono. Tuttavia le ricette disponibili diminuiranno, soprattutto per i campi invernali.\n"
            font.italic: true
        }
        Text{
            font.bold: true; width: stack_manual.width;
            horizontalAlignment: Text.AlignJustify;
            wrapMode: Text.Wrap
            text: "6. Pane integrale\n";
        }

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Il pane integrale è ricco di fibre che abbassano l'indice glicemico e migliorano il transito intestinale.\n"
        }
        Text{
            font.bold: true; width: stack_manual.width;
            horizontalAlignment: Text.AlignJustify;
            wrapMode: Text.Wrap
            text: "7. Merenda\n";
        }

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "La merenda può essere aggiunta per equilibrare l'apporto calorico giornaliero se ritenuto necessario.\n"
        }
    }

    Column {
        id: manual_5

        visible: (stack_manual.currentItem === manual_5) ? true : false
        Text{text: "8. Sei pronto!\n"; font.bold: true; width: parent.width/3}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:  "Torna alla home page e comincia la creazione del tuo menù cliccando su 'Crea Menù'!\n\n"+
                   "Segui le istruzioni e guarda la nostra proposta.\n\n"+
                   "Clicca sul giorno che ti interessa per visualizzare le ricette e aggiusta il menù per meglio soddisfare le esigenze del tuo campo.\n\n"+
                   "Quando il tuo menù sarà pronto, potrai inviarlo via mail insieme alla lista della spesa e/o salvarlo tra i preferiti assegnandogli un nome."
        }
/*
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Il menù che hai scelto e modificato rimarrà in memoria nel telefono e potrai salvarlo sotto un nome specifico.\n\n" +
                   "Potrai modificarlo in seguito o consultarlo di giorno in giorno per visualizzare le ricette.\n\n"+
                   "Potrai anche consultare la lista della spesa, giorno per giorno per controllare di avere in cambusa tutto il necessario per il giorno seguente."
        }*/
    }

    Item{

        width: parent.width*0.5
        height: mainWindow.height/16
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.verticalCenter: parent.bottom
        anchors.verticalCenterOffset: -height*0.6

        Image{
            source: "../images/back_button.png"
            width: mainWindow.width/7
            fillMode: Image.PreserveAspectFit
            visible: (stack_manual.currentItem === manual_intro) ? false : true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.leftMargin
            //anchors.horizontalCenterOffset: -width/2

            MouseArea{
                anchors.fill: parent
                onClicked:
                {
                    stack_manual.pop()
                 }
             }
         }

        Image{
            source: (stack_manual.currentItem !== manual_5) ? "../images/next_button.png" : "../images/cross.png"
            width: (stack_manual.currentItem !== manual_5) ? mainWindow.width/7 : mainWindow.width/12
            fillMode: Image.PreserveAspectFit
            //visible: (stack_manual.depth === 6) ? false : true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: parent.width*0.35
            //anchors.horizontalCenterOffset: -width/2

            MouseArea{
                anchors.fill: parent
                onClicked:
                {
                    if (stack_manual.currentItem === manual_intro) stack_manual.push(manual_1)
                    else if (stack_manual.currentItem === manual_1) stack_manual.push(manual_2)
                    else if (stack_manual.currentItem === manual_2) stack_manual.push(manual_3)
                    else if (stack_manual.currentItem === manual_3) stack_manual.push(manual_4)
                    else if (stack_manual.currentItem === manual_4) stack_manual.push(manual_5)
                    else if (stack_manual.currentItem === manual_5) {stack_manual.clear(); stackView.pop({immediate:true});}
                }
             }
         }
    }

}


