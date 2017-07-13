import QtQuick 2.1

ListModel {
    id: contorniModel


    ListElement {
            name: "NIENTE"
            flag: "NIENTE"
            ele:  0
            route: 1
            time: 0
            calorie: 0
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
          name: "Broccoli e cipolla saltati"
          flag: "VERDURA"
          ele : 0
          route: 1
          time: 30
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "broccoli"
                dose: 100
                unit: "gr" },
            ListElement {
                name_ing: "cipolla"
                dose: 30
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" }]

            recipe: "Pulire e lavare i broccoli e tagliarli in fioretti piccoli. Tagliare le cipolle in spicchi. Saltare le verdure in padella e poi coprire con il coperchio finché i broccoli si saranno ammorbiditi. Aggiustare di sale."
    }


    ListElement {
            name: "Cavoletti di Bruxelles e mele"
            flag: "VERDURA"
            ele: 1
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "cavolini di Bruxelles"
                    dose: 90
                    unit: "gr"},
                ListElement {
                    name_ing: "mela"
                    dose:  0.5
                    unit: "unità"},
                ListElement {
                    name_ing: "timo"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "aceto"
                    dose:  3
                    unit: "ml"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 100
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Mondare i cavolini di Bruxelles e tagliarli in quattro; sbucciare e fare a quadretti le mele. Insaporire gli ingredienti con un'emulsione di olio, aceto, sale, timo. Infornare a 180° per circa 25 minuti. Dare un giro di pepe prima di servire."
        }

    ListElement {
            name: "Cavoletti di Bruxelles e uvetta"
            flag: "VERDURA"
            ele: 0
            route: 1
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "cavolini di Bruxelles"
                    dose: 130
                    unit: "gr"},
                ListElement {
                    name_ing: "uvetta"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "timo"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "aglio"
                    dose:  0.2
                    unit: "spicchio"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "acqua"
                    dose: 100
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Mondare i cavolini di Bruxelles e tagliarli in quattro; poi saltarli in padella con un filo d’olio. Mettere in ammollo l’uvetta in acqua tiepida per 10 minuti circa quindi strizzarla e aggiungerla ai cavolini di Bruxelles. Insaporire gli ingredienti con timo fresco, pepe e sale."
        }

    ListElement{
          name: "Caponata"
          flag: "VERDURA"
          ele : 0
          route: 1
          time: 60
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
             ListElement {
                name_ing: "melanzana"
                dose: 40
                unit: "gr" },
            ListElement {
                name_ing: "peperone"
                dose: 40
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
                name_ing: "sedano"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "basilico"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "pomodori"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "olive nere snocciolate"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "capperi"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "pinoli"
                dose: 5
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
              ListElement {
                  name_ing: "acqua"
                  dose: 50
                  unit: "ml"},
            ListElement {
                name_ing: "aceto"
                dose: 3
                unit: "ml" }]

            recipe: "Pulire tutte le verdure e lavarle. Tagliarle a cubetti. Prima saltare le cipolle, i peperoni e il sedano in padella per 15-20 minuti con 4 cucchiai d'acqua. Tagliare i pomodori freschi e lasciarli scolare a parte. Aggiungere nella padella i capperi, le olive e i pinoli per pochi minuti, poi trasferire tutto in una insalatiera. Ora mettere nella padella le melanzane e rosolare con un po d'olio per qualche minuto Trasferirle nella insalatiera. Aggiungere i pomodori e un goccio di aceto. Lasciare riposare tutto."
     }

    ListElement {
            name: "Caponata semplice con carote"
            flag: "VERDURA"
            ele: 0
            route: 0
            time: 60
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "melanzana"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "peperone"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose:  20
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
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
            recipe: "Lavare bene e mondare tutte le verdure, quindi tagliarle a dadini. Iniziare la cottura facendo soffriggere le carote e le cipolle (non troppo sottili, altrimenti bruciano!); poi proseguire con ordine: peperoni, melanzane e infine le zucchine. Aggiungere un po' di acqua per evitare che le verdure brucino fino a quando sono ormai cotte."
        }


    ListElement {
            name: "Carciofi in padella"
            flag: "VERDURA"
            ele: 0
            route: 0
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "carciofi"
                    dose: 130
                    unit: "gr"},
                ListElement {
                    name_ing: "limone"
                    dose:  0.3
                    unit: "unità"},
                ListElement {
                    name_ing: "menta"
                    dose:  0.35
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
                    name_ing: "acqua"
                    dose: 200
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Pulire i carciofi, semplicemente togliendo la parte di gambo più dura, le foglie esterne ed eliminando la barba interna. Sciacquarli bene, quindi tagliarli a fettine (più sono sottili più cuociono prima). Nell'attesa lasciarli in una ciotola con acqua fredda e succo di limone per evitare che anneriscano. Insaporire l'olio con uno spicchio d'aglio, che sarà poi eliminato, le foglie di menta fresca e un po' della scorza di limone. Aggiungere i carciofi scolati e lasciare cuocere aggiungendo acqua se necessario. Sono pronti quando sono morbidi al taglio e il sughetto si è ristretto."
        }

    ListElement{
          name: "Carote al prezzemolo"
          flag: "VERDURA"
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
                name_ing: "carote"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" }]

     recipe: "Pulisci e lava le carote e il prezzemolo. Lessa le carote al dente. Taglia le carote a rondelle e saltale in padella insieme all'aglio. Alla fine aggiungi il prezzemolo tritato e aggiusta di sale.  "
    }

    ListElement{
          name: "Carote julienne"
          flag: "VERDURA"
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
                name_ing: "carote"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "limone"
                dose: 0.3
                unit: "unità" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" }]

            recipe: "Pulisci e lava le carote. Con l'aiuto di una grattugia sminuzza le carote in scaglie. Condisci con olio e limone."
     }

    ListElement{
          name: "Cavolfiore in insalata"
          flag: "VERDURA"
          ele : 0
          route: 1
          time: 15
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
             ListElement {
                name_ing: "cavolfiore bianco"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                 name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" }]
            recipe: "Pulire il cavolo e lavarlo. Tagliare i singoli fiori del cavolo e lessare. Controllare la cottura che deve essere al dente. Scolare e condire con olio e pepe e aggiustare di sale.  "
    }

    ListElement{
          name: "Cipolle agli aromi"
          flag: "VERDURA"
          ele: 0
          route: 1
          time: 30
          mesi: [
                  ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "cipolla bianca"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "rosmarino"
                dose: 0.35
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "timo"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "aceto"
                dose: 1
                unit: "ml" }]
            recipe: "Pulire e lavare le cipolle. Tagliarle in spicchi. Saltare in padella con l'olio e cuocere per 10-15 minuti. Amalgamare 1 cucchiaino a persona di timo e rosmarino. Cuocere ancora per un minuto. Spruzzare con un cucchiaio di aceto e servire.  "
    }

    ListElement {
            name: "Coste in padella"
              flag: "VERDURA"
              ele: 0
              route: 0
              time: 30
              mesi: [
                      ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                      ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                      ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                      ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
              ingredients: [
                ListElement {
                    name_ing: "coste"
                    dose: 130
                    unit: "gr" },
                ListElement {
                    name_ing: "aglio"
                    dose: 0.1
                    unit: "spicchio" },
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 5
                    unit: "ml" },
                ListElement {
                    name_ing: "parmigiano"
                    dose: 5
                    unit: "gr" },
                ListElement {
                    name_ing: "pepe"
                    dose: 0
                    unit: "qb" },
                  ListElement {
                      name_ing: "acqua"
                      dose: 350
                      unit: "ml"},
                ListElement {
                    name_ing: "peperoncino"
                    dose: 0
                    unit: "qb" }]
                recipe: "Pulire le coste togliendo le foglie esterne, tagliare la parte finale del gambo e separare tutte le foglie tagliandole in due o tre parti. Lavare bene le coste. Mettere a bollire in una capiente pentola dell’acqua salata e quando ha raggiunto il bollore mettere le coste a cuocere per 10 minuti. Strizzare bene le coste e metterle in un piatto. Prendere una padella e fare soffriggere l'olio con l'aglio e il peperoncino ed aggiungere le coste. Regolare di sale e pepe per insaporirle bene. Prima di portare in tavola grattuggiarci sopra un po' di parmigiano. Servire caldo."
        }

    ListElement{
          name: "Fagiolini alla menta"
          flag: "VERDURA"
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
                name_ing: "fagiolini"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.2
                unit: "spicchio" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
              ListElement {
                  name_ing: "acqua"
                  dose: 200
                  unit: "ml"},
            ListElement {
                name_ing: "menta"
                dose: 0.35
                unit: "gr" }]

            recipe: "Prima lessare i fagiolini. Poi in padella soffriggere l'aglio e saltare i fagiolini. Alla fine aggiungere le foglioline di menta."
    }


    ListElement {
            name: "Fagiolini ripassati"
            flag: "VERDURA"
            ele: 0
            route: 1
            time: 45
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "fagiolini"
                    dose: 100
                    unit: "gr"},
                ListElement {
                    name_ing: "cipolla"
                    dose:  10
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
                    dose: 500
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Sbollentare i fagiolini in acqua salata. A parte soffriggere la cipolla tagliata finemente nell'olio e aggiungervi i pomodori pelati. Scolare i fagiolini a cottura quasi ultimata e poi ripassarli nel sugo."
        }


    ListElement{
          name: "Finocchi al forno"
          flag: "VERDURA"
          ele : 1
          route: 0
          time: 45
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "finocchi"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "pan grattato"
                dose: 8
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                  name_ing: "acqua"
                  dose: 500
                  unit: "ml"},
            ListElement {
                name_ing: "parmigiano"
                dose: 3
                unit: "gr" }]

            recipe: "Pulire e lavare i finocchi. Lessare i finocchi. Tagliare i finocchi in quarti e disporli in una teglia con l'olio. Ricoprire con pane grattugiato e parmigiano. Mettere a rosolare in forno. Aggiustare di sale e pepe."
    }

    ListElement {
            name: "Finocchi all'arancia"
            flag: "VERDURA"
            ele: 0
            route: 1
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "finocchi"
                    dose: 130
                    unit: "gr"},
                ListElement {
                    name_ing: "arancia"
                    dose:  0.5
                    unit: "unità"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lavare bene i finocchi rimuovendo le foglie esterne e le foglie, quindi tagliarli per il lungo finemente. A parte pelare a vivo l'arancia, ovvero eliminare anche la pellicina bianca che riveste gli spicchi, poi farla a pezzettini. Unire arancia e finocchio e condirli con olio, sale e abbondante pepe."
        }

    ListElement {
            name: "Finocchi al pomodoro"
              flag: "VERDURA"
              ele : 0
              route: 0
              time: 30
              mesi : [
                       ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                      ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                      ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                      ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
              ingredients: [
                ListElement {
                    name_ing: "finocchi"
                    dose: 70
                    unit: "gr" },
                ListElement {
                    name_ing: "pomodori pelati"
                    dose: 60
                    unit: "gr" },
                ListElement {
                    name_ing:"latte"
                    dose: 30
                    unit: "ml"},
                ListElement {
                    name_ing:"sale marino"
                    dose:  0.75
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 5
                    unit: "ml"},
                ListElement {
                    name_ing: "prezzemolo"
                    dose: 0.3
                    unit: "gr" },
                ListElement {
                      name_ing: "acqua"
                      dose: 250
                      unit: "ml"},
                ListElement {
                    name_ing: "pepe"
                    dose: 0
                    unit: "qb" }]
                recipe: "Pulire e lavare i finocchi, tagliarli a spicchi. Sistemarli in un tegame, salare e bagnare con un bicchiere d’acqua e cuocerli a fuoco moderato per 10 minuti. In un altro tegame mettere i pomodori già pelati con l’olio e cuocere per 10 minuti a fuoco molto basso. Unire i finocchi al pomodoro, aggiungengo sale e pepe. Fare insaporire tutto insieme per altri 5 minuti, versare il latte e cuocere per altri 5 minuti. Unire metà del prezzemolo tritato e mescolare. Aggiungere il resto del prezzemolo prima di servire."
    }

    ListElement {
            name: "Indivia al forno"
            flag: "VERDURA"
            ele: 1
            route: 0
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                   ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "indivia belga"
                    dose: 130
                    unit: "gr"},
                ListElement {
                    name_ing: "pepe"
                    dose:  0
                    unit: "qb"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  5
                    unit: "ml"}

            ]
            recipe: "Lavare bene i cespi di indivia Belga, eliminare le foglie più esterne e tagliarla in quarti per il lungo. Disporre gli spicchi su una teglia in modo che non siano ben aperti e distanziati tra loro; salare, pepare in abbondanza e fare un giro d'olio. Infornare a 180 gradi per almeno mezz'ora, quando è le foglie di indivia sono ben dorate il vostro contorno è pronto per essere servito. "
        }

    ListElement {
            name: "Insalata di verza"
              flag: "VERDURA INSALATA"
              ele : 0
              route: 1
              time: 30
              mesi : [
                       ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                      ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                      ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:1},
                      ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
              ingredients: [
                ListElement {
                    name_ing: "verza bianca"
                    dose: 80
                    unit: "gr" },
                ListElement {
                    name_ing: "acciughe"
                    dose: 20
                    unit: "gr" },
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 5
                    unit: "ml" },
                ListElement {
                    name_ing: "limone"
                    dose: 0.3
                    unit: "unità" },
                ListElement {
                    name_ing: "pepe"
                    dose: 0
                    unit: "qb" }]
                recipe: "Pulire la verza togliendo le foglie più dure e le nervature più grosse. Dividere la verza in due parti e tagliarla a listarelle sottili. Lavarla bene sotto l’acqua e sgocciolarla. Porre in una zuppiera. Tagliare le acciughe a pezzettini e metterle in una scodella. Aggiungere l’olio d’oliva. Cospargere la verza con sale e pepe. Versare il succo di limone, aggiungere le acciughe con l’olio e servire."
    }

    ListElement {
            name: "Insalata e olive"
            flag: "VERDURA INSALATA"
            ele: 0
            route: 1
            time: 15
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "insalata verde"
                    dose: 80
                    unit: "gr"},
                ListElement {
                    name_ing: "olive"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  10
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lavare bene l'insalata. Quindi condire l'insalata con olio, sale e aggiungere le olive."
        }

    ListElement {
            name: "Insalata mista"
            flag: "VERDURA INSALATA"
            ele: 0
            route: 1
            time: 30
            mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                   ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
            ingredients: [
                ListElement {
                    name_ing: "insalata verde"
                    dose: 30
                    unit: "gr"},
                ListElement {
                    name_ing: "pomodori"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "cetrioli"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose:  30
                    unit: "gr"},
                ListElement {
                    name_ing: "ravanelli"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "limone"
                    dose:  0.3
                    unit: "unità"},
                ListElement {
                    name_ing: "olio EVO"
                    dose:  10
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}
            ]
            recipe: "Lavare bene tutte le verdure e tagliarle. Quindi condire l'insalata con olio, sale e succo di limone."
        }

    ListElement{
          name: "Insalata mista con cetrioli"
          flag: "VERDURA INSALATA"
          ele : 0
          route: 1
          time: 30
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "lattuga"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "olive"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "cetrioli"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "ravanelli"
                dose: 10
                unit: "gr" }]
            recipe: "Pulire e lavare bene tutta la verdura. L'insalata va spezzata con le mani anziché tagliata. Pelare il cetriolo e affettarlo. Affettare i rapanelli. Unire le verdure, condire con olio e olive."
    }


    ListElement{
          name: "Insalata mista con peperoni"
          flag: "VERDURA INSALATA"
          ele: 0
          route: 1
          time: 30
          mesi: [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "lattuga"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "olive"
                dose: 10
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "peperone"
                dose: 60
                unit: "gr" }]

            recipe: "Pulisci e lava bene la lattuga e i peperoni (meglio se gialli). Taglia i peperoni a strisce sottili. Condisci lattuga e peperoni con olio e olive."
    }



    ListElement{
          name: "Lattuga e carote julienne"
          flag: " VERDURA INSALATA"
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
                name_ing: "lattuga"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "carote"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "limone"
                dose: 0.3
                unit: "unità" }]

     recipe: "Lava bene la lattuga e asciugala con uno strofinaccio pulito. Pulisci le carote e lavale. Con l'aiuto di una grattugia sminuzzale in scaglie. Mescola l'insalata e le carote e condisci con olio e limone. "
    }


    ListElement{
          name: "Lattuga e pomodori"
          flag: " VERDURA INSALATA"
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
                name_ing: "lattuga"
                dose: 60
                unit: "gr" },
            ListElement {
                name_ing: "pomodori"
                dose: 70
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 10
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "limone"
                dose: 0.3
                unit: "unità" }]

     recipe: "Lava bene la lattuga e asciugala con uno strofinaccio pulito. Pulisci i pomodori, lavali e tagliali a pezzetti. Mescola l'insalata e i pomodori e condisci con olio e limone. "
    }

    ListElement{
          name: "Peperonata con patate"
          flag: " VERDURA PATATE "
          ele : 0
          route: 1
          time: 60
          mesi : [
                  ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
             ListElement {
                name_ing: "peperone"
                dose: 80
                unit: "gr" },
            ListElement {
                name_ing: "patate"
                dose: 40
                unit: "gr" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                  name_ing: "acqua"
                  dose: 50
                  unit: "ml"},
            ListElement {
                name_ing: "cipolla"
                dose: 40
                unit: "gr" }]

            recipe: "Pulisci i peperoni e le cipolle, e taglia a pezzetti. Pela le patate e taglia a cubetti. Soffriggi prima le cipolle, aggiungi poi i peperoni e le patate. Cuoci finché peperoni e patate si sono ammorbiditi. Aggiusta di sale. "
    }

    ListElement{
          name: "Peperoni trifolati"
          flag: " VERDURA "
          ele : 0
          route: 1
          time: 60
          mesi : [
                   ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
                  ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                  ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
          ingredients: [
            ListElement {
                name_ing: "peperone"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "aglio"
                dose: 0.3
                unit: "spicchio" },
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                  name_ing: "acqua"
                  dose: 50
                  unit: "ml"},
            ListElement {
                name_ing: "prezzemolo"
                dose: 0.7
                unit: "gr" }]

            recipe: "Pulire i peperoni togliendo il picciolo e i semi. Lavare e tagliare a strisce. In una padella rosolare l'aglio nell'olio, aggiungere i peperoni e cuocere fino a che non sono appassiti. Alla fine aggiungere il prezzemolo tritato e aggiustare di sale."
     }

    ListElement {
        name: "Pinzimonio di verdure"
        flag: "VERDURA"
        ele: 0
        route: 1
        time: 30
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "finocchi"
                dose: 50
                unit: "gr"},
            ListElement {
                name_ing: "carote"
                dose:  50
                unit: "gr"},
            ListElement {
                name_ing: "cetrioli"
                dose:  30
                unit: "gr"},
            ListElement {
                name_ing: "limone"
                dose:  0.3
                unit: "unità"},
            ListElement {
                name_ing: "origano"
                dose:  0.35
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose:  10
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"}
        ]
        recipe: "Lavare bene i finocchi rimuovendo le foglie esterne e le foglie, quindi tagliarli per il lungo. Pelare carote e cetrioli e farli a striscioline. Preparare il pinzimonio con olio, sale, succo di limone e origano. Gustare le verdure crude nell'intingolo."
    }
