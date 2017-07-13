import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.0


Item  {
    width: mainWindow.width
    anchors.horizontalCenter: mainWindow.horizontalCenter


    ScrollView{
        id: scroll_view_id
        width: mainWindow.width

        anchors.horizontalCenter: mainWindow.horizontalCenter
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff


        Column{
            width: mainWindow.width
            spacing: 20
            anchors.topMargin: parent.height/20

        Text{text: " "}
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text:"Il Fondo Mondiale per la Ricerca sul Cancro (WCRF), la cui missione è di promuovere la prevenzione primaria dei tumori attraverso la ricerca e la divulgazione della conoscenza sulle loro cause, ha concluso un’opera ciclopica di revisione di tutti gli studi scientifici sul rapporto fra alimentazione e tumori.\n\n
Vi hanno contribuito oltre 150 ricercatori, epidemiologi e biologi, di circa cinquanta centri di ricerca fra i più prestigiosi del mondo. L’Istituto Nazionale dei Tumori  ha gestito la sezione sui tumori della mammella, dell’ovaio e della cervice uterine. Il volume, disponibile su www.dietandcancerreport.org, è molto prudente nelle conclusioni, che riassumono in 10 raccomandazioni solo i risultati più solidi della ricerca scientifica."
        }

        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            height: mainWindow.width*0.12
            fillMode: Image.PreserveAspectFit
            source: "../images/cancer_icon.png"
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Le 10 raccomandazioni"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "1) Mantenersi snelli per tutta la vita."
            // + "Per conoscere se il proprio peso è in un intervallo accettabile è utile calcolare l’Indice di massa corporea (BMI = peso in Kg diviso per l’altezza in metri elevata al quadrato: ad esempio una persona che pesa 70 kg ed è alta 1,74 ha un BMI = 70 / (1,74 x 1,74) = 23,1.), che dovrebbe rimanere verso il basso dell’intervallo considerato normale (fra 18,5 e 24,9 secondo l’Organizzazione Mondiale della Sanità).
            + "\n\n2) Mantenersi fisicamente attivi tutti i giorni."
            //In pratica è sufficiente un impegno fisico pari a una camminata veloce per almeno mezz’ora al giorno; man mano che ci si sentirà più in forma, però, sarà utile prolungare l’esercizio fisico fino ad un’ora o praticare uno sport o un lavoro più impegnativo. L’uso dell’auto per gli spostamenti e il tempo passato a guardare la televisione sono i principali fattori che favoriscono la sedentarietà nelle popolazioni urbane.
            + "\n\n3) Limitare il consumo di alimenti ad alta densità calorica ed evitare il consumo di bevande zuccherate."
            //Sono generalmente ad alta densità calorica i cibi industrialmente raffinati, precotti e preconfezionati, che contengono elevate quantità di zucchero e grassi, quali i cibi comunemente serviti nei fast food. Si noti la differenza fra “limitare” ed “evitare”. Se occasionalmente si può mangiare un cibo molto grasso o zuccherato, ma mai quotidianamente, l’uso di bevande gassate e zuccherate è invece da evitare, anche perché forniscono abbondanti calorie senza aumentare il senso di sazietà.
            + "\n\n4) Basare la propria alimentazione prevalentemente su cibi di provenienza vegetale, con cereali non industrialmente raffinati e legumi in ogni pasto e un’ampia varietà di verdure non amidacee e di frutta. "
            //Sommando verdure e frutta sono raccomandate almeno cinque porzioni al giorno (per circa 600g); si noti fra le verdure non devono essere contate le patate.
            + "\n\n5) Limitare il consumo di carni rosse ed evitare il consumo di carni conservate."
            //Le carni rosse comprendono le carni ovine, suine e bovine, compreso il vitello. Non sono raccomandate, ma per chi è abituato a mangiarne si raccomanda di non superare i 500 grammi alla settimana. Si noti la differenza fra il termine di “limitare” (per le carni rosse) e di “evitare” (per le carni conservate, comprendenti ogni forma di carni in scatola, salumi, prosciutti, wurstel), per le quali non si può dire che vi sia un limite al di sotto del quale probabilmente non vi sia rischio.
            + "\n\n6) Limitare il consumo di bevande alcoliche. "
            //Non sono raccomandate, ma per chi ne consuma si raccomanda di limitarsi ad una quantità pari ad un bicchiere di vino (da 120 ml) al giorno per le donne e due per gli uomini, solamente durante i pasti. La quantità di alcol contenuta in un bicchiere di vino è circa pari a quella contenuta in una lattina di birra e in un bicchierino di un distillato o di un liquore.
            + "\n\n7) Limitare il consumo di sale (non più di 5 g al giorno) e di cibi conservati sotto sale. Evitare cibi contaminati da muffe (in particolare cereali e legumi)."
            // Assicurarsi quindi del buon stato di conservazione dei cereali e dei legumi che si acquistano, ed evitare di conservarli in ambienti caldi ed umidi.
            + "\n\n8) Assicurarsi un apporto sufficiente di tutti i nutrienti essenziali attraverso il cibo."
            //"Di qui l’importanza della varietà. L’assunzione di supplementi alimentari (vitamine o minerali) per la prevenzione del cancro è invece sconsigliata.
            + "\n\n9) Allattare i bambini al seno per almeno sei mesi."
            + "\n\n10) Nei limiti dei pochi studi disponibili sulla prevenzione delle recidive, le raccomandazioni per la prevenzione alimentare del cancro valgono anche per chi si è già ammalato."
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            id: link_Text
            text: '<html><style type="text/css"></style><a href="http://www.dietandcancerreport.org/">Approfondisci</a></html>'
            onLinkActivated: Qt.openUrlExternally(link)
        }
        Text{text: " "}
       }//end column



    }
}
