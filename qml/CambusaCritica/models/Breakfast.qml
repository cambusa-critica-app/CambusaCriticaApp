import QtQuick 2.1

ListModel {
    id: breakfastModel


    ListElement {
            name: "NIENTE"
            flag: "NIENTE"
            ele: 0
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
            name: "Latte/tè con biscotti"
            flag: "BISCOTTI"
            ele: 0
            route: 1
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "latte"
                    dose: 125
                    unit: "ml"},
                ListElement {
                    name_ing: "tè in bustine"
                    dose:  0.5
                    unit: "bustine"},
                ListElement {
                    name_ing: "miele"
                    dose:  5
                    unit: "gr"},
                ListElement {
                    name_ing: "biscotti"
                    dose:  35
                    unit: "gr"},
                ListElement {
                    name_ing: "acqua"
                    dose: 150
                    unit: "ml"},
                ListElement {
                    name_ing: "cacao amaro"
                    dose:  5
                    unit: "gr"}
            ]
            recipe: "Scaldare il latte e aggiungervi il cacao quando ha raggiunto la temperatura desiderata. Fare bollire l'acqua, immergere la bustina di tè e lasciarla in infusione un paio di minuti; quindi aggiungervi un cucchiaino di miele e mescolare bene. I biscotti sono più buoni se li intingono! "
        }

    ListElement {
            name: "Latte/tè con pane e marmellata"
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
                    name_ing: "latte"
                    dose: 125
                    unit: "ml"},
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
                    name_ing: "cacao amaro"
                    dose:  3
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
            name: "Spremuta con pane e marmellata"
            flag: "SPREMUTA MARMELLATA"
            ele: 0
            route: 0
            time: 30
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "spremuta d'arancia"
                    dose: 150
                    unit: "ml"},
                ListElement {
                    name_ing: "pane"
                    dose:  50
                    unit: "gr"},
           ListElement {
                    name_ing: "marmellata"
                    dose:  20
                    unit: "gr"}
            ]
            recipe: "Spremere un'arancia a testa. Tagliare il pane a fette e spalmarle con la marmellata, calcolare circa due fette a testa."
        }

    ListElement {
            name: "Succo di frutta con biscotti"
            flag: "BISCOTTI"
            ele: 0
            time: 15
            route: 1
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "succo di frutta 100%"
                    dose: 150
                    unit: "ml"},
                ListElement {
                    name_ing: "biscotti"
                    dose:  35
                    unit: "gr"}
            ]
            recipe: "Assicurarsi che il succo sia di 100% frutta e senza conservanti o zuccheri aggiunti!"
    }

    ListElement {
            name: "Yogurt e biscotti"
            flag: "YOGURT BISCOTTI"
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
                    name_ing: "biscotti"
                    dose:  35
                    unit: "gr"},
                ListElement {
                    name_ing: "miele"
                    dose:  5
                    unit: "gr"}
            ]
            recipe: "Versare lo yogurt in una tazza, aggiungervi un cucchiaino di miele e mescolare bene. Spezzettare i biscotti e mangiarli insieme allo yogurt."
        }

    ListElement {
            name: "Yogurt/tè e biscotti"
            flag: "YOGURT BISCOTTI"
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
                    name_ing: "biscotti"
                    dose:  35
                    unit: "gr"},
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
                    unit: "gr"}
            ]
            recipe: "Versare lo yogurt in una tazza, aggiungervi un cucchiaino di miele e mescolare bene. Spezzettare i biscotti e mangiarli insieme allo yogurt. Fare bollire l'acqua, immergere la bustina di tè e lasciarla in infusione un paio di minuti; quindi aggiungervi un cucchiaino di miele e mescolare bene."
        }

    ListElement {
            name: "Yogurt e muesli"
            flag: "YOGURT"
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
                    name_ing: "fiocchi d'avena"
                    dose:  100
                    unit: "gr"},                
                ListElement {
                    name_ing: "uvetta"
                    dose:  25
                    unit: "gr"},
                ListElement {
                    name_ing: "noci"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "nocciole"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "mandorle"
                    dose:  10
                    unit: "gr"},
                ListElement {
                    name_ing: "cioccolato fondente"
                    dose:  15
                    unit: "gr"},
                ListElement {
                    name_ing: "miele"
                    dose:  5
                    unit: "gr"}
            ]
            recipe: "Tagliare grossolanamente la frutta secca e il cioccolato, unire tutti gli ingredienti e mescolare. Per un sapore più gustoso e croccante, fiocchi d'avena, noci, nocciole e mandorle possono essere tostati in padella mescolando di continuo, o in forno a 160°C per 15 minuti. Tagliare grossolanamente la frutta secca e il cioccolato, unire tutti gli ingredienti e mescolare. Il muesli si accompagna allo yogurt o al latte: 160 ml con 45-50g di muesli. Versare lo yogurt in una tazza, aggiungervi un cucchiaino di miele e mescolare bene."
        }

}