/*
    ListElement {
            name: "Piselli e carote"
            flag: "VERDURA LEGUMI"
            ele: 0
            route: 1
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "piselli in scatola"
                    dose: 70
                    unit: "gr"},
                ListElement {
                    name_ing: "carote"
                    dose: 70
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
                    name_ing: "sale marino"
                    dose:  0.75
                    unit: "gr"}]

            recipe: "Sbucciare le carote con il pela patate. Tagliare le carote a dadini o a piccole fette. Scaldare in una padella antiaderente l’olio, quindi aggiungere i piselli e in seguito le carote e fare saltare la verdura per qualche minuto insieme al prezzemolo. Aggiustare di sale e servire. "
        }*/

ListElement {
        name: "Pomodori in insalata"
        flag: "VERDURA"
        ele: 0
        route: 0
        time: 30
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "pomodori"
                dose: 130
                unit: "gr"},
            ListElement {
                name_ing: "basilico"
                dose:  0.35
                unit: "gr"},
            ListElement {
                name_ing: "origano"
                dose:  0.35
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose:  10
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"}
        ]
        recipe: "Lavare bene i pomodori tagliarli e infine condirli con sale, olio e qualche erba aromatica, si consiglia basilico o origano."
    }

ListElement {
        name: "Radicchio alla mentuccia"
        flag: "VERDURA"
        ele : 0
        route: 1
        time: 30
        mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "radicchio veronese"
                dose: 130
                unit: "gr" },
            ListElement {
                name_ing: "acciughe"
                dose: 20
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "mentuccia"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                  name_ing: "acqua"
                  dose: 100
                  unit: "ml"},
            ListElement {
                name_ing: "aglio"
                dose: 0.1
                unit: "spicchio" }]
            recipe: "Lavare bene l’insalata e togliere le foglie più esterne. Fare cuocere le foglie per 7 minuti in una pentola con poca acqua bollente salata. Scolare e lasciare raffreddare. Tagliare ogni cespo in 4 parti. Tritare i filetti di acciuga. In un tegame soffriggere l’aglio nell’olio, aggiungere i filetti di acciuga e mescolare finchè non saranno sciolti. Disporre nel tegame l’insalata, cospargere di sale e pepe e lasciare insaporire sul fuoco per 5 minuti. Servire aggiungendo la mentuccia tritata."
    }

