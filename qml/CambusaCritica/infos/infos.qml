import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0
import "../images"


//***********************************************************************//
//                             infos
//***********************************************************************//
Item {

    id: rect_info

    ProgressBar {

        id: manuale_progress
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: mainWindow.top
        anchors.verticalCenterOffset: manuale_progress.width*2
        width: mainWindow.width

        value: (stack_manual.depth -1 )/8

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
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: manuale_progress.bottom
        anchors.topMargin: manuale_progress.height/2

        width: mainWindow.width*0.9
        height: parent.height

        focus: true
        Keys.onReleased: if (event.key === Qt.Key_Back && stack_manual.depth > 1) {
                             stack_manual.pop();
                             event.accepted = true;
                             }


    }


    Column {
        id: manual_intro
        visible: (stack_manual.currentItem === manual_intro) ? true : false

        //Text{text: " "}
        Text {

            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Cibo sano e scoutismo...\n"
            font.bold: true
        }

        Text {

            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "La vita scout insegna a prendersi cura di se stessi e degli altri, a crescere in salute, in intelligenza e socialità.\n
Cambuse critiche offre l’opportunità di mettere in pratica scelte coerenti relative al cibo che consumiamo. \n"+
//Gli scienziati hanno concluso che il consumo di massa di alimenti industriali a basso prezzo ha provocato la più grande crisi sanitaria del nostro tempo.
"Il vero problema è il cibo industriale ricco di zuccheri, grassi e sale. \n
Cibarsi in modo più sano significa riflettere su questo, leggere le etichette e fare acquisti più consapevoli, prendersi il tempo di cucinare e gustare il cibo in compagnia."

        }
        // Secondo gli esperti di salute, il vero problema è il cibo industriale ricco di zuccheri, grassi e sale.



    }

    Column {
        id: manual_1
        visible: (stack_manual.currentItem === manual_1) ? true : false

        Text{text: "1. I benefici di un cibo sano: prime regole\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            //text: "Il Fondo Mondiale per la Ricerca sul Cancro (WCRF) è molto chiaro nelle sue raccomandazioni, fatte apposta per godere a lungo di una buona salute.\n
//Oltre a mantenersi snelli e attivi  per tutta la vita, bisogna basare la propria alimentazione prevalentemente su cibi di provenienza vegetale, con cereali non industrialmente raffinati e legumi in ogni pasto e un’ampia varietà di verdure non amidacee e di frutta. \n"

            text: "Il Codice Europeo contro il cancro è molto chiaro nelle sue raccomandazioni, fatte apposta per godere a lungo di una buona salute.\n
Oltre a mantenersi snelli e attivi  per tutta la vita, bisogna basare la propria alimentazione prevalentemente su cibi di provenienza vegetale, con cereali non industrialmente raffinati e legumi in ogni pasto e un’ampia varietà di verdure non amidacee e di frutta. \n"
        }
    }

    Column {
        id: manual_1_5
        visible: (stack_manual.currentItem === manual_1_5) ? true : false

        Text{text: "Le 5 porzioni\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "Sommando verdure e frutta sono raccomandate almeno cinque porzioni al giorno (si noti fra le verdure non devono essere contate le patate).\n
Bisogna limitare il consumo di alimenti molto calorici ed evitare il consumo di bevande zuccherate. \n\n
Sono generalmente ad alta densità calorica i cibi industrialmente raffinati, precotti e preconfezionati, che contengono elevate quantità di zucchero e grassi, quali i cibi comunemente serviti nei fast food.\n\n"
        }
    }



    Column {
        id: manual_2
        visible: (stack_manual.currentItem === manual_2) ? true : false

        Text{text: "2. Poca carne rossa, no alcol\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:
                "Come terza regola è necessario limitare il consumo di carni rosse ed evitare il consumo di carni conservate. Le carni rosse comprendono le carni ovine, suine e bovine, compreso il vitello. \n
Non sono raccomandate, ma per chi è abituato a mangiarne si raccomanda di non superare i 300 grammi alla settimana. \n
Ultime regole: evitare l’utilizzo di bevande alcoliche durante l’età evolutiva (fino ai 18 anni), e limitarne l’uso per tutti. \n
Limitare il consumo di sale (non più di 5 g al giorno) e di cibi conservati sotto sale."
        }

    }

    Column{
      id: manual_attention
      visible: (stack_manual.currentItem === manual_attention) ? true : false

      Text{text: "Attenzione!\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}
      Text {
          width: stack_manual.width
          horizontalAlignment: Text.AlignJustify
          wrapMode: Text.Wrap
          color: "green"
          text: "Si noti la differenza fra “limitare” ed “evitare”. \n
Se occasionalmente si può mangiare un cibo molto grasso o zuccherato, ma mai quotidianamente, l’uso di bevande gassate e zuccherate è invece da evitare, anche perché forniscono abbondanti calorie senza aumentare il senso di sazietà.\n
Al tempo stesso le carni rosse sono da “limitare” mentre sono da “evitare” le carni conservate (comprendenti ogni forma di carni in scatola, salumi, prosciutti, wurstel), per le quali non si può dire che vi sia un limite al di sotto del quale probabilmente non vi sia rischio."
      }
  }

    Column {
        id: manual_3

        visible: (stack_manual.currentItem === manual_3) ? true : false
        Text{text: "3. Lo sapevi che tra i bambini italiani...\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "- Solo il 25% consuma su base quotidiana frutta e verdura.\n\n"
                + "- Il 41% consuma abitualmente bibite dolci.\n"
                + "- Il 31% fa una colazione non equilibrata (troppe proteine e pochi cereali integrali).\n\n"
                + "- L'8% salta la prima colazione (è il pasto più importante della giornata, saltarlo può causare scarsa attenzione e disturbi dell’apprendimento).\n\n"
                + "- Il 21% è sovrappeso.\n"
                + "- Il 10% è obeso.\n"
        }

        Text{
            width: stack_manual.width
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignJustify
            text: "Basato sui dati di:"
            font.italic: true
        }

        Text {
            id: link_Text
            text: '<html><style type="text/css"></style><a href="http://www.epicentro.iss.it/okkioallasalute/">Okkio alla salute 2014</a></html>'
            onLinkActivated: Qt.openUrlExternally(link)
        }


    }

    Column {
        id: manual_4

        visible: (stack_manual.currentItem === manual_4) ? true : false
        Text{text: "4. Una grande opportunità:\n la vita scout\n"; font.bold: true; width: stack_manual.width; horizontalAlignment: Text.AlignJustify; wrapMode: Text.Wrap}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "L’ambiente scout rappresenta il luogo ideale per dare ai ragazzi le abilità e il supporto che necessitano per adottare quotidianamente buoni comportamenti alimentari.\n
E’ necessario spiegare ai ragazzi perché è importante mangiare sano, insegnare a riconoscere i cibi salutari, come acquistarli e cucinarli. \n"
        }
    }

    Column {
        id: manual_4_5

        visible: (stack_manual.currentItem === manual_4_5) ? true : false
        Text{text: "I ragazzi imparano\n"; font.bold: true; width: stack_manual.width; horizontalAlignment: Text.AlignJustify; wrapMode: Text.Wrap}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "E’ importante che i ragazzi sviluppino senso critico nei confronti della pubblicità, imparino a distinguere le fonti autorevoli di informazioni, da quelle commerciali. \n
Ragazzi, che imparano ad acquistare e  cucinare cibi sani, acquisiscono competenze che li aiuteranno a mantenersi in salute per tutta la vita."
        }
    }

    Column {
        id: manual_5

        visible: (stack_manual.currentItem === manual_5) ? true : false
        Text{text: "5. La strategia\n"; font.bold: true; wrapMode: Text.Wrap; width: stack_manual.width}

        Text {
            width: stack_manual.width
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:  "E’ importante che la Comunità Capi condivida la scelta 'critica' nei confronti del cibo e la inserisca come punto qualificante nel proprio Progetto Educativo (PEG).\n
Si raccomanda di:
- offrire l’opportunità di consumare cibi salutari (frutta, verdura, cereali)\n"+
"- scoraggiare la disponibilità di “cibo spazzatura”, ricco di grassi, di sale e di zuccheri (bibite, caramelle, patatine fritte)\n"+
"- concedere tempi giusti per cucinare e consumare il pasto in un ambiente piacevole e sicuro\n"+
"- non utilizzare mai il cibo come premio"
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
                    else if (stack_manual.currentItem === manual_1) stack_manual.push(manual_1_5)
                    else if (stack_manual.currentItem === manual_1_5) stack_manual.push(manual_2)
                    else if (stack_manual.currentItem === manual_2) stack_manual.push(manual_attention)
                    else if (stack_manual.currentItem === manual_attention) stack_manual.push(manual_3)
                    else if (stack_manual.currentItem === manual_3) stack_manual.push(manual_4)
                    else if (stack_manual.currentItem === manual_4) stack_manual.push(manual_4_5)
                    else if (stack_manual.currentItem === manual_4_5) stack_manual.push(manual_5)
                    else if (stack_manual.currentItem === manual_5) {stack_manual.clear(); stackView.pop({immediate:true});}
                }
             }
         }
    }
}


