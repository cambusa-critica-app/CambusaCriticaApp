import QtQuick 2.1

ListModel {
    id: paneModel


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
            name: "Pane bianco"
            flag: "PANE CEREALI"
            ele: 0
            route: 1
            time: 0
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pane bianco"
                    dose: 50
                    unit: "gr"}
            ]
            recipe: ""
        }

    ListElement {
            name: "Pane integrale"
            flag: "PANE CEREALI"
            ele: 0
            route: 1
            time: 0
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "pane integrale"
                    dose: 60
                    unit: "gr"}
            ]
            recipe: ""
        }

    ListElement {
            name: "Pane bianco fatto in casa"
            flag: "PANE CEREALI"
            ele: 1
            route: 0
            time: 0
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "farina tipo 0"
                    dose: 31
                    unit: "gr"},
                ListElement {
                    name_ing: "acqua"
                    dose: 21.5
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose: 0.65
                    unit: "gr"},
                ListElement {
                    name_ing: "lievito"
                    dose: 0.45
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 1.25
                    unit: "ml"}
            ]
            recipe: "Idratare il lievito in un bicchiere con poca acqua. Aggiungere i lieviti idratati e la restante acqua alla farina lentamente e lasciando che questa venga assorbita dall'impasto. Aggiungere l'olio alla massa e una volta assorbito l'olio aggiungere il sale. Lasciare lievitare per almeno due ore. Formare la pagnotta, fare un profondo taglio sulla faccia superiore, e cuocere in forno pre-riscaldato a 200°C per circa mezz'ora."
        }

    ListElement {
            name: "Pane integrale fatto in casa"
            flag: "PANE CEREALI"
            ele: 1
            route: 0
            time: 0
            mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
                   ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
                   ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
                   ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
            ingredients: [
                ListElement {
                    name_ing: "farina tipo 2"
                    dose: 31
                    unit: "gr"},
                ListElement {
                    name_ing: "acqua"
                    dose: 25
                    unit: "ml"},
                ListElement {
                    name_ing: "sale marino"
                    dose: 0.65
                    unit: "gr"},
                ListElement {
                    name_ing: "lievito"
                    dose: 0.45
                    unit: "gr"},
                ListElement {
                    name_ing: "olio EVO"
                    dose: 1.25
                    unit: "ml"}
            ]
            recipe: "Idratare il lievito in un bicchiere con poca acqua. Aggiungere i lieviti idratati e la restante acqua alla farina lentamente e lasciando che questa venga assorbita dall'impasto. Aggiungere l'olio alla massa e una volta assorbito l'olio aggiungere il sale. Lasciare lievitare per almeno due ore. Formare la pagnotta in teglia e cuocere in forno a circa 200°C per mezz'ora. (NOTA: per il pane integrale rispetto al pane bianco, viene utilizzata più acqua e i tempi di lievitazione e cottura sono generalmente più lunghi!"
        }


    ListElement {
        name: "Focaccia rustica"
        flag: "PANE CEREALI"
        ele: 1
        route: 0
        time: 0
        mesi: [ListElement{ind: 1; fresco:1}, ListElement{ind: 2; fresco:1}, ListElement{ind: 3; fresco:1},
               ListElement{ind: 4; fresco:1}, ListElement{ind: 5; fresco:1}, ListElement{ind: 6; fresco:1},
               ListElement{ind: 7; fresco:1}, ListElement{ind: 8; fresco:1}, ListElement{ind: 9; fresco:1},
               ListElement{ind: 10; fresco:1}, ListElement{ind: 11; fresco:1}, ListElement{ind: 12; fresco:1}]
        ingredients: [
            ListElement {
                name_ing: "farina tipo 0"
                dose: 31
                unit: "gr"},
            ListElement {
                name_ing: "acqua"
                dose: 21.5
                unit: "ml"},
            ListElement {
                name_ing: "sale marino"
                dose: 0.65
                unit: "gr"},
            ListElement {
                name_ing: "lievito"
                dose: 0.45
                unit: "gr"},
            ListElement {
                name_ing: "olio EVO"
                dose: 3
                unit: "ml"}
        ]
        recipe: "Idratare il lievito in un bicchiere con poca acqua. Aggiungere i lieviti idratati e la restante acqua alla farina lentamente e lasciando che questa venga assorbita dall'impasto. Aggiungere l'olio alla massa e una volta assorbito l'olio aggiungere il sale. Lasciare lievitare per almeno due ore. Stendere la focaccia in teglia o terrina, fare dei piccoli buchi sulla sulla faccia superiore usando una forchetta o stuzzicadenti, e cuocere in forno pre-riscaldato a 200°C per circa mezz'ora."
    }
}