ListElement {
        name: "Ratatouille di verdure"
        flag: "VERDURA"
        ele: 0
        route: 0
        time: 60
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "melanzana"
                dose: 30
                unit: "gr"},
            ListElement {
                name_ing: "peperone"
                dose:  30
                unit: "gr"},
            ListElement {
                name_ing: "zucchine"
                dose:  30
                unit: "gr"},
            ListElement {
                name_ing: "carote"
                dose:  20
                unit: "gr"},
            ListElement {
                name_ing: "cipolla"
                dose:  20
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
        recipe: "Lavare bene e mondare tutte le verdure, quindi tagliarle a dadini. Iniziare la cottura facendo soffriggere le carote e le cipolle (non troppo sottili, altrimenti bruciano!); poi proseguire con ordine: peperoni, melanzane e infine le zucchine. Aggiungere un po' di acqua per evitare che le verdure brucino, e quando sono ormai cotte, aggiungere i pomodori pelati (non è un sugo, servono solo per dare un po' di colore, quindi non esagerare!)."
    }


ListElement {
        name: "Spaghetti di carote"
        flag: "VERDURA"
        ele: 0
        route: 1
        time: 30
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "carote"
                dose: 130
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
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"}]

        recipe: "Mondare le carote con il pela patate. Con lo stesso strumento creare delle chips molto sottili e lunghe di carote, in mancanza del pela patate usare il coltello ma procedere nella stessa maniera per ottenere delle fettine le più sottili possibile. Scaldare in una padella antiaderente l’olio, quindi aggiungere le carote e farle saltare per qualche minuto insieme al prezzemolo. Aggiustare di sale e servire. "
    }

