import QtQuick 2.1


ListModel {
    id: snacksModel

    ListElement {
            name: "NIENTE"
            flag: "NIENTE"
            ele:  0
            route: 1
            time: 0
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: ""
                    dose: 0
                    unit: ""}]
            recipe: ""
    }

    ListElement {
        name: "Albicocche"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "albicocche"
                dose:  2
                unit: "unità"}
        ]
        recipe: "Lavare bene ogni albicocca prima di servirla!"
    }


    ListElement {
        name: "Anguria"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 15
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "anguria"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Mettere l'anguria al fresco per almeno un giorno prima di servirla a merenda. Tagliarla a fette e distribuirla."
    }

    ListElement {
        name: "Arancia"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "arancia"
                dose:  1
                unit: "unità"}
        ]
        recipe: "Conviene sbucciare l’arancia prima di mangiarla!"
    }

    ListElement {
            name: "Caldarroste"
            flag: "FRUTTA"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "castagne"
                    dose:  100
                    unit: "gr"}
            ]
            recipe: "Incidere la buccia delle castagne con un coltello, non serve andare in profondità. Eliminare quelle che presentano dei buchi, nascondono vermi! Cuocerle su una padella in ferro traforata sul fondo finché non si aprono facilmente."
        }

    ListElement{
          name: "Castagnaccio"
          flag: " DESSERT"
          ele: 1
          route: 0
          time: 45
          mesi: [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "farina di castagne"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "acqua"
                dose: 150
                unit: "ml" },
            ListElement {
                name_ing: "noci"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "uvetta"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "pinoli"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "rosmarino"
                dose: 0.3
                unit: "gr" }]
      recipe: "Sfarinare la farina di castagne con l'acqua fino ad ottenere una pastella omogenea. Versare in una teglia larga e unta la pastella che non dovrà essere più alta di 1 cm. Ricoprire la pastella con le noci, le uvette, i pinoli e le foglie di rosmarino spezzettate. Cuocere in forno a 200°C per 20 minuti."
    }

    ListElement {
        name: "Cioccolata calda"
        flag: "DESSERT"
        ele: 0
        route: 1
        time: 30
        mesi : [
            ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:0},
            ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
            ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
            ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
                ListElement {
                    name_ing: "latte intero"
                    dose: 200
                    unit: "ml" },
                ListElement {
                    name_ing: "cacao amaro"
                    dose: 20
                    unit: "gr" },
                ListElement {
                    name_ing: "zucchero integrale"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "fecola di patate"
                    dose: 5
                    unit: "gr" }]
                recipe: "Mescolare il cacao con lo zucchero e la fecola e stemperare con un po' di latte freddo. Nel frattempo scaldare il resto del latte e aggiungerlo caldo mescolando in continuazione. Porre sul fuoco e portare a ebollizione lenta, cuocere per 5 minuti fino a che diventa un po' densa."
    }


    ListElement {
        name: "Clementine"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "clementine"
                dose:  2
                unit: "unità"}
        ]
        recipe: "Conviene sbucciare le clementine prima di mangiarle!"
    }



    ListElement {
        name: "Focaccia"
        flag: "PIZZA"
        ele: 1
        route: 0
        time: 45
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "impasto lievitato per pizza"
                dose: 85
                unit: "gr"},
            ListElement {
                name_ing: "rosmarino"
                dose: 0.35
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.5
                unit: "gr"}
        ]
        recipe: "Stendere l'impasto in teglia. Creare un'emulsione di sale, olio e acqua calda con cui ungere la superficie e cospargerla di rosmarino, lavato e asciugato. Lasciare lievitare ancora mezz'oretta e poi informare a 200 gradi per circa 20 minuti."
    }

    ListElement {
        name: "Fresella condita"
        flag: "CEREALI VERDURA"
        ele: 0
        route: 1
        time: 15
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "fresella"
                dose: 50
                unit: "gr"},
            ListElement {
                name_ing: "pomodori"
                dose: 30
                unit: "gr"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr"},
            ListElement {
                name_ing: "origano"
                dose: 0.35
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml"}
        ]
        recipe: "Bagnare la fresella con un po' di acqua per ammorbidirla. Lavare e tagliare i pomodori, condirli con olio, sale e origano; quindi condirvi la fresella come una bruschetta. "
    }

    ListElement{
        name: "Frutta secca"
        flag: "FRUTTASECCA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "noci"
                dose: 20
                unit: "gr"},
            ListElement {
                name_ing: "mandorle"
                dose: 20
                unit: "gr"},
           ListElement {
                name_ing: "uvetta"
                dose: 10
                unit: "gr"}
        ]
        recipe: "Sgranocchiare frutta secca nei momenti di fame fuori pasto è meglio di un'altra merenda zuccherata e tiene la fame lontana grazie a un basso indice glicemico."
    }




    ListElement {
        name: "Macedonia estiva"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 30
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "anguria"
                dose: 25
                unit: "gr"},
            ListElement {
                name_ing: "prugne"
                dose: 0.5
                unit: "unità"},
            ListElement {
                name_ing: "pesche"
                dose: 0.25
                unit: "unità"},
            ListElement {
                name_ing: "melone"
                dose: 25
                unit: "gr"},
            ListElement {
                name_ing: "limone"
                dose:  0.3
                unit: "unità"}
        ]
        recipe: "Lavare bene tutta la frutta e tagliarla a pezzettini. Mescolarla bene e aggiungervi un po' di succo di limone per evitare che ossidi. Lasciare macerare per almeno un'ora e servire fresca."
    }

    ListElement {
        name: "Macedonia invernale"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 30
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "mela"
                dose: 0.125
                unit: "unità"},
            ListElement {
                name_ing: "arancia"
                dose: 0.125
                unit: "unità"},
            ListElement {
                name_ing: "kiwi"
                dose: 0.3
                unit: "unità"},
            ListElement {
                name_ing: "pera"
                dose: 0.125
                unit: "unità"},
            ListElement {
                name_ing: "limone"
                dose:  0.5
                unit: "unità"}
        ]
        recipe: "Lavare bene tutta la frutta e tagliarla a pezzettini. Mescolarla bene e aggiungervi un po' di succo di limone per evitare che ossidi. Lasciare macerare per almeno un'ora e servire fresca."
    }

    ListElement {
        name: "Mela"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "mela"
                dose:  1
                unit: "unità"}
        ]
        recipe: "Lavare bene la mela prima di addentarla! Solo i più viziati la vogliono sbucciata…"
    }

    ListElement {
        name: "Melone"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 15
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "melone"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Mettere il melone al fresco per almeno un giorno prima di servirlo a merenda. Dividerlo in due, eliminare i semini dal centro con un cucchiaio, tagliarlo a fette e distribuirlo."
    }

    ListElement {
        name: "Pesca"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "pesche"
                dose:  1
                unit: "unità"}
        ]
        recipe: "Lavare bene ogni pesca prima di servirla! Attenzione che l’interno del nocciolo è velenoso!"
    }



    ListElement {
        name: "Spremuta e tarallini"
        flag: "FRUTTA CEREALI"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "spremuta d'arancia"
                dose: 200
                unit: "ml"},
            ListElement {
                name_ing: "taralli"
                dose:  15
                unit: "gr"}
        ]
        recipe: "Spremere un'arancia a testa e servirla insieme alla razione di taralli prevista."
    }


    ListElement {
        name: "Succo e pop-corn"
        flag: "FRUTTA CEREALI"
        ele: 0
        route: 1
        time: 30
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "succo di mela 100% frutta"
                dose: 200
                unit: "ml"},
            ListElement {
                name_ing: "semi di mais"
                dose: 30
                unit: "gr"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.2
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml"}
        ]
        recipe: "Far scaldare l'olio in una pentola piuttosto profonda, aggiungere i semi di mais e coprire con un coperchio. Appena si sentono i primi scoppiettii abbassare la fiamma. Quando non si sente più alcun rumore provenire dalla pentola, i pop-corn sono pronti! Salarli e servirli ancora tiepidi accompagnati da un bicchiere di succo di mela 100% frutta e senza zuccheri aggiunti. "
    }

    ListElement {
            name: "Tè con pane e marmellata"
            flag: "MARMELLATA"
            ele:  0
            route: 0
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "tè in bustine"
                    dose:  0.5
                    unit: "bustine"},
                ListElement {
                    name_ing: "acqua"
                    dose: 150
                    unit: "ml"},
                ListElement {
                    name_ing: "miele"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "pane"
                    dose:  50
                    unit: "gr"},
           ListElement {
                    name_ing: "marmellata"
                    dose:  20
                    unit: "gr"}
            ]
            recipe: "Scaldare il latte e aggiungervi il cacao quando ha raggiunto la temperatura desiderata. Fare bollire l'acqua, immergere la bustina di tè e lasciarla in infusione un paio di minuti; quindi aggiungervi un cucchiaino di miele e mescolare bene. Tagliare il pane a fette e spalmarle con la marmellata, calcolare circa due fette a testa."
        }


 ListElement {
        name: "Tè con torta"
        flag: "DESSERT"
        ele: 1
        route: 0
        time: 60
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
        ListElement {
                name_ing: "tè in bustine"
                dose:  0.5
                unit: "bustine"},
        ListElement {
                name_ing: "acqua"
                dose:  200
                unit: "ml"},
        ListElement {
                name_ing: "farina"
                dose:  30
                unit: "gr"},
        ListElement {
                name_ing: "zucchero"
                dose:  15
                unit: "gr"},
        ListElement {
                name_ing: "mela"
                dose:  0.3
            unit: "unità"},
        ListElement {
                name_ing: "uova"
                dose:  0.2
                unit: "unità"},
        ListElement {
                name_ing: "latte"
                dose:  50
                unit: "ml"},
        ListElement {
                name_ing: "vaniglia"
                dose:  0
                unit: "qb"},
        ListElement {
                name_ing: "olio EVO"
                dose:  5
                unit: "ml"},
        ListElement {
                name_ing: "limone"
                dose:  0.5
                unit: "unità"},
        ListElement {
                name_ing: "lievito"
                dose:  0.2
                unit: "unità"}
        ]
        recipe: "Se la torta è già fatta, servite una porzione di 65 grammi a testa. Se dovete fare la torta: In una terrina mescolare la farina e il lievito, quindi stemperare con il latte freddo facendo attenzione a non creare grumi. Aggiungere la scorza di limone, lo zucchero (tranne un cucchiaio), l’olio, l’uovo e le mele sbucciate e affettate, tenere da parte alcune fette per la guarnizione finale. Amalgamare delicatamente il composto e versarlo in una tortiera dai bordi alti precedentemente unta e infarinata. Guarnire la torta con la mela avanzata seguendo la circonferenza della torta. Mettere in forno già in temperatura a 150° per circa un’ora. Lasciare raffreddare prima di servirne una fetta a testa insieme al tè. Per la preparazione del tè: fare bollire l'acqua, immergere la bustina di tè e lasciarla in infusione un paio di minuti."
    }


 ListElement {
     name: "Tè freddo, pane e cioccolato"
     flag: "DESSERT CEREALI"
     ele: 0
     route: 1
     time: 30
     mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
            ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
            ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
            ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
     ingredients: [
         ListElement {
             name_ing: "tè in bustine"
             dose:  0.5
             unit: "bustine"},
         ListElement {
             name_ing: "acqua"
             dose:  200
             unit: "ml"},
         ListElement {
             name_ing: "zucchero"
             dose:  5
             unit: "gr"},
         ListElement {
             name_ing: "limone"
             dose:  0.3
             unit: "unità"},
         ListElement {
             name_ing: "pane integrale"
             dose:  30
             unit: "gr"},
         ListElement {
             name_ing: "cioccolato fondente"
             dose:  35
             unit: "gr"}
     ]
     recipe: "Fare bollire l'acqua, immergere la bustina di tè e lasciarla in infusione un paio di minuti; quindi aggiungervi un cucchiaino di zucchero, un po' di succo di limone e mescolare bene. Lasciare raffreddare un paio d'ore prima di servirlo insieme al pane e al cioccolato per merenda."
 }

 ListElement {
     name: "Yogurt e frutti di bosco"
     flag: "YOGURT FRUTTA"
     ele: 0
     route: 0
     time: 15
     mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
            ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
            ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
            ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
     ingredients: [
         ListElement {
             name_ing: "yogurt naturale"
             dose: 125
             unit: "gr"},
         ListElement {
             name_ing: "mirtilli"
             dose:  15
             unit: "gr"},
         ListElement {
             name_ing: "lamponi"
             dose:  15
             unit: "gr"},
         ListElement {
             name_ing: "miele"
             dose:  5
             unit: "gr"}
     ]
     recipe: "Versare lo yogurt in una tazza, aggiungervi un cucchiaino di miele e mescolare bene. Lavare mirtilli e lamponi in acqua fredda e incorporarli allo yogurt."
 }

 ListElement{
     name: "Yogurt e frutta secca"
     flag: "YOGURT FRUTTASECCA"
     ele: 0
     route: 0
     time: 15
     mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
            ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
            ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
            ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
     ingredients: [
         ListElement {
             name_ing: "yogurt naturale"
             dose: 125
             unit: "gr"},
         ListElement {
             name_ing: "noci"
             dose: 10
             unit: "gr"},
        ListElement {
             name_ing: "uvetta"
             dose: 10
             unit: "gr"},
         ListElement {
             name_ing: "miele"
             dose: 3
             unit: "gr"}
     ]
     recipe: "Versare lo yogurt in una tazza, aggiungervi mezzo cucchiaino di miele e mescolare bene. Sbucciare le noci, spezzettarle e incorporare con l'uvetta allo yogurt. (le uvette dolcificano)"
 }


}
