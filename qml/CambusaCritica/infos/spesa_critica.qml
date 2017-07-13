import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0
import "../images"

//***********************************************************************//
//                             spesa critica
//***********************************************************************//
Item {

    id: rect_info
    //height: mainWindow.height*0.95
    ProgressBar {

        id: manuale_progress
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: mainWindow.top
        anchors.verticalCenterOffset: manuale_progress.width*2
        width: mainWindow.width
        value: (stack_manual.depth -1 )/7

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

        height: mainWindow.height*0.5
        width: mainWindow.width*0.9

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: manuale_progress.bottom
        anchors.topMargin: manuale_progress.height/2
    }


    Column {

        id: manual_intro
        spacing: 15
        visible: (stack_manual.currentItem === manual_intro) ? true : false

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Le <b>Cambuse Critiche</b> sono una proposta per tutti i gruppi scout per portare il consumo critico
    e consapevole all'interno dei <b>campi scout</b>. Con oltre 200.000 associati le associazioni scout
    italiane hanno i numeri per <b>spostare i consumi verso fornitori etici</b>."
        }


        Text {
            id: link_Text
            text: '<html><style type="text/css"></style><a href="http://www.cambusecritiche.org/">Cambuse Critiche Website</a></html>'
            onLinkActivated: Qt.openUrlExternally(link)
        }
    }

    Column {
        id: manual_1
        visible: (stack_manual.currentItem === manual_1) ? true : false

        Text{text: "1. Cos’è il consumo 'critico'\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Consumando in maniera disinvolta tutto quello che la pubblicità ci propone, sosteniamo il commercio di prodotti ottenuti in condizioni di sfruttamento e di degrado ambientale.\n\n"+
                  "Consumo “critico” significa andare oltre l’apparenza, porsi domande, approfondire quello che sta dietro all’offerta dei prodotti, conoscere i produttori, creare reti di sostegno al consumo etico.\n\n"
        }
    }


    Column {
        id: manual_1_5
        visible: (stack_manual.currentItem === manual_1_5) ? true : false

        Text{text: "Quali domande?\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
        Text {
            width: stack_manual.width
            //horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Il consumatore 'critico' si interroga:
- chi rifornisce i nostri negozi?
- quali sono le loro priorità?
- hanno responsabilità nei confronti dell'ambiente?
- quali rapporti hanno con i paesi poveri?
- con il mondo delle armi? con i paradisi fiscali?
- qual è il grado di trasparenza delle informazioni che diffondono?
- quale l'affidabilità?
- come si comportano con i propri lavoratori? "
        }
    }




    Column {
        id: manual_2
        visible: (stack_manual.currentItem === manual_2) ? true : false

        Text{text: "2. Il Commercio Equo e Solidale\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Il Commercio Equo e Solidale è un approccio alternativo al commercio convenzionale.\n
Il suo scopo è promuovere giustizia sociale ed economica e sviluppo sostenibile attraverso il commercio, la formazione, la cultura e l'azione politica.\n
Esso garantisce ai produttori un giusto guadagno e condizioni di lavoro dignitose, elimina le intermediazioni speculative e sostiene progetti di autosviluppo."
        }        
    }

    Column {
        id: manual_3

        visible: (stack_manual.currentItem === manual_3) ? true : false
        Text{text: "3. Come agisce il consumo critico\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Il consumo “critico” punta a far cambiare le imprese attraverso le loro stesse regole economiche fondate sul gioco della domanda e dell’offerta.\n
Scegliendo cosa comprare e cosa scartare, non solo segnaliamo alle imprese i comportamenti che approviamo e quelli che condanniamo, ma sosteniamo le forme produttive corrette e ostacoliamo le altre."
        }                      
    }
    //Attraverso acquisti consapevoli può nascere un nuovo modello di consumo sostenibile, che rafforzi la coesione e il benessere.
    //In definitiva, consumando in maniera critica è come se andassimo a votare ogni volta che facciamo la spesa.

    Column {
        id: manual_4

        visible: (stack_manual.currentItem === manual_4) ? true : false
        Text{text: "4. Le reti di consumo 'critico'\n"; font.bold: true; width: stack_manual.width; horizontalAlignment: Text.AlignJustify; wrapMode: Text.Wrap}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Fanno parte delle reti di consumo critico le Botteghe del Mondo e i Gruppi di acquisto solidali (GAS).\n
Acquistando prodotti nelle Botteghe del Mondo si rende giustizia ai produttori di queste materie e si comincia a costruire un modello di sviluppo orientato alla solidarietà e non all’economia basata sullo sfruttamento del lavoro e delle risorse.\n
I GAS privilegiano i prodotti realizzati senza sfruttamento, provenienti da cooperative sociali o da chi lavora con persone svantaggiate. Sostengono i piccoli produttori locali e i produttori biologici."// Pagare il giusto prezzo, perché la corsa alla riduzione dei costi favorisce la diffusione di rapporti di lavoro che mortificano la persona."
        }                      
    }

    Column {
        id: manual_5

        visible: (stack_manual.currentItem === manual_5) ? true : false
        Text{text: "5. Leggere l'etichetta\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:  "L'etichetta serve a difendere il consumatore.\n\n"+
                   "Quando acquistate un prodotto confezionato, leggete sempre l’etichetta, contiene informazioni utili riguardo alla data di scadenza, come conservare l’alimento e soprattutto ci dice cosa stiamo effettivamente mangiando. \n
Sull’etichetta tutti gli ingredienti sono elencati in ordine decrescente di quantità presente nel prodotto. \n
È necessario leggerla per sapere quello che mangiamo!"
//Sull’etichetta la lettera “E” seguita da un numero indica che nel prodotto è presente un additivo autorizzato nell'Unione Europea."
        }                 
    }

    Column {
        id: manual_6

        visible: (stack_manual.currentItem === manual_6) ? true : false
        Text{text: "6. Passi verso il consumo critico\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:  "Fare gli acquisti giusti: scegliamo i cibi dove si riconosca ancora la materia prima di origine: se prendiamo la carne, compriamola fresca e scegliamo dei pezzi magri. \n
Evitiamo i cibi elaborati: bonrol, salsicce, wurstel, salami, mortadella, carne in scatola.\n\n"+
                   "Scegliere il biologico: Ci sono tanti motivi per farlo, alcuni di salute, altri ambientali e altri ancora commerciali."
        }
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
            source: (stack_manual.currentItem !== manual_6) ? "../images/next_button.png" : "../images/cross.png"
            width: (stack_manual.currentItem !== manual_6) ? mainWindow.width/7 : mainWindow.width/12
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
                    else if (stack_manual.currentItem === manual_1) stack_manual.push(manual_1_5)
                    else if (stack_manual.currentItem === manual_1_5) stack_manual.push(manual_2)
                    else if (stack_manual.currentItem === manual_2) stack_manual.push(manual_3)
                    else if (stack_manual.currentItem === manual_3) stack_manual.push(manual_4)
                    else if (stack_manual.currentItem === manual_4) stack_manual.push(manual_5)
                    else if (stack_manual.currentItem === manual_5) stack_manual.push(manual_6)
                    else if (stack_manual.currentItem === manual_6) {stack_manual.clear(); stackView.pop({immediate:true});}
                }
             }
         }
    }
}