ListElement {
        name: "Spinaci saltati"
        flag: "VERDURA"
        ele: 0
        route: 0
        time: 45
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "spinaci"
                dose: 130
                unit: "gr"},
            ListElement {
                name_ing: "pinoli"
                dose:  5
                unit: "gr"},
            ListElement {
                name_ing: "uvetta"
                dose:  5
                unit: "gr"},
            ListElement {
                name_ing: "parmigiano"
                dose:  3
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
                name_ing: "acqua"
                dose: 50
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"}
        ]
        recipe: "Far insaporire l'olio con un spicchio d'aglio, quindi eliminarlo. Quando è ben caldo aggiungere gli spinaci freschi (se usate quelli surgelati, prima di saltarli in padella dovete scongelarli in un po' di acqua) e saltarli. A parte tostare i pinoli e ammollare l'uvetta in acqua tiepida. Quando gli spinaci sono ormai appassiti aggiungervi l'uvetta ben strizzata e i pinoli. Servire ben caldi con una spolverata di parmigiano."
    }

    ListElement {
        name: "Tortino di porri e patate"
          flag: "VERDURA PATATE"
          ele : 1
          route: 0
          time: 60
          mesi : [
                   ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                  ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
                  ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
                  ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
          ingredients: [
            ListElement {
                name_ing: "porri"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "patate"
                dose: 50
                unit: "gr" },
            ListElement {
                name_ing: "cipolla"
                dose: 30
                unit: "gr" },
            ListElement {
                name_ing: "sale marino"
                dose:  0.75
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 5
                unit: "ml" },
            ListElement {
                name_ing: "brodo vegetale"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "pepe"
                dose: 0
                unit: "qb" },
            ListElement {
                name_ing: "timo"
                dose: 0
                unit: "qb" }]
            recipe: "Accendere il forno a 180°C e attendere che raggiunga la temperatura. Pulire i porri e tagliarli a pezzettini. Pulire anche le patate e tagliarle a rondelle. In una padella soffriggere la cipolla (tagliata a pezzettini) nell’olio. Aggiungere nella padella anche i porri e cuocerli per qualche minuto (lasciarli comunque al dente perché poi la loro cottura proseguirà nel forno). Mettere i porri sul fondo di una terrina, aggiungere le patate tagliate a rondelle (sottili). Dopo aver salato e pepato, aggiungere il brodo, qualche fogliolina di timo e infornare. Cuocere per un'ora, fin quando non si saranno ben gratinati sulla superficie, e servire ben caldo."
    }

    ListElement{
      name: "Verdure alla griglia"
      flag: "VERDURA"
      ele : 0
      time: 45
      route: 1
      mesi : [
               ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
              ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
              ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
              ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]
      ingredients: [
        ListElement {
            name_ing: "melanzana"
            dose: 40
            unit: "gr" },
        ListElement {
            name_ing: "peperone"
            dose: 40
            unit: "gr" },
        ListElement {
            name_ing: "olio EVO"
            dose: 5
            unit: "ml" },
        ListElement {
            name_ing: "zucchine"
            dose: 50
            unit: "gr" },
        ListElement {
            name_ing: "aglio"
            dose: 0.1
            unit: "spicchio" },
        ListElement {
            name_ing: "basilico"
            dose: 0.35
            unit: "gr" }]
        recipe: "Pulire e lavare la verdura. Tagliare le melanzane a fette, le zucchine e i peperoni per la lunghezza. Rosolare su una griglia. Condire in un piatto con l'aglio, l'olio e il basilico. Aggiustare di sale."
}


ListElement {
        name: "Zucca al forno"
        flag: "VERDURA"
        ele: 1
        route: 0
        time: 45
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "zucca"
                dose: 130
                unit: "gr"},
            ListElement {
                name_ing: "pepe"
                dose:  0
                unit: "qb"},
            ListElement {
                name_ing: "olio EVO"
                dose:  5
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose:  075
                unit: "gr"}
        ]
        recipe: "Lavare bene la zucca, togliere le estremità e aprirla in due. Eliminare i semi e tagliarla a fettine seguendo la sua forma naturale a U. Disporle su una teglia in modo che non si accavallino troppo, salare, pepare e fare un giro d'olio. Infornare a 180 gradi per almeno mezz'ora, quando è asciutta e ben dorata è pronta per essere servita. "
    }

ListElement {
        name: "Zucchine alla menta"
        flag: "VERDURA"
        ele: 0
        route: 1
        time: 45
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]
        ingredients: [
            ListElement {
                name_ing: "zucchine"
                dose: 130
                unit: "gr"},
            ListElement {
                name_ing: "aglio"
                dose:  0.3
                unit: "spicchio"},
            ListElement {
                name_ing: "menta"
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
        recipe: "Scaldare l'olio con uno spicchio d’aglio intero, poi toglierlo e aggiungere le zucchine precedentemente tagliate a rondelle. Se dovessero cominciare ad attaccarsi alla pentola aggiungere un po' d'acqua. Quando sono quasi pronte, unire le foglioline di menta ben lavate e asciugate. Fare insaporire e aggiustare di sale. "
    }

}

