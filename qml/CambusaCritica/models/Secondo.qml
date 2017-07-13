import QtQuick 2.1



ListModel {
    id: secondiModel


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


    ListElement{
          name: "Arrosto di tacchino"
          flag: "CARNEBIANCA"
          ele : 0          
          route: 0
          time: 90
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
              ListElement {
                name_ing:  "tacchino in fetta unica"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "rosmarino"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "salvia"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                 name_ing: "acqua"
                 dose: 50
                 unit: "ml"},
            ListElement {
                name_ing: "aglio"
                dose: 0.1
                unit: "spicchio" }]
        recipe: "Arrotolare la fetta di tacchino con all'interno uno spicchio d'aglio e alcune foglie di salvia e rosmarino. Rosolare con un pò d'olio l'arrosto girandolo finché non si colorisce un pò dappertutto. Coprire col coperchio e cuocere a fuoco basso per 30-40 minuti. Se si asciuga troppo aggiungere un po d'acqua."
    }

    ListElement{
          name: "Baccalà con ceci"
          flag: "PESCE LEGUMI"
          ele : 0
          route: 0
          time: 60
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "baccalà ammollato"
                dose: 80
                unit: "gr" },
            ListElement {
                  name_ing: "ceci in scatola"
                  dose: 200
                  unit: "gr" },
            ListElement {
                  name_ing: "pomodori pelati"
                  dose:  30
                  unit: "gr"},
            ListElement {
                name_ing: "cipolla"
                dose: 30
                unit: "gr" },
            ListElement {
                  name_ing: "prezzemolo"
                  dose: 0.7
                  unit: "gr" },
            ListElement {
                    name_ing: "alloro"
                    dose: 0.7
                    unit: "gr" },
            ListElement {
                  name_ing: "aglio"
                  dose: 0.2
                  unit: "spicchio" },
            ListElement {
                  name_ing: "pepe"
                  dose:  0
                  unit: "qb"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" }]
            recipe: "Lasciare ammolare i ceci per almeno 12 ore e dopo averli ben lavati farli cuocere in acqua abbondante con uno spicchio d'aglio ed una foglia d'alloro. Salate a cottura quasi terminata. (Naturalmente potete usare anche i ceci secchi, ma dimezzate la dose e metteteli ammolo il giorno prima). Lessare il baccalà in modo blando in acqua per circa 20 minuti. Sminuzzare il baccalà. Soffriggere la cipolla e aggiungere mezzo bicchiere di sugo di pomodoro ottenuto dai pomodori pelati. Aggiungere i ceci e il baccalà, guarnite con il prezzemolo tritato. Irrorare con olio extra vergine di oliva. Buoni anche il giorno dopo se riuscite a conservarli in frigorifero."
    }

    ListElement{
          name: "Caprese"
          flag: " VERDURA INSALATA FORMAGGIO"
          ele : 0
          route: 1
          time: 30
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pomodori"
                dose: 100
                unit: "gr" },
            ListElement {
                name_ing: "mozzarella"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"}
          ]

     recipe: "Lava bene i pomodori tagliali a pezzetti. Tagliare a fette la mozzarella. Mescolare pomodori e mozzarella e condire con olio e limone. "
    }


    ListElement {
            name: "Cotoletta di sogliola"
            flag: "PESCE"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "sogliola"
                    dose: 140
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "limone"
                    dose:  0.5
                    unit: "unità"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
               ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Passare la sogliola prima nell’uovo sbattuto e poi nel pan grattato misto al parmigiano. Far rosolare il pesce impanato in poco olio e servire con una spruzzata di limone. "
        }

    ListElement {
            name: "Crocchette estive"
            flag: "LEGUMI"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "piselli"
                    dose: 60
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.2
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 200
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}            ]
                recipe: "Lessare le patate, passarle fino a ottenere una purea con qualche cucchiaio d’acqua. Nel frattempo, cuocere separatamente le carote e i piselli; poi ridurre al passaverdura le carote con circa metà dei piselli. Unire quanto ottenuto con la purea di patate e incorporarvi le uova, il parmigiano, il sale, il prezzemolo tritato e i piselli ancora interi. Formare le polpette e rivestirle di pan grattato. Adagiarle in una teglia antiaderente e infornare a 220°C per circa 10 minuti."
        }

    ListElement{
          name: "Fagioli e cipolle"
          flag: "LEGUMI"
          ele: 0
          route: 1
          time: 15
          mesi: [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
              ListElement {
                name_ing: "fagioli in scatola"
                dose: 130
                unit: "gr" },
              ListElement {
                name_ing: "cipolla bianca"
                dose: 25
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" }]
        recipe: "Lessare i fagioli (se freschi). Tagliare la cipolla bianca in strisce molto sottili e saltare in padella. Unire fagioli e cipolla e aggiustare di sale."
    }

    ListElement {
            name: "Falafel"
            flag: "LEGUMI PATATE"
            ele: 1
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "ceci secchi"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "farina"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  1
                    unit: "gr"},
                ListElement {
                    name_ing: "origano"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "curry"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "cumino"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "semi di finocchio"
                    dose:  1
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  10
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}           ]
           recipe: "Ammollare i ceci il giorno prima, pelare le patate e la cipolla; quindi frullare insieme tutti gli ingredienti a crudo. Lasciare riposare in frigorifero almeno 15 minuti. Scaldare l'olio e friggervi le polpettine ottenute dal composto. Per eliminare l'olio in eccesso, asciugarle su carta assorbente. "
        }



    ListElement {
            name: "Fave in umido"
            flag: "LEGUMI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "fave fresche"
                    dose: 150
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 50
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Soffriggere la cipolla tagliata finemente nell'olio, poi aggiungere le fave fresche (anche surgelate vanno bene) e lasciare cuocere. Quando sono quasi pronti colorare con i pomodori pelati e aggiustare di sale."
        }


    ListElement {
            name: "Filetti di pesce impanato"
            flag: "PESCE"
            ele: 1
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "filetti di pesce"
                    dose: 140
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "menta"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "arancia"
                    dose:  0.5
                    unit: "unità"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Mettere a marinare per qualche ora il pesce nel succo di arancia, olio d’oliva e menta ridotta pezzettini. Impanarlo con il pan grattato e disporlo su una teglia antiaderente. Condirlo un po’ del sughero usato per la marinatura e infornarlo a 180° per mezz’ora. "
        }




    ListElement {
            name: "Frittata"
            flag: "UOVA"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "uova"
                    dose:  1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  4
                    unit: "ml"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  4
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 50
                       unit: "ml"},
               ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Sbattere le uova con il latte, il parmigiano e un pizzico di sale. Versare il composto in una padella con un filo d'olio e cuocere con coperchio finché non rapprende. Poi girare la frittata e cuocere dall’altro lato."
        }

    ListElement {
            name: "Frittata di asparagi"
            flag: "UOVA"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "asparagi"
                    dose: 40
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  4
                    unit: "ml"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  4
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 50
                       unit: "ml"},
               ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lavare e lessare gli asparagi in acqua salata, quindi ripassarli in padella con un filo d’olio e il prezzemolo. Nel frattempo sbattere le uova con il latte, il parmigiano e un pizzico di sale. Versare il composto sugli asparagi e farlo rapprendere; poi girare la frittata e cuocere dall’altro lato."
        }

    ListElement {
            name: "Frittata di ricotta"
            flag: "UOVA FORMAGGIO"
            ele: 0
            route: 0
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "ricotta"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  4
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  4
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Sbattere le uova con il latte, il parmigiano e un pizzico di sale; quindi unire la ricotta. Versare il composto in una padella antiaderente con un filo d’olio caldo e farlo rapprendere; poi girare la frittata e cuocere dall’altro lato."
        }

    ListElement {
            name: "Frittata di zucchine"
            flag: "UOVA"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "zucchine"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  4
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  4
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 50
                       unit: "ml"},
               ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lavare e tagliare a rondelle le zucchine, quindi cuocerle in padella con un filo d’olio e acqua se necessario; salare e pepare. Nel frattempo sbattere le uova con il latte, il parmigiano e un pizzico di sale. Versare il composto sulle zucchine e farlo rapprendere; poi girare la frittata e cuocere dall’altro lato."
        }


    ListElement {
            name: "Involtini di tacchino"
            flag: "CARNEBIANCA"
            ele: 0
            route: 0
            time: 60
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "fettine di tacchino"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "spinaci"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "farina"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  10
                    unit: "ml"},
                ListElement {
                    name_ing: "stuzzicadenti"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 200
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lessare gli spinaci, quindi sminuzzarli con il parmigiano. Porre il ripieno al centro delle fettine di tacchino, chiudere e fermare con degli stuzzicadenti. Passare gli involtini nella farina e poi rosolarli in poco olio; infine, versare il latte. La carne sarà pronta quando si sarà rappreso il sughetto. Servire circa due-tre involtini a testa."
        }

    ListElement {
            name: "Hamburger"
            flag: "CARNEROSSA"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "carne trita di manzo"
                    dose: 90
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  10
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lavorare la carne trita con l’uovo, il latte, il pan grattato, il parmigiano; aggiustare di sale e pepe; quindi formare degli hamburger, per dargli la giusta forma aiutati con il fondo di un piatto. Cuocere in padella o sulla griglia."
        }


    ListElement{
          name: "Hamburger vegetariano"
          flag: "LEGUMI"
          ele : 0
          route: 0
          time: 45
          mesi : [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "fagioli rossi"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "fagioli cannellini in scatola"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "fagioli borlotti"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "fave"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "cumino"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "farina"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "scorza limone"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "sale marino"
                dose: 0.75
                unit: "gr" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" }]
        recipe: "Scolare e sciacquare i fagioli. Frullare nel mixer fagioli e le fave ancora congelate, le spezie, il sale, la scorza di limone e gli aromi. Unire la farina fino ad ottenere un comparto pastoso e omogeneo. Lavorare il composto su una spianatoia con della farina in aggiunta. Dividere l'impasto formando delle palline da ping pong e schiacciarle come un hamburger. cuocere in padella con un filo d'olio per qualche minuto da entrambe le parti. Servire in un panino con insalata e pomodori.\n[Ricetta inventata da un gruppo di ragazzi delle scuole superiori."
    }

    ListElement{
          name: "Lenticchie al pomodoro"
          flag: "LEGUMI"
          ele : 0
          route: 1
          time: 30
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
              ListElement {
                name_ing: "lenticchie in scatola"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "rosmarino"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
              ListElement {
                     name_ing: "acqua"
                     dose: 100
                     unit: "ml"},
            ListElement {
                name_ing: "pomodori pelati"
                dose: 70
                unit: "gr" }]
        recipe: "Sciacquare le lenticchie secche e metterle a cuocere in una pentola per mezz'ora o finché non sono cotte, aggiungendo acqua se necessario. A parte soffriggere l'aglio, il rosmarino e il pomodoro. Quando le lenticchie sono cotte unire il soffritto e mescolare. Lasciar riposare qualche minuto."
    }

    ListElement{
          name: "Melanzane alla pizzaiola"
          flag: " VERDURA FORMAGGIO"
          ele : 0
          route: 1
          time: 30
          mesi : [
                  ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "pomodori"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "melanzana"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "mozzarella"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "basilico"
                dose:  0.35
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"}
          ]

     recipe: "Cuocere le melanzane tagliate a fette large in una padella con un filo d'olio. Dopo averle cotte, sistemarle su una teglia e disporgli sopra una fetta di pomodoro ed una fetta di mozzarella. Ripassare in forno per un quarto d'ora. Servire con la foglia di basilico sopra."
    }


    ListElement {
            name: "Merluzzo alla pizzaiola"
            flag: "PESCE"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "filetti di merluzzo"
                    dose: 140
                    unit: "gr"},
                ListElement {
                        name_ing: "pomodori pelati"
                        dose:  30
                        unit: "gr"},
                ListElement {
                        name_ing: "olive nere snocciolate"
                        dose:  20
                        unit: "gr"},
                ListElement {
                        name_ing: "capperi"
                        dose:  2
                        unit: "gr"},
                ListElement {
                        name_ing: "aglio"
                        dose: 0.2
                        unit: "spicchio"},
                ListElement {
                        name_ing: "origano"
                        dose:  0.35
                        unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Preparare il sugo: aromatizzare l’olio con l’aglio, quindi toglierlo e aggiungere i pelati con le olive e i capperi. Dopo circa dieci minuti, unire il merluzzo e cuocerlo per altri 15/20 minuti. Prima di servire, aggiustare di sale e origano."
        }


    ListElement {
            name: "Mozzarella"
            flag: "FORMAGGIO"
            ele: 0
            route: 0
            time: 15
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "mozzarella"
                    dose: 70
                    unit: "gr"},
               ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
               ListElement {
                    name_ing: "origano"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Scolare e tagliare a fette la mozzarella, quindi condirla con sale, olio, pepe o origano a preferenza. Per i più raffinati è possibile fare un’emulsione di olio e basilico."
        }

    ListElement {
            name: "Mozzarella in carrozza"
            flag: "FORMAGGIO"
            ele: 0
            route: 0
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "mozzarella"
                    dose: 60
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.3
                    unit: "unità"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  10
                    unit: "ml"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Scolare e tagliare a fette la mozzarella, quindi passarla prima nell’uovo sbattuto con latte, sale e pepe poi nel pan grattato. Infine, friggere con poco olio in una padella antiaderente. Asciugare l’olio in eccesso con carta assorbente prima di servire."
        }


    ListElement{
          name: "Palombo alla livornese"
          flag: "PESCE"
          ele : 0
          route: 0
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "tranci di palombo surgelato"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "pomodorini"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.1
                unit: "spicchio" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.2
                unit: "gr" }]
        recipe: "Scongelare il pesce nel frigo il giorno prima. Soffriggere l'aglio nell'olio,  aggiungere il pesce ei pomodorini lavati e tagliati. Cuocere a fuoco vivace per 20 minuti. Salare e aggiungere il prezzemolo."
    }

    ListElement {
            name: "Piselli alla salvia"
            flag: "LEGUMI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "piselli in scatola"
                    dose: 150
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "salvia"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 50
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Soffriggere la cipolla tagliata finemente nell'olio, poi aggiungere i piselli freschi (anche surgelati vanno bene) e lasciare cuocere. Quando sono quasi pronti aggiungere la salvia per insaporire e aggiustare di sale. "
        }

    ListElement {
            name: "Pollo alla brace"
            flag: "CARNEBIANCA"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "coscia di pollo"
                    dose: 130
                    unit: "gr"},
                ListElement {
                    name_ing: "limone"
                    dose:  0.5
                    unit: "unità"},
                ListElement {
                    name_ing: "timo"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "rosmarino"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "salvia"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Disossare le cosce di pollo e metterle a marinare in olio, limone, rosmarino, timo e salvia. Quindi cuocerle sulla brace."
        }


    ListElement {
            name: "Pollo caratterizzato"
            flag: "CARNEBIANCA"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "petto di pollo"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla rossa"
                    dose:  40
                    unit: "gr"},
                ListElement {
                    name_ing: "farina"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Stufare le cipolle tagliate fini con il brodo vegetale, quindi ridurle in crema con il passaverdura. A parte far saltare i bocconcini di pollo infarinati con poco olio; quando ben rosolati unire la crema di cipolle e aggiustare di sale."
        }


    ListElement {
            name: "Polpettine di fave"
            flag: "LEGUMI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "fave"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "zucchine"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.3
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "semi di sesamo"
                    dose:  2
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 600
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lessare le fave in acqua salata e ridurle al passaverdura. Grattugiare zucchine e carote, quindi sbollentarle per meno di 1 minuto in acqua salata, scolarle e unirle ai legumi. Aggiungere il parmigiano, metà dell’uovo, un pizzico di sale e amalgamare il composto. Formare le polpette, passarle nell'uovo rimasto già sbattuto con un pizzico di sale, quindi nel pangrattato misto ai semi di sesamo. Adagiarle in una teglia antiaderente e infornare a 220°C per circa 10 minuti."
        }



    ListElement {
            name: "Purè di patate"
            flag: "PATATE"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "patate"
                    dose: 110
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  30
                    unit: "ml"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "noce moscata"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 600
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Sbollentare le patate, pelarle e passarle allo schiaccia patate. Scaldare il latte, quindi aggiungerlo alle patate. Mescolare fino a rendere cremoso il puré, nel caso sia troppo duro aggiungere dell'acqua. Insaporire con sale e noce moscata. Mantecare fuori dal fuoco con il parmigiano e un filo d'olio."
        }


    ListElement{
          name: "Scaloppine alla pizzaiola "
          flag: "CARNEBIANCA"
          ele : 0
          route: 0
          time: 45
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
              ListElement {
                name_ing: "pollo"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 30
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "origano"
                dose: 0.35
                unit: "gr" }]
        recipe: "Salta le fettine di carne in padella, aggiungi i pelati e l'origano. Lascia addensare un pò il sugo e servi."
    }

    ListElement{
          name: "Scaloppine al prezzemolo"
          flag: "CARNEBIANCA"
          ele : 0
          route: 0
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
              ListElement {
                name_ing: "fettine di tacchino"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "farina tipo 0"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" }]
        recipe: "Infarina le fettine di carne e cuocile in padella con un po di olio. A cottura completata aggiungi il prezzemolo tritato e aggiusta di sale."
    }



    ListElement {
            name: "Sformato di ceci"
            flag: "LEGUMI PATATE"
            ele: 0
            route: 0
            time: 60
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "ceci in scatola"
                    dose: 100
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose:  50
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.1
                    unit: "unità"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "rosmarino"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.1
                    unit: "spicchio"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
               ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Scolare e sciacquare i ceci. Ridurli al passaverdura e aggiungere le uova e il parmigiano. In una pentola antiaderente fare aromatizzare l'olio con il rosmarino e l’aglio, poi aggiungere la purea di ceci, se necessario unire un po' di acqua. Sbucciare e tagliare le patate a fettine sottili, quindi utilizzarle per rivestire una teglia. Versare la purea di ceci sopra lo strato di patate, livellare bene e ricoprirla con uno strato di fette di patate. Spolverizzare la superficie con il pan grattato e il parmigiano, poi infornare."
        }


    ListElement{
          name: "Straccetti di pollo agli aromi"
          flag: "CARNEBIANCA"
          ele : 0
          route: 0
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
              ListElement {
                name_ing: "pollo"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "salvia"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "rosmarino"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" }]
      recipe: "Taglia il pollo a striscioline e soffriggilo con le erbe aromatiche."
    }


    ListElement {
            name: "Torta di formaggio"
            flag: "FORMAGGIO"
            ele: 1
            route: 0
            time: 60
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "groviera"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.1
                    unit: "unità"},
                ListElement {
                    name_ing: "pane"
                    dose:  40
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  15
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "noce moscata"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Tagliare il formaggio e il pane a fette; quindi disporli in una teglia antiaderente a strati alterni, la lasagna deve concludersi con il formaggio. In una terrina sbattere le uova con latte, sale, pepe e noce moscata. Versare il composto sul pane e il formaggio; dunque porre in forno preriscaldato a 220°C per circa mezz’ora. Lasciare raffreddare prima di servire."
        }


    ListElement {
            name: "Tortino di Nasello"
            flag: "PESCE"
            ele: 1
            route: 0
            time: 90
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "nasello"
                    dose: 100
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose:  40
                    unit: "gr"},
                ListElement {
                    name_ing: "pan grattato"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "farina"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  30
                    unit: "ml"},
                ListElement {
                    name_ing: "burro"
                    dose:  8
                    unit: "gr"},
                ListElement {
                    name_ing: "uova"
                    dose:  0.1
                    unit: "unità"},
                ListElement {
                    name_ing: "noce moscata"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "acqua"
                    dose: 600
                    unit: "ml"},
               ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Bollire il nasello e le patate tagliate a dadini, poi ridurli al passaverdura. Preparare la besciamella: sciogliere il burro con la farina, quindi aggiungere poco alla volta il latte già caldo; portare a ebollizione, insaporire con noce moscata e sale e cuocere per 5 minuti, finché non si è ben addensata e all’assaggio non si sente più il gusto della farina. Unire al composto di pesce e patate le uova e la besciamella. Versare il tutto in una teglia antiaderente, cospargere con il pan grattato e infornare a 180° fino a doratura. "
        }

}
