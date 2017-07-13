import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0
import "../functions/CalcMenu.js" as CalcMenu
import "../functions/CalcList.js" as CalcList
import ".."



Item {
    id: single_scores

    property var labels: []
    property var scores: [] // punteggio
    property var max: []    // fondoscala


    Component.onCompleted: console.log("Creating Evaluation Criteria...")

    function setScores()
    {

        labels[0] = "Poca Frutta";
        scores[0] = CalcMenu.getScoreFrutta();
        max[0] = 10;

        labels[1] = "Poca Verdura";
        scores[1] = CalcMenu.getScoreVerdura();
        max[1] = 10;

        labels[2] = "Pochi Legumi";
        scores[2] = CalcMenu.getScoreLegumi();
        max[2] = 10;

        labels[3] = "Poco Pesce";
        scores[3] = CalcMenu.getScorePesce();
        max[3] = 5;

        labels[4] = "Troppa Carne rossa";
        scores[4] = CalcMenu.getScoreCROSSA();
        max[4] = 10;

        labels[5] = "Troppa Carne bianca";
        scores[5] = CalcMenu.getScoreCBIANCA();
        max[5] = 5;

        labels[6] = "Troppi Dessert";
        scores[6] = CalcMenu.getScoreDessert();
        max[6] = 10;

        labels[7] = "Troppo Uovo";
        scores[7] = CalcMenu.getScoreUovo();
        max[7] = 10;

        labels[8] = "Troppo Formaggio";
        scores[8] = CalcMenu.getScoreFormaggio();
        max[8] = 5;

        labels[9] = "Troppo Affettato";
        scores[9] = CalcMenu.getScoreAffettato();
        max[9] = 10;

        labels[10] = "Troppe Patate";
        scores[10] = CalcMenu.getScorePatate();
        max[10] = 5;

        labels[11] = "Pochi Cereali";
        scores[11] = CalcMenu.getScoreCereali();
        max[11] = 10;
    }
}
