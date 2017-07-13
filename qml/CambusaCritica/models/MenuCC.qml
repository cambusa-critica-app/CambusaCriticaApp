import QtQuick 2.1

ListModel {

    id: menuCC

    ListElement
    {
        nome: "Campo Estivo"
        durata: 8
        branca: "LC"
        autore: "Cambusa Critica App"
        stagione: "Giugno-Agosto"
        mese_min: 6
        mese_max: 7
        descrizione: "Menù da campo estivo per branca LC, realizzato dagli esperti in alimentazione del team Cambusa Critica App. Utilizza frutta e verdura di stagione e pane integrale una volta al giorno. Richiede la presenza di una cucina attrezzata con elettricità e frigo. Propone una buona varietà di colazioni, merende e contorni."
        activity: 1 //"Campo scout"
        ele: 0      //sì
        fresco: 0   //sì
        pane: 0     //sì
        ricette:
        [
                ListElement
                {
                    br:  "NIENTE"
                    pr1: "Pranzo al sacco da casa"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "NIENTE"
                    prp: "NIENTE"
                    sn:  "Anguria"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Insalata di riso"
                    ce3: "Spinaci saltati"
                    cef: "Mela"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Yogurt e muesli"
                    pr1: "Pasta alla vesuviana"
                    pr2: "Pollo alla brace"
                    prc: "NIENTE"
                    pr3: "Insalata mista con cetrioli"
                    prf: "Pesca"
                    prp: "Pane bianco"
                    sn:  "Succo e pop-corn"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Riso e lenticchie"
                    ce3: "Carote al prezzemolo"
                    cef: "Albicocche"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Pasta al ragù"
                    pr3: "Ratatouille di verdure"
                    prf: "Pesca"
                    prp: "Pane bianco"
                    sn:  "Melone"
                    ce1: "Risotto giallo"
                    ce2: "Lenticchie al pomodoro"
                    cec: "NIENTE"
                    ce3: "Fagiolini ripassati"
                    cef: "Mela"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Gnocchi al pomodoro"
                    pr2: "Hamburger vegetariano"
                    prc: "NIENTE"
                    pr3: "Insalata e olive"
                    prf: "Melone"
                    prp: "Pane bianco"
                    sn:  "Macedonia estiva"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e ceci"
                    ce3: "Spaghetti di carote"
                    cef: "Mela"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Spremuta con pane e marmellata"
                    pr1: "Pasta aglio, olio, peperoncino"
                    pr2: "Falafel"
                    prc: "NIENTE"
                    pr3: "Pomodori in insalata"
                    prf: "Pera"
                    prp: "Pane integrale"
                    sn:  "Anguria"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Riso gratinato"
                    ce3: "Caponata"
                    cef: "Pera"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Pasta al pesto, fagiolini e patate"
                    pr3: "Peperoni trifolati"
                    prf: "Mela"
                    prp: "Pane bianco"
                    sn:  "Tè freddo, pane e cioccolato"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pizza Margherita"
                    ce3: "Zucchine alla menta"
                    cef: "Pesca"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Yogurt e muesli"
                    pr1: "Pasta al pomodoro"
                    pr2: "Scaloppine al prezzemolo"
                    prc: "NIENTE"
                    pr3: "Insalata mista"
                    prf: "Albicocche"
                    prp: "Pane bianco"
                    sn:  "Macedonia estiva"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e piselli"
                    ce3: "Verdure alla griglia"
                    cef: "Mela"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Insalata di farro"
                    pr3: "Insalata mista"
                    prf: "Pesca"
                    prp: "Pane integrale"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "NIENTE"
                    cep: "NIENTE"
                }

        ]
    }

    ListElement
    {
        nome: "Campo Estivo"
        durata: 14
        branca: "EG"
        autore: "Cambusa Critica App"
        stagione: "Giugno-Agosto"
        mese_min: 6
        mese_max: 7
        descrizione: "Menù da campo estivo per branca EG, realizzato dagli esperti in alimentazione del team Cambusa Critica App. Utilizza frutta e verdura di stagione e pane integrale una volta al giorno. Richiede la presenza di una cucina attrezzata con elettricità e frigo. Propone una buona varietà di colazioni, merende e contorni."
        activity: 1 //"Campo scout"
        ele: 1      //no
        fresco: 0   //sì
        pane: 0     //sì
        ricette:
        [
            ListElement
            {
                br:  "NIENTE"
                pr1: "Pranzo al sacco da casa"
                pr2: "NIENTE"
                prc: "NIENTE"
                pr3: "NIENTE"
                prf: "Pesca"
                prp: "NIENTE"
                sn:  "NIENTE"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Pasta e piselli"
                ce3: "Carote al prezzemolo"
                cef: "Mela"
                cep: "Pane integrale"
            },
            ListElement
            {
                br:  "Spremuta con pane e marmellata"
                pr1: "Risotto giallo"
                pr2: "Mozzarella"
                prc: "NIENTE"
                pr3: "Lattuga e pomodori"
                prf: "Pesca"
                prp: "Pane bianco"
                sn:  "NIENTE"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Pasta zucchine e cannellini"
                ce3: "Spinaci saltati"
                cef: "Albicocche"
                cep: "Pane integrale"
            },
            ListElement
            {
                br:  "Latte/tè con biscotti"
                pr1: "Pasta in crema"
                pr2: "Baccalà con ceci"
                prc: "NIENTE"
                pr3: "Insalata mista"
                prf: "Prugne"
                prp: "Pane bianco"
                sn:  "NIENTE"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Gnocchetti sardi, pomodoro e ricotta"
                ce3: "Caponata"
                cef: "Pesca"
                cep: "Pane integrale"
            },
            ListElement
            {
                br:  "Spremuta con pane e marmellata"
                pr1: "NIENTE"
                pr2: "NIENTE"
                prc: "Insalata di riso"
                pr3: "Spaghetti di carote"
                prf: "Albicocche"
                prp: "Pane bianco"
                sn:  "NIENTE"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Polenta e spezzatino"
                ce3: "Peperoni trifolati"
                cef: "Mela"
                cep: "Pane integrale"
            },
            ListElement
            {
                br:  "Succo di frutta con biscotti"
                pr1: "Pranzo Trapper"
                pr2: "NIENTE"
                prc: "NIENTE"
                pr3: "NIENTE"
                prf: "Pera"
                prp: "NIENTE"
                sn:  "Yogurt e frutti di bosco"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Pasta al pesto, fagiolini e patate"
                ce3: "Ratatouille di verdure"
                cef: "Pera"
                cep: "Pane integrale"
            },
            ListElement
            {
                br:  "Latte/tè con pane e marmellata"
                pr1: "Pasta alla norma"
                pr2: "Frittata di ricotta"
                prc: "NIENTE"
                pr3: "Insalata mista con cetrioli"
                prf: "Mela"
                prp: "Pane bianco"
                sn:  "Tè freddo, pane e cioccolato"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Cous cous con verdure"
                ce3: "Carote al prezzemolo"
                cef: "Anguria"
                cep: "Pane integrale"
            },
            ListElement
            {
                br:  "Yogurt/tè e biscotti"
                pr1: "Gnocchi al pomodoro"
                pr2: "Hamburger vegetariano"
                prc: "NIENTE"
                pr3: "Carote julienne"
                prf: "Pesca"
                prp: "Pane bianco"
                sn:  "Succo e pop-corn"
                ce1: "NIENTE"
                ce2: "NIENTE"
                cec: "Risotto crescenza e carote"
                ce3: "Zucchine alla menta"
                cef: "Mela"
                cep: "Pane integrale"
            },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "Pasta al ragù di verdure"
                    pr2: "Arrosto di tacchino"
                    prc: "NIENTE"
                    pr3: "Lattuga e carote julienne"
                    prf: "Anguria"
                    prp: "Pane bianco"
                    sn:  "Spremuta e tarallini"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e ceci"
                    ce3: "Caponata semplice con carote"
                    cef: "Pera"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pasta aglio, olio, peperoncino"
                    pr2: "Pollo caratterizzato"
                    prc: "NIENTE"
                    pr3: "Insalata mista con cetrioli"
                    prf: "Anguria"
                    prp: "Pane integrale"
                    sn:  "Melone"
                    ce1: "Risotto verde"
                    ce2: "Polpettine di fave"
                    cec: "NIENTE"
                    ce3: "Verdure alla griglia"
                    cef: "Albicocche"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Succo di frutta con biscotti"
                    pr1: "Pasta alla vesuviana"
                    pr2: "Fave in umido"
                    prc: "NIENTE"
                    pr3: "Insalata e olive"
                    prf: "Melone"
                    prp: "Pane bianco"
                    sn:  "Macedonia estiva"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Riso e lenticchie"
                    ce3: "Peperoni trifolati"
                    cef: "Pera"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Insalata di farro"
                    pr3: "Fagiolini alla menta"
                    prf: "Anguria"
                    prp: "Pane bianco"
                    sn:  "Fresella condita"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e ceci"
                    ce3: "Pomodori in insalata"
                    cef: "Anguria"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pasta al ragù di verdure"
                    pr2: "Straccetti di pollo agli aromi"
                    prc: "NIENTE"
                    pr3: "Insalata mista"
                    prf: "Prugne"
                    prp: "Pane bianco"
                    sn:  "Anguria"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e fagioli"
                    ce3: "Caponata semplice con carote"
                    cef: "Anguria"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pasta ricotta e zucchine"
                    pr2: "Merluzzo alla pizzaiola"
                    prc: "NIENTE"
                    pr3: "Insalata mista con cetrioli"
                    prf: "Albicocche"
                    prp: "Pane bianco"
                    sn:  "Yogurt e frutta secca"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta al ragù bianco"
                    ce3: "Cipolle agli aromi"
                    cef: "Anguria"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Yogurt e biscotti"
                    pr1: "Pranzo al sacco"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Albicocche"
                    prp: "Pane bianco"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "NIENTE"
                    cep: "NIENTE"
                }

        ]
    }

    ListElement
    {
        nome: "Campo Invernale"
        durata: 4
        branca: "LC"
        autore: "Cambusa Critica App"
        stagione: "Dicembre-Gennaio"
        mese_min: 12
        mese_max: 13
        descrizione: "Menù per breve campo invernale per branca LC, realizzato dagli esperti in alimentazione del team Cambusa Critica App. Utilizza frutta e verdura di stagione e pane integrale una volta al giorno. Richiede la presenza di una cucina attrezzata con elettricità."
        activity: 1 //"Campo scout"
        ele: 0      //sì
        fresco: 0   //sì
        pane: 0     //sì
        ricette:
        [
                ListElement
                {
                    br:  "NIENTE"
                    pr1: "Pranzo al sacco da casa"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "NIENTE"
                    prp: "NIENTE"
                    sn:  "Cioccolata calda"
                    ce1: "Pasta e patate"
                    ce2: "Hamburger"
                    cec: "NIENTE"
                    ce3: "Coste in padella"
                    cef: "Mandarini"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "Pasta ai broccoli"
                    pr2: "Lenticchie al pomodoro"
                    prc: "NIENTE"
                    pr3: "Lattuga e carote julienne"
                    prf: "Kiwi"
                    prp: "Pane bianco"
                    sn:  "Castagnaccio"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e ceci"
                    ce3: "Finocchi al forno"
                    cef: "Clementine"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pasta al pomodoro"
                    pr2: "Arrosto di tacchino"
                    prc: "NIENTE"
                    pr3: "Carote al prezzemolo"
                    prf: "Mela"
                    prp: "Pane bianco"
                    sn:  "Tè con torta"
                    ce1: "Minestrone invernale"
                    ce2: "Cotoletta di sogliola"
                    cec: "NIENTE"
                    ce3: "Broccoli e cipolla saltati"
                    cef: "Kiwi"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "Risottto al radicchio"
                    pr2: "Frittata di ricotta"
                    prc: "NIENTE"
                    pr3: "Indivia al forno"
                    prf: "Arancia"
                    prp: "Pane bianco"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "NIENTE"
                    cep: "NIENTE"
                }

        ]
    }

    ListElement
    {
        nome: "Campo Invernale"
        durata: 4
        branca: "EG"
        autore: "Cambusa Critica App"
        stagione: "Dicembre-Gennaio"
        mese_min: 12
        mese_max: 13
        descrizione: "Menù per breve campo invernale per branca EG, realizzato dagli esperti in alimentazione del team Cambusa Critica App. Utilizza frutta e verdura di stagione e pane integrale una volta al giorno. Richiede la presenza di una cucina attrezzata con elettricità."
        activity: 1 //"Campo scout"
        ele: 0      //sì
        fresco: 0   //sì
        pane: 0     //sì
        ricette:
        [
                ListElement
                {
                    br:  "NIENTE"
                    pr1: "Pranzo al sacco da casa"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Mela"
                    prp: "NIENTE"
                    sn:  "Cioccolata calda"
                    ce1: "Pasta agli aromi"
                    ce2: "Frittata di ricotta"
                    cec: "NIENTE"
                    ce3: "Carote al prezzemolo"
                    cef: "Kiwi"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Polenta e spezzatino"
                    pr3: "Coste in padella"
                    prf: "Clementine"
                    prp: "Pane bianco"
                    sn:  "Caldarroste"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Riso e lenticchie"
                    ce3: "Broccoli e cipolla saltati"
                    cef: "Mela"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "Pasta al pomodoro"
                    pr2: "Merluzzo alla pizzaiola"
                    prc: "NIENTE"
                    pr3: "Spaghetti di carote"
                    prf: "Arancia"
                    prp: "Pane bianco"
                    sn:  "Spremuta e tarallini"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta e ceci"
                    ce3: "Cavolfiore in insalata"
                    cef: "Mela"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Pasta e piselli"
                    pr3: "Insalata di verza"
                    prf: "Clementine"
                    prp: "NIENTE"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "NIENTE"
                    cep: "NIENTE"
                }

        ]
    }


    ListElement
    {
        nome: "Campo Estivo Cologno M.Se"
        durata: 8
        branca: "LC"        
        autore: "Cologno Monzese I"
        stagione: "Giugno-Settembre"
        mese_min: 6
        mese_max: 9
        descrizione: "Menù del campo estivo per branca LC, realizzato dal gruppo Cologno Monzese I e vincitore del primo premio al Concorso Cambusa Critica App 2016."
        activity: 1 //"Campo scout"
        ele: 0      //sì
        fresco: 0   //sì
        pane: 0     //sì
        ricette:
        [
                ListElement
                {
                    br:  "NIENTE"
                    pr1: "Pranzo al sacco da casa"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "NIENTE"
                    prp: "NIENTE"
                    sn:  "Anguria"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta ai 3 formaggi"
                    ce3: "Lattuga e carote julienne"
                    cef: "Pesca"
                    cep: "Pane bianco fatto in casa"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pasta ricotta e zucchine"
                    pr2: "Arrosto di tacchino"
                    prc: "NIENTE"
                    pr3: "Lattuga e pomodori"
                    prf: "Pesca"
                    prp: "Pane bianco fatto in casa"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Cous cous con verdure"
                    ce3: "Caponata semplice con carote"
                    cef: "Pera"
                    cep: "Pane integrale fatto in casa"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pasta alla norma"
                    pr2: "Falafel"
                    prc: "NIENTE"
                    pr3: "Caponata semplice con carote"
                    prf: "NIENTE"
                    prp: "Pane bianco fatto in casa"
                    sn:  "Macedonia estiva"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Risi e Bisi"
                    ce3: "Fagiolini ripassati"
                    cef: "Pera"
                    cep: "Pane integrale fatto in casa"
                },
                ListElement
                {
                    br:  "Yogurt/té e biscotti"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Gnocchetti sardi, pomodoro e ricotta"
                    pr3: "Insalata e olive"
                    prf: "Melone"
                    prp: "Pane bianco fatto in casa"
                    sn:  "Tè freddo, pane e cioccolato"
                    ce1: "NIENTE"
                    ce2: "Frittata di zucchine"
                    cec: "Minestra di legumi"
                    ce3: "NIENTE"
                    cef: "Pesca"
                    cep: "Focaccia rustica"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pranzo al sacco"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Mela"
                    prp: "NIENTE"
                    sn:  "Anguria"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta al ragù bianco"
                    ce3: "Lattuga e pomodori"
                    cef: "Prugne"
                    cep: "Pane bianco fatto in casa"
                },
                ListElement
                {
                    br:  "Yogurt/té e biscotti"
                    pr1: "Risotto giallo"
                    pr2: "Scaloppine al prezzemolo"
                    prc: "NIENTE"
                    pr3: "Spaghetti di carote"
                    prf: "Melone"
                    prp: "Pane bianco fatto in casa"
                    sn:  "Succo e pop-corn"
                    ce1: "Passato di verdure"
                    ce2: "Mozzarella"
                    cec: "NIENTE"
                    ce3: "Lattuga e carote julienne"
                    cef: "Mela"
                    cep: "NIENTE"
                },
                ListElement
                {
                    br:  "Spremuta con pane e marmellata"
                    pr1: "Pasta alla vesuviana"
                    pr2: "Hamburger"
                    prc: "NIENTE"
                    pr3: "Peperoni trifolati"
                    prf: "Anguria"
                    prp: "Pane bianco fatto in casa"
                    sn:  "Spremuta e tarallini"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pizza alle verdure"
                    ce3: "NIENTE"
                    cef: "Melone"
                    cep: "NIENTE"
                },
                ListElement
                {
                    br:  "Spremuta con pane e marmellata"
                    pr1: "Pranzo al sacco"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Mela"
                    prp: "NIENTE"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "NIENTE"
                    cep: "NIENTE"
                }
        ]

    }


    ListElement
    {

        nome: "Campo Estivo Segrate-S.Bovio"
        durata: 7
        branca: "LC"
        autore: "Segrate San Bovio I"
        stagione: "Agosto"
        mese_min: 8
        mese_max: 8
        descrizione: "Menù del campo estivo per branca LC, realizzato dal gruppo Segrate-S.Bovio I e vincitore del secondo premio al Concorso Cambusa Critica App 2016."
        activity: 1 //"Campo scout"
        ele: 0      //sì
        fresco: 0   //sì
        pane: 0     //sì
        ricette:
        [
                ListElement
                {
                    br:  "NIENTE"
                    pr1: "Pranzo al sacco da casa"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Melone"
                    prp: "NIENTE"
                    sn:  "Tè freddo, pane e cioccolato"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta al pesto fagiolini e patate"
                    ce3: "Insalata e olive"
                    cef: "Pera"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Risotto al radicchio"
                    pr2: "Frittata di zucchine"
                    prc: "NIENTE"
                    pr3: "Ratatouille di verdure"
                    prf: "Anguria"
                    prp: "NIENTE"
                    sn:  "Yogurt e frutti di bosco"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pasta al ragù"
                    ce3: "Carote julienne"
                    cef: "Albicocche"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pranzo Trapper"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "Fagiolini ripassati"
                    prf: "Prugne"
                    prp: "Pane bianco fatto in casa"
                    sn:  "Melone"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Pizza Margherita"
                    ce3: "Pomodori in insalata"
                    cef: "Prugne"
                    cep: "NIENTE"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "Pranzo al sacco"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Pera"
                    prp: "Focaccia rustica"
                    sn:  "NIENTE"
                    ce1: "Risotto alla zucca"
                    ce2: "Merluzzo alla pizzaiola"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "Pesca"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Yogurt e muesli"
                    pr1: "Pasta alla norma"
                    pr2: "Falafel"
                    prc: "NIENTE"
                    pr3: "Carote julienne"
                    prf: "Pesca"
                    prp: "NIENTE"
                    sn:  "Fresella condita"
                    ce1: "Gnocchi al pomodoro"
                    ce2: "Pollo alla brace"
                    cec: "NIENTE"
                    ce3: "Pomodori in insalata"
                    cef: "Pesca"
                    cep: "NIENTE"
                },
                ListElement
                {
                    br:  "Latte/tè con biscotti"
                    pr1: "NIENTE"
                    pr2: "NIENTE"
                    prc: "Insalata di farro"
                    pr3: "Pomodori in insalata"
                    prf: "Albicocche"
                    prp: "Pane bianco"
                    sn:  "Succo e pop-corn"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "Lasagne di ragù con carni bianche"
                    ce3: "Fagiolini alla menta"
                    cef: "Pesca"
                    cep: "Pane integrale"
                },
                ListElement
                {
                    br:  "Latte/tè con pane e marmellata"
                    pr1: "Pranzo al sacco da casa"
                    pr2: "NIENTE"
                    prc: "NIENTE"
                    pr3: "NIENTE"
                    prf: "Mela"
                    prp: "NIENTE"
                    sn:  "NIENTE"
                    ce1: "NIENTE"
                    ce2: "NIENTE"
                    cec: "NIENTE"
                    ce3: "NIENTE"
                    cef: "NIENTE"
                    cep: "NIENTE"
                }
        ]
    }
/*
    ListElement
    {
        nome: "Campo Estivo Cologno M.Se"
        durata: 14
        branca: "EG"
        autore: "Cologno Monzese I"
        descrizione: "Menù del campo estivo per branca EG, realizzato dal gruppo Cologno Monzese I e vincitore del primo premio al Concorso Cambusa Critica App 2016."

        ricette:
        [
                ListElement
                {
                    giorno: 1
                    br: ""
                }
        ]
    }*/
}
