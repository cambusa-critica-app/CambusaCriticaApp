import QtQuick 2.1



ListModel {
    id: primiModel


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
            name: "Pranzo al sacco da casa"
            flag: "AFFETTATO"
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
            recipe: "Si assume che i ragazzi portino i panini (solitamente con affettato), da casa."
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
                    name_ing: "mozzarella"
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
            recipe: "Un panino a testa con mozzarella e pomodoro, e un panino con affettato e mozzarella."
    }

    ListElement {
            name: "Pranzo Trapper"
            flag: "AFFETTATO PATATE CARNEROSSA VERDURA"
            ele:  0
            route: 1
            time: 90
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "patate"
                    dose: 150
                    unit: "gr"},
                ListElement {
                    name_ing: "farina"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "acqua"
                    dose: 30
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose: 0.3
                    unit: "gr"},
                ListElement {
                    name_ing: "zucchine"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "melanzana"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "peperone"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "orata"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "coscia di pollo"
                    dose: 25
                    unit: "gr"},
                ListElement {
                    name_ing: "salsiccia"
                    dose: 25
                    unit: "gr"},
                ListElement {
                    name_ing: "carta stagnola"
                    dose: 0
                    unit: "qb"},
                ListElement {
                    name_ing: "limone"
                    dose: 0.5
                    unit: "unità"}
            ]
            recipe: "Avvolgere la patata nella carta stagnola e seppellirla nella brace per circa 30 minuti. Preparare l'impasto per il pane miscelando la farina e il sale con acqua (quanto basta) fino a ottenere un impasto di consistenza appropriata. Avvolgere la pasta di pane intorno a spiedini e cuocerla sulla brace. Tagliare le verdure e la salsiccia in modo da creare degli spiedini. Realizzare una griglia per cuocere il pesce e il pollo."
    }

    ListElement {
            name: "Crema di zucca"
            flag: "MINESTRA PATATE CEREALI"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "zucca"
                    dose: 200
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "pane"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "latte"
                    dose: 30
                    unit: "ml"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 30
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
                    dose:  5
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 50
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
            recipe: "Mondare e tagliare la zucca e le patate. Far soffriggere la cipolla tritata e aggiungere le verdure. Coprirle con il brodo vegetale, tanto quanto basta per cuocerle. Una volta pronte, passare il tutto con il frullatore a immersione o al passaverdura. Unire il latte scaldato precedentemente, aggiustare di sale e condire con pepe, olio e parmigiano. Servire la crema di zucca con i crostini di pane passati al forno o in padella."
        }

    ListElement{
        name: "Gazpacho"
        flag: "VERDURA"
        ele: 1
        route: 0
        time: 30
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "pomodori freschi"
                dose: 250
                unit: "gr"},
            ListElement {
                name_ing: "cetrioli"
                dose: 30
                unit: "gr"},
           ListElement {
                name_ing: "peperone verde"
                dose: 150
                unit: "gr"},
            ListElement {
                name_ing: "cipolla"
                dose: 30
                unit: "gr"},
            ListElement {
                name_ing: "pane raffermo"
                dose: 13
                unit: "gr"},
            ListElement {
                  name_ing: "aglio"
                  dose: 0.2
                  unit: "spicchio" },
            ListElement {
                 name_ing: "sale marino"
                 dose:  0.75
                 unit: "gr"},
            ListElement {
                  name_ing: "pepe"
                  dose:  0
                  unit: "qb"},
            ListElement {
                  name_ing: "aceto"
                  dose:  1
                  unit: "ml"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" }
        ]
        recipe: "Mettere tutto nel frullatore, poi in frigo per almeno mezz'ora. Servire bello fresco."
    }

    ListElement {
            name: "Gnocchi al pomodoro"
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
                    name_ing: "gnocchi di patate"
                    dose: 170
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  70
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "basilico"
                    dose:  0.8
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 5
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 600
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}   ]
            recipe: "Preparare il sugo facendo aromatizzare l'olio con aglio, quindi toglierlo e aggiungere i pomodori pelati e aggiustare di sale. Separatamente, cuocere gli gnocchi: quando affiorano in superficie sono pronti da scolare. Condirli con il sugo, una fogliolina di basilico e il parmigiano."
        }


    ListElement {
            name: "Minestra d'orzo"
            flag: "MINESTRA CEREALI"
            ele: 0
            route: 1
            time: 60
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "orzo"
                    dose: 60
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "sedano"
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
                    name_ing: "erba cipollina"
                    dose: 0.7
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
                       dose: 380
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}           ]
                recipe: "Mondare e tagliare le verdure a dadini. Far soffriggere la cipolla tritata con il sedano e le carote in poco olio; quando insaporiti aggiungere e tostare l'orzo dopo averlo lavato accuratamente. Portare a cottura aggiungendo il brodo vegetale a necessità, dopo una mezz'oretta unire le patate. La minestra deve andare almeno un'ora sul fuoco, controllare che sia giusta di sale prima di mantecarla fuori dal fuoco con l'erba cipollina, il pepe, l’olio e il parmigiano."
        }

    ListElement {
            name: "Minestrone invernale"
            flag: "MINESTRA VERDURA"
            ele: 0
            route: 0
            time: 60
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "patate"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "spinaci"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "cavolfiore"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "pane"
                    dose: 50
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
                       dose: 380
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}      ]
                recipe: "Mondare e tagliare le verdure; quindi coprirle con il brodo vegetale. Una volta pronte, passare il tutto con il frullatore a immersione. Aggiustare di sale e condire con pepe, olio e parmigiano. Servire il passato di verdura con i crostini di pane passati al forno o in padella."
        }


    ListElement {
            name: "Pasta in bianco"
            flag: "PASTA CEREALI"
            ele: 1
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 70
                    unit: "gr"},
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
                       dose: 700
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
         recipe: "Cuocere la pasta in abbondante acqua bollente e salata per circa 8 minuti (controllare sulla confezione, cambia a seconda del tipo di pasta). Scolare e condire con il parmigiano e l’olio extravergine d’oliva."
        }

    ListElement {
            name: "Pasta agli aromi"
            flag: "PASTA CEREALI FORMAGGIO"
            ele: 1
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "porri"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "ricotta"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "timo"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "zafferano"
                    dose:  0.25
                    unit: "bustina"},
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
                       dose: 700
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
         recipe: "Mondare e affettare i porri, stufarli in una pentola antiaderente con il timo e qualche cucchiaio di brodo vegetale; infine ridurli al passaverdura. Quindi mescolarli insieme alla ricotta, un pizzico di sale e lo zafferano sciolto in un po' di acqua tiepida fino a ottenere una salsina cremosa e fluida. Nel frattempo cuocere la pasta, scolarla al dente e condirla con la salsa di porri, il parmigiano e l’olio extravergine d’oliva."
        }

    ListElement {
            name: "Pasta aglio, olio, peperoncino"
            flag: "PASTA CEREALI"
            ele: 0
            route: 1
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "peperoncino"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose:  0.7
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  6
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 700
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Insaporire l'olio con l'aglio e il peperoncino (per i più piccoli è possibile sostituirlo con il prezzemolo). Scolare la pasta al dente quindi farla saltare nell'olio aromatizzato."
        }

    ListElement {
            name: "Pasta ai broccoli"
            flag: "PASTA CEREALI VERDURA"
            ele: 0
            route: 1
            time: 45
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
                    name_ing: "broccoli"
                    dose: 60
                    unit: "gr"},
                ListElement {
                    name_ing: "acciughe"
                    dose: 10
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
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
                       dose: 700
                       unit: "ml"},
                    ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Lavare accuratamente i broccoli, e scottarli nell'acqua dove poi cuocerà la pasta. Insaporire poco olio con l'aglio intero; toglierlo e aggiungere l’acciuga e, non appena sciolta, i broccoli. Aggiungere un po' di acqua di cottura per ammorbidirli. Scolare la pasta e condirla con il sugo di broccoli, il restante olio e il parmigiano. "
        }



    ListElement{
          name: "Pasta ai carciofi"
          flag: "PASTA VERDURA CEREALI"
          route: 1
          time: 45
          ele : 0
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 70
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
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "carciofi"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "acqua"
                dose: 700
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose:  0.4
                unit: "gr"},
            ListElement {
                name_ing: "parmigiano"
                dose: 3
                unit: "gr" }]
            recipe: "Pulire i carciofi dalle spine e dalle foglie dure. Anche le parti più morbide dei gambi possono essere pulite e utilizzate. Soffriggere nell'olio l'aglio e i carciofi tagliati a spicchi. Aggiungere un po' di acqua, coprire con un coperchio e cuocere a fuoco basso per 20 minuti. Nel frattempo cuocere la pasta al dente, scolarla e saltarla in padella con i carciofi. Servire calda con un po' di pepe e parmigiano."
    }




    ListElement{
          name: "Pasta alla norma"
          flag: "PASTA CEREALI "
          ele : 0
          route: 0
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "melanzana"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "ricotta"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "basilico"
                dose: 0.8
                unit: "gr" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 50
                unit: "gr" },
            ListElement {
                     name_ing: "acqua"
                     dose: 700
                     unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}      ]
            recipe: "Cuoci la pasta in abbondante acqua salata. Lavare le melanzane e tagliale a rondelle. Scottarle su una griglia oppure in padella con poco olio. Metterle da parte. Ora cuoci i pelati per un normale sugo al pomodoro. Scolare la pasta e condirla col sugo, aggiungiendo le melanzane, l'olio, le foglie di basilico e grattandoci sopra la ricotta salata."
    }


    ListElement {
            name: "Pasta alla vesuviana"
            flag: "PASTA CEREALI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori pelati"
                    dose:  50
                    unit: "gr"},
                ListElement {
                    name_ing: "olive nere snocciolate"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "capperi"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "origano"
                    dose:  0.35
                    unit: "gr"},
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
                    dose: 700
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Preparare il sugo facendo aromatizzare l'olio con l'aglio, quindi toglierlo e aggiungere i pomodori pelati, i capperi, le olive snocciolate, l’origano e il sale. Separatamente, cuocere la pasta e condirla con il sugo e il parmigiano.VARIANTE: è possibile sostituire i capperi con rosmarino e salvia."
        }

    ListElement{
          name: "Pasta al pesto di rughetta"
          flag: "PASTA CEREALI"
          ele : 1
          route: 0
          time: 60
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "rughetta"
                dose: 25
                unit: "gr" },
            ListElement {
                name_ing: "parmigiano"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "pecorino"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "semi di girasole"
                dose: 2
                unit: "gr" },
            ListElement {
                name_ing: "semi di zucca"
                dose: 2
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                     name_ing: "acqua"
                     dose: 700
                     unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose:  0.4
                unit: "gr"}          ]
            recipe: "Per il pesto: macinare assieme i semi di zucca e girasole con parmigiano, pecorino e foglie di rughetta; aggiungere olio a filo e sale. Cuocere la pasta in abbondante acqua salata. Scolarla e condire con il pesto."
    }


    ListElement{
          name: "Pasta al pomodoro"
          flag: "PASTA CEREALI"
          ele : 0
          route: 1
          time: 45
          mesi : [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 70
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
                name_ing: "cipolla"
                dose: 20
                unit: "gr" },
              ListElement {
                     name_ing: "acqua"
                     dose: 700
                     unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}        ]
            recipe: "Preparare il sugo per prima cosa: mondare la cipolla e sminuzzarla; fare il soffritto con poco olio quindi aggiungere i pelati. Lasciare cuocere per 30 minuti a fuoco basso, aggiungendo acqua se necessario. Cuocere la pasta in abbondante acqua salata. Scolare e condire con il sugo."
    }



    ListElement{
          name: "Pasta al ragù di verdure"
          flag: "PASTA VERDURA CEREALI "
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
                dose: 70
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
                name_ing: "zucchine"
                dose: 30
                unit: "gr" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "sedano"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "carote"
                dose: 15
                unit: "gr" },
            ListElement {
                name_ing: "basilico"
                dose: 0.8
                unit: "gr" },
            ListElement {
                name_ing: "parmigiano"
                dose: 3
                unit: "gr" },
              ListElement {
                     name_ing: "acqua"
                     dose: 700
                     unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
                unit: "gr"}            ]
            recipe: " Pulire e lavare le verdure. Tagliare cipolla,  carote,  zucchine e sedano a cubetti. Soffriggere le verdure in padella e aggiungere il pomodoro. Cuocere per almeno 30 minuti. Cuocere la pasta in abbondante acqua salata. Scolare e condire con il ragù e il basilico fresco e il parmigiano."
    }

    ListElement{
          name: "Pasta con zucchine"
          flag: "PASTA CEREALI VERDURA"
          ele : 0
          route: 1
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "zucchine"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "parmigiano"
                dose: 3
                unit: "gr" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 1
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
              ListElement {
                name_ing: "acqua"
                dose: 700
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.4
            unit: "gr"}          ]
            recipe: "Cuoci la pasta normalmente in abbondante acqua salata. Lava le zucchine senza sbucciarle. Con l'aiuto di una grattugia sminuzza le zucchine in scaglie. A parte in un tegame soffriggi ľ aglio e aggiungi le scaglie di zucchina. Fai saltare in padella finché sono un pò rosolate. Scola la pasta e condisci con le zucchine, l'olio, il prezzemolo tritato e il parmigiano."
    }

    ListElement {
            name: "Pasta e patate"
            flag: "PASTA CEREALI PATATE"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 65
                    unit: "gr"},
                ListElement {
                    name_ing: "patate"
                    dose:  50
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "sedano"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 650
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
         recipe: "Preparare un soffritto con cipolla, carote e sedano e unire dopo poco le patate pulite e tagliate a dadini, aggiungere acqua sufficiente a coprirle di almeno un palmo. A metà cottura aggiungere la pasta. Una volta servita si può condire con parmigiano o pepe nero."
        }


    ListElement {
            name: "Pasta in crema"
            flag: "PASTA CEREALI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "pasta"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "melanzana"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "peperone"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
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
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 700
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}
            ]
            recipe: "Stufare il trito di cipolla e aglio con le melanzane e i peperoni tagliati a pezzetti in una pentola antiaderente. Aggiungere un po' di acqua della pasta per portare a cottura. Lasciate stufare per qualche minuto e successivamente frullare il tutto con il passaverdura. Cuocete la pasta e conditela con la salsa ottenuta, aggiungendo parmigiano, olio extravergine d’oliva e prezzemolo a crudo prima di servire."
        }

    ListElement{
          name: "Pasta ricotta e zucchine"
          flag: "PASTA FORMAGGIO VERDURA"
          ele : 0
          route: 0
          time: 45
          mesi : [
                  ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "pasta"
                dose: 70
                unit: "gr" },
              ListElement {
                name_ing: "ricotta"
                dose: 7
                unit: "gr" },
              ListElement {
                name_ing: "zucchine"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "cipolla"
                dose: 15
                unit: "gr" },
              ListElement {
                name_ing: "acqua"
                dose: 700
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr"}          ]
            recipe: "Cuoci la pasta normalmente in abbondante acqua salata. Lava le zucchine senza sbucciarle. Con l'aiuto di una grattugia sminuzza le zucchine in scaglie. A parte in un tegame soffriggi la cipolla e aggiungi le scaglie di zucchina. Fai saltare in padella finché sono un pò rosolate. Scola la pasta e condisci con le zucchine, l'olio e la ricotta fresca."
    }

    ListElement {
            name: "Passato di verdure"
            flag: "MINESTRA VERDURA"
            ele: 1
            route: 0
            time: 60
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "patate"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "zucchine"
                    dose: 50
                    unit: "gr"},
                ListElement {
                    name_ing: "fagiolini"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "pane"
                    dose: 50
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
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 380
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}     ]
                recipe: "Mondare e tagliare le verdure; quindi coprirle con il brodo vegetale. Una volta pronte, passare il tutto con il frullatore a immersione o al passaverdura. Aggiustare di sale e condire con pepe, olio e parmigiano. Servire il passato di verdura con i crostini di pane passati al forno o in padella."
        }


    ListElement{
          name: "Polenta semplice"
          flag: " CEREALI"
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
                name_ing: "carote"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml" },
            ListElement {
                name_ing: "acqua"
                dose: 410
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.8
                unit: "gr"}]
            recipe: "Cuocere la polenta secondo le indicazioni sulla confezione. (L’acqua, in genere, è 4 volte il peso della farina). Cuocere a fuoco basso per 40-50 minuti."
    }



    ListElement {
            name: "Ravioli di magro"
            flag: "PASTA CEREALI"
            ele: 0
            route: 0
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "ravioli spinaci e ricotta"
                    dose: 130
                    unit: "gr"},
                ListElement {
                    name_ing: "salvia"
                    dose:  0.35
                    unit: "gr"},
                ListElement {
                    name_ing: "parmigiano"
                    dose:  3
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  3
                    unit: "ml"},
                ListElement {
                       name_ing: "acqua"
                       dose: 500
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}           ]
                recipe: "Aromatizzare l'olio scaldandolo con la salvia. Separatamente, cuocere i ravioli in abbondante acqua salata, scolarli e condirli con olio profumato alla salvia e il parmigiano."
        }

    ListElement{
          name: "Riso in bianco"
          flag: "RISO CEREALI"
          ele: 0
          route: 0
          time: 45
          mesi: [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "riso"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "parmigiano"
                dose: 15
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr" },
              ListElement {
                name_ing: "acqua"
                dose: 700
                unit: "ml"},
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" }]
        recipe: "Cuocere il riso in acqua bollente e salata per circa 12 minuti (controllare sulla confezione). Scolare il riso e condire con olio, parmigiano e pepe."
    }


    ListElement{
          name: "Riso e coste"
          flag: "RISO VERDURA CEREALI"
          ele: 0
          route: 0
          time: 45
          mesi: [
                  ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

          ingredients: [
            ListElement {
                name_ing: "riso"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "coste"
                dose: 100
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.1
                unit: "spicchio" },
            ListElement {
                name_ing: "parmigiano"
                dose: 15
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr" },
            ListElement {
                name_ing: "salvia"
                dose: 0.3
                unit: "gr" },
              ListElement {
                name_ing: "acqua"
                dose: 700
                unit: "ml"},
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" }]
        recipe: "Pulire le coste e tagliare i gambi a strisce. Mettere a lessare riso e gambi. Rosolare a parte l'olio con l'aglio e la salvia. Unire le foglie verdi nel soffritto e cuocere. Scolare il riso e i gambi e versare tutto in una terrina con il resto delle coste soffritte. Condire con parmigiano e pepe."
    }


    ListElement {
            name: "Risotto al radicchio"
            flag: "RISO CEREALI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "riso"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "radicchio"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
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
                       dose: 200
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
            recipe: "Lavare e tagliare sottilmente il radicchio e dividerlo in tre parti. Tritare finemente la cipolla e farla appassire in poco olio, aggiungere 1/3 di radicchio e il riso per la tostatura (deve diventare trasparente!). Portare a cottura aggiungendo il brodo vegetale a necessità. A metà cottura aggiungere il secondo 1/3 di radicchio. Quando il riso è pronto, mantecarlo fuori dal fuoco con l’ultimo terzo di radicchio, l’olio e il parmigiano."
        }


    ListElement {
            name: "Risotto ai funghi"
            flag: "RISO CEREALI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "riso"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "funghi freschi"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose: 0.7
                    unit: "gr"},
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
                       dose: 200
                       unit: "ml"},
           ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
            recipe: "Sciacquare i funghi sotto l'acqua corrente e raschiargli via la terra, quindi tagliarli a fettine non troppo sottili. Far soffriggere la cipolla in poco olio insieme ai funghi; quando insaporiti aggiungere il riso per la tostatura (deve diventare trasparente!). Portare a cottura aggiungendo il brodo vegetale a necessità. Quando il riso è pronto, mantecarlo fuori dal fuoco con il prezzemolo, l’olio e il parmigiano."
        }


    ListElement{
          name: "Risotto alla zucca"
          flag: "RISO VERDURA CEREALI"
          ele : 0
          route: 0
          time: 45
          mesi : [
                  ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "riso"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "zucca"
                dose: 200
                unit: "gr" },
            ListElement {
                name_ing: "cipolla"
                dose: 30
                unit: "gr" },
            ListElement {
                name_ing: "emmenthal"
               dose: 15
                unit: "gr" },
            ListElement {
                name_ing: "pan grattato"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "noce moscata"
                dose: 0
                unit: "qb" },
              ListElement {
                name_ing: "acqua"
                dose: 200
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.3
                unit: "gr" }]
        recipe: "Pulire la zucca togliendo buccia e semi. Tagliare la zucca a fettine sottili e passarla in forno fino a cottura. Passare la zucca nello schiacciapatate per ottenere un puré di zucca. Nel frattempo tritare la cipolla e soffriggerla con un po d'olio. Unire il riso e lasciare insaporire. Salare, unire poi la noce moscata, il puré di zucca. Mescolare e unire il brodo di verdure fino a cottura completa. Prima di scodellare unire dell'emmenthal grattugiato. Il risotto può essere servito subito o versato in una profila. Nel secondo caso, cospargere del pane grattugiato sul risotto e gratinare in forno per 16 minuti."
    }

    ListElement {
            name: "Risotto giallo"
            flag: "RISO CEREALI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "riso"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "zafferano"
                    dose: 0.25
                    unit: "bustina"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
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
                    dose: 200
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.4
                    unit: "gr"}           ]
                recipe: "Mondare e tritale la cipolla finemente, quindi soffriggetela in poco olio. Tostare bene il riso (i chicchi devono diventare trasparenti!), poi portarlo a cottura aggiungendo man mano il brodo. A circa metà aggiungere lo zafferano in polvere, se si usano i pistilli (circa 10 a testa) è necessario stemperarli in un po’ di acqua tiepida prima di incorporarli al riso. Mantecare fuori dal fuoco con il parmigiano e il restante olio. "
        }

    ListElement {
            name: "Risotto verde"
            flag: "RISO CEREALI"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "riso"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "bietole"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose: 20
                    unit: "gr"},
                ListElement {
                    name_ing: "brodo vegetale"
                    dose: 0
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
                       dose: 200
                       unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.3
                    unit: "gr"}
            ]
            recipe: "Lessare leggermente le bietole, tagliarle e insieme alla cipolla tritata e a poco olio formare il fondo per il riso. Prima di aggiungere il brodo per la cottura far tostare bene il riso (deve diventare trasparente!). Mantecare fuori dal fuoco con il parmigiano e il restante olio. "
        }

    ListElement{
          name: "Risotto ai cuori di carciofo"
          flag: "RISO VERDURA CEREALI"
          ele : 0
          route: 0
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "riso"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "carciofi"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.1
                unit: "spicchio" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" },
            ListElement {
                name_ing: "limone"
                dose: 0.1
                unit: "unità" },
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
                dose: 200
                unit: "ml"},
            ListElement {
                name_ing: "parmigiano"
                dose: 5
                unit: "gr" }]
        recipe: "Pulire i carciofi togliendo le foglie più dure e le spine. Tenerli a bagno in acqua acidulata con limone per evitare che diventino scuri. Soffriggere con l'olio e l'aglio, i carciofi tagliati a spicchi e il prezzemolo lavato e tritato. Salare e pepare. Quando i carciofi sono appassiti aggiungere il riso: farlo insaporire e aggiungere il brodo vegetale. Mescolare fino a cottura completa. Servire con un po di parmigiano."
    }

    ListElement{
          name: "Risotto con la verza"
          flag: "RISO VERDURA CEREALI"
          ele : 0
          route: 1
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "riso"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "verza"
                dose: 150
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.1
                unit: "spicchio" },
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" },
            ListElement {
                name_ing: "pomodori pelati"
                dose: 70
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
                name_ing: "parmigiano"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "brodo vegetale"
                dose: 0
                unit: "qb" },
              ListElement {
                name_ing: "acqua"
                dose: 200
                unit: "ml"},
            ListElement {
                name_ing: "cipolla"
                dose: 40
                unit: "gr" }]
        recipe: "Pulire la verza e togliere le foglie dure. Lavare e tagliare le foglie grossolanamente. Soffriggere in olio, l'aglio, la cipolla tritata e aggiungere, quando la cipolla è appassita, la verza a pezzi. Salare e cuocere per 10 minuti. Aggiungere i pelati tagliati a pezzi. Cuocere per altri 20 minuti a fiamma bassa. Unire il riso e il brodo. Cuocere e aggiungere brodo fino a cottura completa. Alla fine aggiungere parmigiano e prezzemolo tritato."
    }
}
