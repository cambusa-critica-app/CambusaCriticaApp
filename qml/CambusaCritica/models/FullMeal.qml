import QtQuick 2.1

ListModel {
    id: fullMealModel

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
            name: "Pranzo al sacco"
            flag: "AFFETTATO FORMAGGIO"
            ele:  0
            route: 1
            time: 15
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "fontina"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodoro"
                    dose: 1
                    unit: "unità"},
                ListElement {
                    name_ing: "panini"
                    dose: 2
                    unit: "unità"},
                ListElement {
                    name_ing: "affettato"
                    dose: 60
                    unit: "gr"}
            ]
            recipe: "Un panino a testa con fontina e pomodoro, e un panino con affettato e fontina."
    }


    ListElement{
          name: "Cous cous con verdure"
          flag: " CEREALI LEGUMI "
          ele : 0
          route: 1
          time: 60
          calorie: 435
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "cous cous"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "piselli"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "cipolla"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "zucchine"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "ceci"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "carote"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "fave fresche"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "zucca"
                dose: 20
                unit: "gr" },
            ListElement {
                  name_ing: "acqua"
                  dose: 80
                  unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.5
                unit: "gr"}   ]
            recipe: "Cuoci il cous cous come descritto sulla confezione. Pulisci la verdura e cuoci al vapore o lesse o in padella quelle fresche o surgelate. Al termine aggiungi i ceci e piselli (se erano in scatola). Condisci con l'olio e il sale.  Aggiungi le verdure delicatamente al cous cosa e servi caldo."
    }


    ListElement{
          name: "Gnocchetti sardi, pomodoro e ricotta"
          flag: " CEREALI FORMAGGIO "
          ele : 0
          route: 0
          time: 45
          calorie: 0
          mesi: [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "gnocchetti sardi"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "ricotta di pecora"
                dose: 35
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}    ]
            recipe: "Cuoci la pasta in abbondante acqua salata. Cuoci i pelati come per un normale sugo. Aggiungi un pò di acqua di cottura alla ricotta in una ciotola, per stemperarla. Scola la pasta e condiscila col sugo e la ricotta e l'olio a crudo."
    }


    ListElement{
          name: "Insalata di farro"
          flag: " CEREALI FORMAGGIO "
          ele : 0
          route: 0
          time: 45
          calorie: 484
          mesi: [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "farro"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "mozzarella"
                dose: 35
                unit: "gr" },
            ListElement {
                name_ing: "pomodori freschi"
                dose: 35
                unit: "gr" },
            ListElement {
                name_ing: "basilico"
                dose: 0.8
                unit: "gr" },
           ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" }]
            recipe: " Cuoci il farro nell'acqua bollente come per il riso e la pasta. Assaggia per la cottura al dente. Scola il farro e condisci con olio, mozzarella e pomodori a pezzetti e foglie di basilico tritato. "
    }

    ListElement{
        name: "Insalata di riso"
        flag: "CEREALI FORMAGGIO RISO"
        ele: 0
        route: 0
        time: 45
        calorie: 0
        mesi: [
               ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
       ingredients: [
            ListElement {
                name_ing: "riso parboiled"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "olive"
                dose: 15
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "piselli in scatola"
                dose: 25
                unit: "gr" },
            ListElement {
                name_ing: "mozzarella"
                dose: 35
                unit: "gr" },
            ListElement {
                  name_ing: "acqua"
                  dose: 800
                  unit: "ml"},
            ListElement {
                  name_ing: "sale marino"
                  dose: 0.4
                  unit: "gr"}
         ]
         recipe: "Cuocere il riso in abbondante acqua salata insieme ai piselli (se sono surgelati). Scolare e unire le olive e la mozzarella tagliata a pezzetti. Condire con l'olio."
    }


    ListElement {
            name: "Lasagne di ragù con carni bianche"
              flag: "CARNEBIANCA"
              ele: 0
              route: 0
              time: 60
              calorie: 553
              mesi: [
                       ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                      ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                      ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                      ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
              ingredients: [
                ListElement {
                    name_ing: "lasagne verdi"
                    dose: 80
                    unit: "gr" },
                ListElement {
                    name_ing: "petto di tacchino macinato"
                    dose: 80
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
                    name_ing: "scalogno"
                    dose: 0.1
                    unit: "unità" },
                ListElement {
                    name_ing: "parmigiano"
                    dose: 6
                    unit: "gr" },
                ListElement {
                    name_ing: "pepe"
                    dose: 0
                    unit: "qb" },
                ListElement {
                    name_ing: "salvia"
                    dose: 0.3
                    unit: "gr" },
                ListElement {
                    name_ing: "rosmarino"
                    dose: 0.3
                    unit: "gr" },
                ListElement {
                    name_ing: "timo"
                    dose: 0
                    unit: "qb" },
                ListElement {
                    name_ing: "latte intero"
                    dose: 130
                    unit: "ml" },
                ListElement {
                    name_ing: "farina"
                    dose: 15
                    unit: "gr" },
                ListElement {
                    name_ing: "acqua"
                    dose: 500
                    unit: "ml"},
                ListElement {
                    name_ing: "noce moscata"
                    dose: 0
                    unit: "qb" }]
                recipe: "Soffriggere in metà dell’olio le erbe aromatiche tritate con lo scalogno, aggiungere la carne macinata e farla rosolare per una decina di minuti, con sale e pepe. A parte preparare la besciamella: stemperare la farina con il latte, aggiungere metà olio e la noce moscata, cuocere adagio mescolando fino al bollore. In una pentola fare bollire l’acqua e cuocere le lasagne una alla volta. Adagiare le lasagne cotte sul fondo di una teglia unta e coprire con il ragù, la besciamella e del parmigiano. Cuocere in forno a 180°C per 40 minuti."
    }

    ListElement {
            name: "Minestra di legumi"
            flag: "MINESTRA LEGUMI"
            ele: 0
            route: 1
            time: 60
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "ceci in scatola"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "fagioli in scatola"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose: 10
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "pepe"
                    dose: 0
                    unit: "qb"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose: 0
                    unit: "qb"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose:  380
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}            ]
                recipe: "Preparare un trito di cipolla e carote e farlo appassire in poco olio. Aggiungere prima i pelati, poi quando si sono ben insaporiti, acqua a sufficienza per la cottura dei legumi. Quando bolle, aggiungere i legumi e portare a cottura aggiustando di sale e pepe. Servire il minestrone con un giro d'olio e il parmigiano. Nel caso di legumi secchi bisogna porli in acqua fredda per almeno 12 ore."
        }



    ListElement {
            name: "Pasta ai 3 formaggi"
            flag: "PASTA FORMAGGIO CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 480
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "provolone dolce"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "crescenza"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  6
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose:  16
                    unit: "ml"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                       name_ing: "acqua"
                       dose: 800
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
            recipe: "Fondere la crescenza e il provolone dolce in poco latte. Cuocere la pasta e condirla con il sugo preparato, il parmigiano, l’olio e abbondante pepe."
        }

    ListElement {
            name: "Pasta al pesto, fagiolini e patate"
            flag: "PASTA CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 460
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "fagiolini"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "basilico"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  6
                    unit: "gr"},
                ListElement {
                    name_ing: "pinoli"
                    dose:  6
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  6
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 800
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Frullare nel mixer (o pestare nel mortaio) le foglie di basilico con i pinoli, l’aglio e l’olio extravergine d’oliva, solo alla fine incorporare il parmigiano. Mondare patate e fagiolini, tagliarli e cuocerli insieme alla pasta in abbondante acqua salata. Scolare il tutto e condire con il pesto."
        }


    ListElement{
          name: "Pasta al ragù"
          flag: "CEREALI CARNEROSSA "
          ele : 0
          route: 0
          time: 60
          calorie: 480
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "vitellone magro tritato"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "cipolla"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "sedano"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "carote"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}
            ]
            recipe: "Preparare il ragù per prima cosa: pulire e lavare le verdure; tagliarle a cubetti. Metterle in padella con un pò d'olio e soffriggere. Aggiungere la carne trita e soffriggere. Unire i pomodori e cuocere per 30-40 minuti a fuoco basso. Cuocere la pasta in abbondante acqua salata. Scolare e condire con il ragù."
    }


    ListElement{
          name: "Pasta al ragù bianco"
          flag: "PASTA CARNEROSSA CEREALI"
          ele : 0
          route: 1
          time: 60
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "cipolla"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "sedano"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "peperoncino"
                dose: 1
                unit: "gr" },
            ListElement {
                name_ing: "carote"
                dose: 15
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 700
                unit: "ml"},
            ListElement {
                name_ing: "vitellone magro tritato"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}            ]
            recipe: "Soffrigere in un filo d'olio la cipolla tagliata fine, il sedano e le carote. Mettere in padella il macinato di carne, aggiungere il sale e se si vuole un po' di peperoncino. Cuocere la pasta separatamente e una volta scolata ripassarla in pentola insieme al macinato."
    }


    ListElement {
            name: "Pasta ceci e broccoletti"
            flag: "PASTA LEGUMI VERDURA CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 420
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "ceci in scatola"
                    dose:  80
                    unit: "gr"},
                ListElement {
                    name_ing: "broccoletti"
                    dose:  80
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "basilico"
                    dose:  0.8
                    unit: "gr"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 800
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Scolare e sciacquare i ceci in scatola. Fare stufare in una pentola antiaderente con l’aglio, l’alloro e i pomodori per circa 30 minuti. A parte, sbollentare i broccoletti in abbondante acqua salata, scolarli e unirli ai ceci in padella. Nella stessa acqua dove si sono cotti i broccoletti, lessare la pasta e infine condirla con il sugo di ceci e broccoletti, parmigiano e un filo d’olio extravergine d’oliva."
        }

    ListElement{
          name: "Pasta con cime di rapa e acciughe"
          flag: "PASTA CEREALI PESCE"
          ele : 0
          route: 0
          time: 30
          calorie: 420
          mesi: [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "cime di rapa"
                dose: 110
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
            ListElement {
                name_ing: "acciughe"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "pomodorini secchi"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "pane grattugiato"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "ricotta salata"
                dose: 5
                unit: "gr" }]
        recipe: "Pulire le cime di rapa, togliendo le foglie più grosse e i gambi più duri. Lavare e lessare le cime e saltarle in padella con le acciughe e i pomodorini spezzettati, un pó di olio e aglio. A parte tostare in padella il pane grattugiato finché non prende un po di colore bruno. Cuocere la pasta al dente e unire il soffritto.  Servire con una spruzzata di ricotta grattugiata e pepe."
    }



    ListElement {
            name: "Pasta e ceci"
            flag: "LEGUMI PASTA CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 450
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "ceci in scatola"
                    dose: 100
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 10
                    unit: "gr"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose: 0
                    unit: "qb"},
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
                    dose: 0.4
                    unit: "gr"},
                ListElement {
                       name_ing: "acqua"
                       dose: 800
                       unit: "ml"},
                ListElement {
                    name_ing: "parmigiano"
                    dose: 5
                    unit: "gr"}
            ]
            recipe: "Tritare finemente la cipolla e farla appassire in poco olio, unire i ceci e un rametto di rosmarino. Aggiungere il brodo vegetale e portare a ebollizione. Unire la pasta, farla cuocere e a fine cottura condire con il restante olio e il parmigiano. Se si ha il tempo di usare ceci secchi (calcolare 30g a persona) è necessario metterli in ammollo i ceci 12/24 ore prima e prima di buttare la pasta bisogna assicurarsi che siano ben cotti. VARIANTE: la pasta si può sostituire con crostini di pane."
        }

    ListElement {
            name: "Pasta e fagioli"
            flag: "LEGUMI PASTA CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 445
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 80
                    unit: "gr" },
                ListElement {
                    name_ing: "fagioli in scatola"
                    dose: 65
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose: 0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose: 0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 5
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose: 0.4
                    unit: "gr"},
                ListElement {
                       name_ing: "acqua"
                       dose: 800
                       unit: "ml"},
                ListElement {
                    name_ing: "parmigiano"
                    dose: 3
                    unit: "gr"}
            ]
            recipe: "Tritare il prezzemolo e l’aglio. Passare al setaccio metà dei fagioli precedentemente scaldati in un po’ di acqua (non utilizzare MAI quella in cui sono conservati). Far scaldare poco olio con l’aglio, i pelati, i fagioli interi e quelli passati. Unire l’acqua in cui avete scaldato i fagioli e far cuocere per pochi minuti. Aggiungere la pasta e a fine cottura unire il prezzemolo tritato, il parmigiano e il restante olio. Se usate fagioli secchi è necessario metterli in ammollo per almeno 12 ore e cuocerli in abbondante acqua (da conservare per cuocere poi la pasta) prima di poterli passare e procedere con la ricetta. VARIANTE: la pasta si può sostituire con crostini di pane."
        }

    ListElement {
            name: "Pasta e lenticchie"
            flag: "LEGUMI PASTA CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 445
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "lenticchie in scatola"
                    dose: 65
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose: 20
                    unit: "gr"},
                 ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 10
                    unit: "gr"},
                ListElement {
                    name_ing: "sedano"
                    dose: 10
                    unit: "gr"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose: 0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 5
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose: 0.4
                    unit: "gr"},
                ListElement {
                       name_ing: "acqua"
                       dose: 800
                       unit: "ml"},
                ListElement {
                    name_ing: "parmigiano"
                    dose: 3
                    unit: "gr"}
            ]
            recipe: "Preparare un soffritto di carote, sedano e cipolla a cui unire le lenticchie ben scolate. Quando sono bene insaporite aggiungere la quantità d’acqua sufficiente per cuocere la pasta. Quando è pronta condirla con un filo d’olio, del prezzemolo e il parmigiano. VARIANTE: la pasta si può sostituire con crostini di pane."
        }


    ListElement{
          name: "Pasta e piselli"
          flag: "PASTA CEREALI LEGUMI "
          ele: 0
          route: 1
          time: 45
          calorie: 400
          mesi: [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "piselli in scatola"
                dose: 100
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "cipolla"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "parmigiano"
                dose: 3
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}      ]
            recipe: "Cuoci la pasta in abbondante acqua salata. In un tegame rosola la cipolla e aggiungi i piselli. Quando tutto è cotto unire la pasta ai piselli e condire col parmigiano."
    }

    ListElement {
            name: "Pasta zucchine e cannellini"
            flag: "PASTA LEGUMI CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 445
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "fagioli cannellini in scatola"
                    dose:  65
                    unit: "gr"},
                ListElement {
                    name_ing: "zucchine"
                    dose:  35
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "basilico"
                    dose:  0.8
                    unit: "gr"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose:  0
                    unit: "qb"} ,
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 800
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Stufare l’aglio con del brodo vegetale, aggiungere le zucchine tagliate a dadini, salare e portare a cottura. Una volta pronte frullare finemente con ¾ dei fagioli, precedentemente scaldati, il prezzemolo, il basilico e l’olio extravergine d’oliva. Lessate la pasta e conditela con la salsa preparata, il parmigiano e i restanti fagioli ancora interi. Se avete il tempo di utilizzare fagioli secchi è necessario metterli in ammollo 12 ore prima di cuocerli in abbondante acqua salata."
        }


    ListElement {
            name: "Pizza Margherita"
            flag: "PIZZA FORMAGGIO CEREALI"
            ele: 1
            route: 0
            time: 90
            calorie: 470
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "impasto lievitato per pizza"
                    dose: 165
                    unit: "gr"},
                ListElement {
                    name_ing: "mozzarella"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  35
                    unit: "gr"},
               ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "origano"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "basilico"
                    dose:  0.8
                    unit: "gr"},
                 ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.2
                    unit: "gr"}
            ]
            recipe: "Stendere l’impasto per la pizza in una teglia oliata, coprirlo con il pomodoro condito con sale e pepe, quindi infornare. A metà cottura aggiungere la mozzarella tagliata a fettine sottili, insaporire con origano o basilico prima di servire."
        }

    ListElement {
            name: "Pizza alle verdure"
            flag: "PIZZA FORMAGGIO CEREALI VERDURE"
            ele: 1
            route: 0
            time: 90
            calorie: 490
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "impasto lievitato per pizza"
                    dose: 165
                    unit: "gr"},
                ListElement {
                    name_ing: "mozzarella"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  35
                    unit: "gr"},
                ListElement {
                    name_ing: "melanzana"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "zucchine"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "peperone"
                    dose:  30
                    unit: "gr"},
               ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "origano"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "basilico"
                    dose:  0.8
                    unit: "gr"},
                 ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.2
                    unit: "gr"}
            ]
            recipe: "Stendere l’impasto per la pizza in una teglia oliata, coprirlo con il pomodoro condito con sale e pepe, quindi infornare. A metà cottura aggiungere la mozzarella tagliata a fettine sottili, insaporire con origano o basilico prima di servire."
        }

