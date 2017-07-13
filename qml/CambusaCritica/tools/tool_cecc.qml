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
            //text:"Il Fondo Mondiale per la Ricerca sul Cancro (WCRF), la cui missione è di promuovere la prevenzione primaria dei tumori attraverso la ricerca e la divulgazione della conoscenza sulle loro cause, ha concluso un’opera ciclopica di revisione di tutti gli studi scientifici sul rapporto fra alimentazione e tumori.\n\n
//Vi hanno contribuito oltre 150 ricercatori, epidemiologi e biologi, di circa cinquanta centri di ricerca fra i più prestigiosi del mondo. L’Istituto Nazionale dei Tumori  ha gestito la sezione sui tumori della mammella, dell’ovaio e della cervice uterine. Il volume, disponibile su www.dietandcancerreport.org, è molto prudente nelle conclusioni, che riassumono in 10 raccomandazioni solo i risultati più solidi della ricerca scientifica."
            text: "Il Codice Europeo contro il Cancro, stabilito dall'Organizzazione Mondiale della sanità (OMS), ha stimato che il 30% dei tumori potrebbe essere evitato se tutti seguissero le 12 regole qui sotto."
        }

        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            height: mainWindow.width*0.12
            fillMode: Image.PreserveAspectFit
            source: "../images/cancer_icon.png"
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Le 12 regole"
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
        }

        Text{
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.85
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.Wrap
            text: "1) Non fumare, non usare tabacco in alcuna forma."
            + "\n\n2) Rendi la tua casa libera dal fumo. Sostieni le iniziative antifumo sul tuo luogo di lavoro."
            + "\n\n3) Mantieni un peso forma salutare."
            + "\n\n4) Fai attività fisica ogni giorno. Limita il tempo che trascorri seduto."
            + "\n\n5) Segui una dieta sana: mangia alimenti integrali, legumi, verdura e frutta; limita i cibi molto calorici (ricchi di zuccheri o di grassi) e evita le bevande dolci; evita la carne lavorata, limita le carni rosse e i cibi ricchi di sale."
            + "\n\n6) Se bevi alcolici di qualunque tipo, limitane il consumo. Non bere alcol è la scelta migliore."
            + "\n\n7) Evita il sole in eccesso, specie per i bambini. Usa protezioni solari. Non usare lampade abbronzanti."
            + "\n\n8) Sul luogo di lavoro, proteggiti da sostanze cancerogene seguendo le istruzioni di salute e sicurezza."
            + "\n\n9) Scopri se sei esposto a radiazioni dovuti ad alti livelli di radon naturale nella tua abitazione. Attivati per cercare di ridurre i livelli di radon."
            + "\n\n10) Per le donne: allattare al seno riduce il rischio di tumore nelle madri. Se puoi, allatta il tuo bambino; la terapia ormonale sostitutiva aumenta il rischio di alcuni tumori. Limitane l’uso."
            + "\n\n11) Assicura ai tuoi figli la partecipazione ai programmi di vaccinazione per l’epatite B (per i neonati) e il papillomavirus (HPV, per le ragazze)."
            + "\n\n12) Partecipa ai programmi di screening organizzati per i tumori del colon (uomini e donne), del seno e del collo dell’utero (donne)."
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            id: link_Text
            text: '<html><style type="text/css"></style><a href="http://www.aslmi2.it/web/documenti.nsf/vw107/3C7A7B90A5C12A1AC1257EBC004FE92E?OpenDocument&restricttocategory=Promozione/">Approfondisci</a></html>'
            onLinkActivated: Qt.openUrlExternally(link)
        }
        Text{text: " "}
       }//end column



    }
}
