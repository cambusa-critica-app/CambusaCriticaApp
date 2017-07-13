import QtQuick 2.1

ListModel {
    id: breakfastModel


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
        name: "Kiwi"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "kiwi"
                dose:  2
                unit: "unità"}
        ]
        recipe: "Si possono sbucciare oppure mangiare con un cucchiaino scavando le due metà!"
    }


    ListElement {
        name: "Mandarini"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "mandarini"
                dose:  2
                unit: "unità"}
        ]
        recipe: "Conviene sbucciare i mandarini prima di mangiarli! Per i semini, fate a gara a chi li sputa più lontano!"
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
        recipe: "Mettere il melone al fresco per almeno un giorno prima di servirlo a merenda. Eliminare i semini dal centro con un cucchiaio, tagliarlo a fette e distribuirlo."
    }


    ListElement {
        name: "Pera"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "pera"
                dose:  1
                unit: "unità"}
        ]
        recipe: "Lavare bene la pera prima di addentarla! Solo i più viziati la vogliono sbucciata…"
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
        name: "Prugne"
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
                name_ing: "prugne"
                dose:  2
                unit: "unità"}
        ]
        recipe: "Lavare bene ogni prugna prima di servirla! Sono ottime per chi ha problemi ad andare in bagno al campo…"
    }

    ListElement {
        name: "Uva"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "uva"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Lavare bene ogni grappolo d’uva prima di servirlo!"
    }



    //unlikely -- not in automatic menù generation

    ListElement {
        name: "Caco"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]

        ingredients: [
            ListElement {
                name_ing: "caco"
                dose:  1
                unit: "unità"}
        ]
        recipe: "Lavare bene ogni caco prima di servirlo. Per evitare di sporcarsi, si può usare un cucchiaino per mangiare il caco."
    }



    ListElement {
        name: "Ciliegie"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "ciliegie"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Lavare bene le ciliegie prima di servirle!"
    }

    ListElement {
        name: "Fichi"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "fichi"
                dose:  2
                unit: "unità"}
        ]
        recipe: "Conviene sbucciare i fichi prima di mangiarli!"
    }
    ListElement {
        name: "Fragole"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "fragole"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Lavare bene le fragole prima di servirle!"
    }
    ListElement {
        name: "Lamponi"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "lamponi"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Lavare bene i lamponi prima di servirli! Per renderli più gustosi aggiungere un po’ di succo di limone. Quelli raccolti da voi nel bosco, sono più buoni!"
    }
    ListElement {
        name: "Mirtilli"
        flag: "FRUTTA"
        ele: 0
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:0}, ListElement{ind: 5; fresco:0}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "mirtilli"
                dose:  150
                unit: "gr"}
        ]
        recipe: "Lavare bene i mirtilli prima di servirli! Per renderli più gustosi aggiungere un po’ di succo di limone. Quelli raccolti da voi nel bosco, sono più buoni!"
    }

    ListElement {
        name: "Nespole"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:0}, ListElement{ind: 2; fresco:0}, ListElement{ind: 3; fresco:0},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:0}, ListElement{ind: 12; fresco:0}]

        ingredients: [
            ListElement {
                name_ing: "nespole"
                dose:  3
                unit: "unità"}
        ]
        recipe: "Lavare bene ogni nespola prima di servirla!"
    }

    ListElement {
        name: "Pompelmo"
        flag: "FRUTTA"
        ele: 0
        route: 1
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:0},
               ListElement{ind: 7; fresco:0}, ListElement{ind: 8; fresco:0}, ListElement{ind: 9; fresco:0},
               ListElement{ind: 10; fresco:0}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "pompelmo"
                dose:  1
                unit: "unità"}
        ]
        recipe: "Conviene sbucciare il pompelmo prima di mangiarlo!"
    }


}