/*
    ListElement {
            name: "Pizza al prosciutto"
            flag: "PIZZA FORMAGGIO AFFETTATO CEREALI"
            ele: 1
            route: 0
            time: 90
            calorie: 490
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "impasto lievitato per pizza"
                    dose: 165
                    unit: "gr"},
                ListElement {
                    name_ing: "mozzarella"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "prosciutto cotto"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  35
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.2
                    unit: "gr"}
            ]
            recipe: "Stendere l’impasto per la pizza in una teglia oliata, coprirlo con la salsa di pomodoro condita con sale e pepe, quindi infornare. A metà cottura aggiungere la mozzarella tagliata a fettine sottili e il prosciutto cotto; se invece preferite il prosciutto crudo aggiungerlo prima di servire."
        }
*/
    ListElement {
            name: "Pizzoccheri classici"
            flag: "PASTA FORMAGGIO CEREALI PATATE"
            ele: 0
            route: 1
            time: 45
            calorie: 420
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pizzoccheri"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "verza"
                    dose:  60
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose:  50
                    unit: "gr"},
                ListElement {
                    name_ing: "casera"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "salvia"
                    dose:  0.4
                    unit: "gr"},
                ListElement {
                    name_ing: "acqua"
                    dose: 800
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Portare a ebollizione abbondante acqua salata, quindi versarci verze e patate mondate e tagliate grossolanamente; ripreso il bollore, calare i pizzoccheri. Raggiunta la cottura, scolare il tutto e condire con l’olio aromatizzato con salvia e aglio. Unire il parmigiano grattugiato e il casera fatto a dadini. Si può sostituire la verza con le coste che sono di stagione tutto l’anno. VARIANTE: i pizzoccheri si possono condire con un sugo di pomodoro e parmigiano."
        }

    ListElement{
          name: "Pizzoccheri con broccoli e acciughe"
          flag: "VERDURA CEREALI"
          ele : 0
          route: 1
          time: 45
          calorie: 485
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pizzoccheri"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "broccoli"
                dose: 110
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
            ListElement {
                name_ing: "acciughe"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "pomodorini secchi"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "parmigiano"
                dose: 6
                unit: "gr" }]
        recipe: "Pulire i broccoli e togliere le parti dure. Lavarli e lessarli in acqua salata bollente, tagliarli a pezzi. Tagliare a pezzi i pomodorini e tritare le acciughe. In un tegame scaldare l'olio e soffriggere l'aglio, i broccoli e le acciughe. Aggiungere i pomodorini e saltare in padella. Cuocere i pizzoccheri. Scolare la pasta e unirla ai broccoli e al resto. Amalgamare con il parmigiano e servire caldo."
    }




    ListElement{
          name: "Polenta e brasato"
          flag: " CEREALI CARNEROSSA "
          ele : 0
          route: 0
          time: 90
          calorie: 475
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "farina di mais"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "vitellone in pezzo unico"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "carote"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "cipolla"
                dose: 40
                unit: "gr" },
            ListElement {
                name_ing: "sedano"
                dose: 10
                unit: "gr" },              
            ListElement {
                name_ing: "acqua"
                dose: 410
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.8
                unit: "gr"}]
            recipe: "Cuocere la polenta secondo le indicazioni sulla confezione. (L’acqua, in genere, è 4 volte il peso della farina). Cuocere la carne in una pentola capiente e rosolare con un po d'olio. Pulire le verdure e tagliarle a pezzi. Aggiungerle alla carne nella pentola. Cuocere a fuoco basso per 40-50 minuti. Togliere la carne dal fuoco, lasciar raffreddare un pò e tagliare a fette. Rimettere le fette nella pentola e insaporire ancora per 10 minuti. Servire con la polenta."
    }

    ListElement {
            name: "Polenta e spezzatino"
            flag: "CEREALI CARNEROSSA"
            ele: 0
            route: 0
            time: 90
            calorie: 480
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "farina di mais"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "vitellone in pezzo unico"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose: 80
                    unit: "gr"},
                 ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "sedano"
                    dose: 10
                    unit: "gr"},
                ListElement {
                    name_ing: "farina tipo 0"
                    dose: 4
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 3
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 40
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose: 0.75
                    unit: "gr"}
            ]
            recipe: "Preparare un soffritto di carote, sedano e cipolla; quindi far rosolare per bene il manzo tagliato a cubetti e infarinato. Quando ha cambiato colore (non deve essere più rosa!) aggiungere i pelati e lasciare cuocere per un’oretta; nel caso in cui il sugo si stia asciugando troppo aggiungere dell’acqua. Nel frattempo portare a ebollizione l’acqua, per la quantità controllate le indicazioni scritte sulla confezione della polenta. (L’acqua, in genere, è 4 volte il peso della farina). Quando si cominciano a vedere le prime bollicine, versare a pioggia la farina e mescolare con una frusta. Far cuocere a fuoco lento per 40 minuti. Servire la polenta con accanto il sugo e lo spezzatino."
        }

    ListElement{
          name: "Polenta infagiolata"
          flag: " CEREALI LEGUMI "
          ele : 0
          route: 1
          time: 90
          calorie: 450
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "farina di mais"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "fagioli in scatola"
                dose: 65
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "rosmarino"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 320
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}]
            recipe: "Cuocere la polenta come descritto sulla confezione, tenendo presente di non farla troppo morbida. (L’acqua, in genere, è 4 volte il peso della farina). Bollire i fagioli con un pò di rosmarino. A parte fare un sugo di pomodoro. A fine cottura incorporare i fagioli nella polenta. Rovesciare la polenta su un tagliere. Tagliare a fette e servire con il sugo di pomodoro."
    }

    ListElement {
            name: "Risi e Bisi"
            flag: "RISO LEGUMI CEREALI"
            ele: 0
            route: 1
            time: 45
            calorie: 410
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "riso"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "piselli in scatola"
                    dose:  150
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 230
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Tritare la cipolla e farla appassire in poco olio, aggiungere i piselli e poco brodo vegetale; unire il riso e portarlo a cottura. A fine cottura aggiungere il prezzemolo tritato, l’olio e il parmigiano e lasciare mantecare qualche minuto prima di servire. Variante: RISOTTO CON LEGUMI sostituire ai piselli con altri legumi come fagioli, lenticchie o con un misti di essi."
        }            

    ListElement{
          name: "Riso e lenticchie"
          flag: "RISO CEREALI LEGUMI"
          ele : 0
          route: 1
          time: 45
          calorie: 415
          mesi: [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "riso parboiled"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "lenticchie in scatola"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}]
            recipe: "Bollire e scolare il riso. Unire le lenticchie saltate in padella con l'aglio. Aggiungere il prezzemolo fresco tritato."
    }

    ListElement{
          name: "Riso gratinato"
          flag: "RISO CEREALI "
          ele : 1
          route: 0
          time: 60
          calorie: 0
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "riso parboiled"
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
                name_ing: "piselli"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "uova"
                dose: 0.2
                unit: "unità" },
            ListElement {
                name_ing: "mozzarella"
                dose: 25
                unit: "gr" },
            ListElement {
                name_ing: "parmigiano"
                dose: 6
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 800
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}]
            recipe: "Cuocere il riso in abbondante acqua salata. Mescolare il riso con i pomodori, i piselli, l'uovo e la mozzarella tagliata a cubetti. Distribuire in una teglia larga, e cospargere di parmigiano e olio. Infornare per ottenere la gratinatura. "
    }


    ListElement {
            name: "Risotto crescenza e carote"
            flag: "RISO FORMAGGIO VERDURA CEREALI"
            ele: 0
            route: 0
            time: 45
            calorie: 0
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "riso"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose:  60
                    unit: "gr"},
                ListElement {
                    name_ing: "crescenza"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  6
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "acqua"
                    dose: 230
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Appassire la cipolla tritata con poco brodo vegetale; versare il riso e mescolare fino a tostatura (il chicco deve diventare trasparente). Portate a cottura unendo il brodo vegetale poco per volta e aggiustando di sale. A metà cottura, aggiungere le carote. Quando il riso è al dente, procedere alla mantecatura con la crescenza, il parmigiano e un filo di olio extravergine di oliva. Coprire e lasciare riposare alcuni minuti fuori dal fuoco prima di servire. Eventualmente le carote possono essere cotte a parte, frullate ed incorporate al riso insieme alla crescenza in fase di mantecatura."
        }

}

