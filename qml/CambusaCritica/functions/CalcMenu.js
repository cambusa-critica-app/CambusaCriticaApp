.pragma library

//number of REAL recipes for each model (excluding nothing and special meals, panino al sacco)
var NBREAK = 7;
var NCONT = 35;
var NFRUTTA = 21;
var NFULL = 29;
var NPRIMI = 35;
var NSECONDI = 34;
var NSNACK = 24;
var NPANE = 6;

var modello_type;

// define variables
var branca;
var n_male;
var n_female;
var n_celiaci;
var n_veggies;

var n_days;
var n_meals;
var day_index;
var activity_type;
var ele_type;
var fresco;
var pane;
var voglio_merenda;

var total_coeff;
var n_mese_in;
var n_mese_fin;
var n_giorno_in;
var n_giorno_fin;


var menuID = 0;
var currentMenuName;
var new_list = true;
var saving_status = true;
var consulta_option = false;

//opzioni di stampa
var print_menu = 1, print_totale = 1, print_giornaliera = 0;
function printMenu(id)          {    print_menu = id;}
function printTotale(id)        {    print_totale = id;}
function printGiornaliera(id)   {    print_giornaliera = id;}

function getPrintMenu ()        {return print_menu;}
function getPrintTotale ()      {return print_totale;}
function getPrintGiornaliera () {return print_giornaliera;}
function getConsulta ()         {return consulta_option;}

//variabili menù: id pasti
var br_id = [], pr1_id = [], pr2_id = [], pr3_id = [], prc_id = [], mer_id = [],  ce_p_id = [], ce_s_id = [], ce1_id = [], ce2_id = [], fr1_id = [], fr2_id = [], pn1_id = [], pn2_id = [];
// ricette vietate
var veto_br_id = [],  veto_pr_id = [],  veto_se_id = [],  veto_cont_id = [],  veto_comp_id = [],  veto_mer_id = [],  veto_fr1_id = [],  veto_pn1_id = [];
var restr_br_id = [], restr_pr_id = [], restr_se_id = [], restr_cont_id = [], restr_comp_id = [], restr_mer_id = [], restr_fr1_id = [], restr_pn1_id = [];

var score_frutta= 0, score_carnerossa= 0,   score_legumi= 0,    score_carnebianca= 0,   score_verdura= 0,   score_affettato = 0,
    score_patate= 0, score_cereali= 0,      score_pesce= 0,     score_dessert= 0,       score_uovo= 0,      score_formaggio= 0;

function getScoreFrutta() {return score_frutta}; function getScoreCROSSA() {return score_carnerossa}; function getScoreCBIANCA() {return score_carnebianca};
function getScoreLegumi() {return score_legumi}; function getScoreVerdura() {return score_verdura}; function getScoreAffettato() {return score_affettato};
function getScorePatate() {return score_patate}; function getScoreDessert() {return score_dessert}; function getScoreUovo() {return score_uovo};
function getScoreCereali() {return score_cereali}; function getScorePesce() {return score_pesce}; function getScoreFormaggio() {return score_formaggio};

function setScoreFrutta(input) { score_frutta = input}; function setScoreCROSSA(input) { score_carnerossa = input}; function setScoreCBIANCA(input) { score_carnebianca = input};
function setScoreLegumi(input) { score_legumi = input}; function setScoreVerdura(input){ score_verdura = input}; function setScoreAffettato(input) { score_affettato = input};
function setScorePatate(input) { score_patate = input}; function setScoreDessert(input){ score_dessert = input}; function setScoreUovo(input) { score_uovo = input};
function setScoreCereali(input){ score_cereali = input}; function setScorePesce(input) { score_pesce = input}; function setScoreFormaggio(input) { score_formaggio = input};

//get variables
function getBranca()    {return branca;}
function getNMALE()     {return n_male;}
function getNFEMALE()   {return n_female;}
function getNCEL()      {return n_celiaci;}
function getNVEG()      {return n_veggies;}
function getTotDays()   {return n_days;}
function getMeseIn()    {return n_mese_in;}
function getMeseFin()   {return n_mese_fin;}
function getDayIn()     {return n_giorno_in;}
function getDayFin()    {return n_giorno_fin;}
function getNewList ()  {return new_list;}
function getSavingStatus() {return saving_status;}

function getNMEALS()     {return n_meals;}
function getActivity()   {return activity_type;}
function getEle()        {return ele_type;}
function getDayClicked() {return day_index;}
function getFresco()     {return fresco;}
function getPane()       {return pane;}
function getVoglioMerenda()     {return voglio_merenda;}
function getMenuID()     {return menuID;}
function getModelloType(){return modello_type;}
function getCurrentMenuName()        {return currentMenuName;}
function getShortNDAYS (){return n_days;}

//set variables
function setBranca(i_branca)    { branca = i_branca;}
function setFresco(i_fresco)    { fresco = i_fresco;}
function setPane(i_pane)        { pane = i_pane;}
function setNMALE(i_nmale)      { n_male = i_nmale;}
function setNFEMALE(i_nfemale)  { n_female = i_nfemale;}
function setNCEL(i_ncel)        { n_celiaci = i_ncel;}
function setNVEG(i_nveg)        { n_veggies = i_nveg;}

function setNDAYS(i_ndays)      { n_days = i_ndays;}
function setActivity(i_activity){ activity_type = i_activity;}
function setEle(i_ele)          { ele_type = i_ele;}
function setVoglioMerenda(i_merenda)          { voglio_merenda = i_merenda;}

function setDayClicked(i_index){day_index = i_index;}

function setMenuID(i_menu)     {menuID = i_menu;}
function setModelloType(i_menu){modello_type = i_menu;}
function setNewList (i_bool)   {new_list = i_bool;}
function setSavingStatus (i_bool) {saving_status = i_bool;}
function setConsulta (i_bool) {consulta_option = i_bool;}

function setMeseIn(i_m_in)    {n_mese_in =  i_m_in;}
function setMeseFin(i_m_fin)  {n_mese_fin = i_m_fin;}
function setDayIn(i_d_in)     {n_giorno_in = i_d_in;}
function setDayFin(i_d_fin)   {n_giorno_fin = i_d_fin;}
function setShortNDAYS (i_ndays) {n_days = i_ndays;}
function setCurrentMenuName (menu_name) {currentMenuName = menu_name;}

var nameMenus = [];
function setNome(i, nome) {nameMenus[i] = nome;}
function getNome(i) {return nameMenus[i];}



var salvaOimporta;

function setSalvaImporta(user_choice) {salvaOimporta = user_choice;}
function getSalvaImporta()            {return salvaOimporta;}


var firstStart = true;
function setOnStartUp (i_bool)
{
    console.log("setting on start up variable ...");
    firstStart = i_bool;
}

function onStartUp ()       {return firstStart;}



//other functions implementation
function checkArray (array, number)
{
    var isNumberInArray = false;

    for (var i = 0; i<array.length; i++)
    {
        //console.log ("array[" + i +"] = " + array[i] + " - number veto = " + number)
        if (array[i] === number) isNumberInArray = true;
    }
    return isNumberInArray;
}

var struct_menu = [];

function setStruttura(i, condition)
{
    console.log ("condition[" + i + "] = " + condition);
    struct_menu[i] = condition;
}

function getStruttura(i)
{
    return struct_menu[i];
//    return true;
}

// calcola il numero di giorni del campo in modo sensato
function getNDAYS(i_g_in, i_g_fin, i_m_in, i_m_fin)     {

    var giorni_mese_in;
    if (i_m_in === 0) giorni_mese_in = 31;
    if (i_m_in === 1) giorni_mese_in = 29;
    if (i_m_in === 2) giorni_mese_in = 31;
    if (i_m_in === 3) giorni_mese_in = 30;
    if (i_m_in === 4) giorni_mese_in = 31;
    if (i_m_in === 5) giorni_mese_in = 30;
    if (i_m_in === 6) giorni_mese_in = 31;
    if (i_m_in === 7) giorni_mese_in = 31;
    if (i_m_in === 8) giorni_mese_in = 30;
    if (i_m_in === 9) giorni_mese_in = 31;
    if (i_m_in === 10) giorni_mese_in = 30;
    if (i_m_in === 11) giorni_mese_in = 31;

    n_giorno_in = i_g_in;
    n_giorno_fin = i_g_fin;

    var giorni;

    if (i_m_in === i_m_fin) giorni = (i_g_fin - i_g_in) ;           // giorni del mese corrente
    else if (i_m_in !== i_m_fin) giorni = (i_g_fin + 1) + (giorni_mese_in - i_g_in -1);   //giorni del mese precedente
    n_days = giorni+1;
    n_mese_in = i_m_in;
    n_mese_fin = i_m_fin;

    return giorni+1;
}

function returnNomeMese(i_mese)
{
    var nome_mese;
    if      (i_mese === 0) nome_mese = " Gennaio";
    else if (i_mese === 1) nome_mese = " Febbraio";
    else if (i_mese === 2) nome_mese = " Marzo";
    else if (i_mese === 3) nome_mese = " Aprile";
    else if (i_mese === 4) nome_mese = " Maggio";
    else if (i_mese === 5) nome_mese = " Giugno";
    else if (i_mese === 6) nome_mese = " Luglio";
    else if (i_mese === 7) nome_mese = " Agosto";
    else if (i_mese === 8) nome_mese = " Settembre";
    else if (i_mese === 9) nome_mese = " Ottobre";
    else if (i_mese === 10) nome_mese = " Novembre";
    else if (i_mese === 11) nome_mese = " Dicembre";

    return nome_mese;
}

function getGiornoEsatto (i_day)
{
    var giorni_mese_in;

    if      (n_mese_in === 0) giorni_mese_in = 31;
    else if (n_mese_in === 1) giorni_mese_in = 29;
    else if (n_mese_in === 2) giorni_mese_in = 31;
    else if (n_mese_in === 3) giorni_mese_in = 30;
    else if (n_mese_in === 4) giorni_mese_in = 31;
    else if (n_mese_in === 5) giorni_mese_in = 30;
    else if (n_mese_in === 6) giorni_mese_in = 31;
    else if (n_mese_in === 7) giorni_mese_in = 31;
    else if (n_mese_in === 8) giorni_mese_in = 30;
    else if (n_mese_in === 9) giorni_mese_in = 31;
    else if (n_mese_in === 10) giorni_mese_in = 30;
    else if (n_mese_in === 11) giorni_mese_in = 31;

    var giorno_esatto;
    var mese_esatto;
    var data_esatta;


    if ((n_giorno_in+ i_day) <= giorni_mese_in)
    {
        giorno_esatto = n_giorno_in + i_day;
        data_esatta = giorno_esatto + returnNomeMese(n_mese_in);
        //console.log("?" + i_day)
    }
    else {
        giorno_esatto = (n_giorno_in + i_day) - giorni_mese_in ;
        data_esatta = giorno_esatto + returnNomeMese(n_mese_in+1);
    }
    return data_esatta;
}


function calcDayFin()
{
    var day_fin;
    var day_in  = n_giorno_in;
    var i_m_in = n_mese_in;

    var giorni_mese_in;
    if (i_m_in === 0) giorni_mese_in = 31;
    if (i_m_in === 1) giorni_mese_in = 29;
    if (i_m_in === 2) giorni_mese_in = 31;
    if (i_m_in === 3) giorni_mese_in = 30;
    if (i_m_in === 4) giorni_mese_in = 31;
    if (i_m_in === 5) giorni_mese_in = 30;
    if (i_m_in === 6) giorni_mese_in = 31;
    if (i_m_in === 7) giorni_mese_in = 31;
    if (i_m_in === 8) giorni_mese_in = 30;
    if (i_m_in === 9) giorni_mese_in = 31;
    if (i_m_in === 10) giorni_mese_in = 30;
    if (i_m_in === 11) giorni_mese_in = 31;


    if ((day_in + n_days) <= giorni_mese_in)
    {
        day_fin = day_in + n_days;
    }
    else
    {
        day_fin = (day_in + n_days) - giorni_mese_in ;
    }
    return day_fin;
}


function calcMeseFin()
{
    var mese_fin;
    var day_in  = n_giorno_in;
    var i_m_in = n_mese_in;

    var giorni_mese_in;
    if (i_m_in === 0) giorni_mese_in = 31;
    if (i_m_in === 1) giorni_mese_in = 29;
    if (i_m_in === 2) giorni_mese_in = 31;
    if (i_m_in === 3) giorni_mese_in = 30;
    if (i_m_in === 4) giorni_mese_in = 31;
    if (i_m_in === 5) giorni_mese_in = 30;
    if (i_m_in === 6) giorni_mese_in = 31;
    if (i_m_in === 7) giorni_mese_in = 31;
    if (i_m_in === 8) giorni_mese_in = 30;
    if (i_m_in === 9) giorni_mese_in = 31;
    if (i_m_in === 10) giorni_mese_in = 30;
    if (i_m_in === 11) giorni_mese_in = 31;


    if ((day_in + n_days) <= giorni_mese_in)
    {
        mese_fin = i_m_in;
    }
    else
    {
        mese_fin = i_m_in+1;
    }
    return mese_fin;
}

// qui posso mettere le regole di veto su alcuni indici
// OPPURE l'obbligo di scelta di un menu per giorno specifico

function calcBreakfast(day_index)
{
    if (day_index === 0) return 0;
    else
    {

        var id_break;
        var random_n =  Math.floor((Math.random() * NBREAK));
        while (random_n === 0)
        {
        //console.log("veto had effect on snack");
            random_n = Math.floor((Math.random() * NBREAK));
        }
        id_break = random_n;
        return id_break;
    }
}

function calcSnacks(day_index)
{
    var limit = 0;
    if (getVoglioMerenda() === 0)
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * NSNACK));
        while ((checkArray(veto_mer_id, random_n) || random_n === 0) && limit < 20)
        {
            //console.log("veto had effect on snack");
            random_n = Math.floor((Math.random() * NSNACK));
            limit++;
        }
        id_break = random_n;
        return id_break;

        //if (day_index < NSNACK)      return day_index;
        //else return day_index - NSNACK;
    }
    else return 0;
}

function calcFullMeal(day_index)
{    
    var limit = 0;
    if (day_index === n_days-1) return 0;
    else
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * NFULL));

        while ((checkArray(veto_comp_id, random_n) || random_n < 2) && limit < 20)
        {
           // console.log("veto had effect on fullMeal");
            random_n = Math.floor((Math.random() * NFULL));
            limit++;
        }
        id_break = random_n;
        return id_break;
    }
}

function calcContornoPranzo(day_index)
{
    var limit = 0;
    if (day_index === 0 // primo giorno niente pranzo
            || (day_index === 4 && branca === "eg") // quinto giorno, trapper ma solo per EG
            )
    {
        console.log ("day_index = " + day_index);
        return 0;
    }
    else
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * NCONT));
        while ((checkArray(veto_cont_id, random_n)|| random_n === 0) && limit < 20)
        {
            console.log("veto had effect on contorno pranzo " + random_n);
            random_n = Math.floor((Math.random() * NCONT));
            limit++;
        }
        id_break = random_n;
        return id_break;
    }
}

function calcContornoCena(day_index)
{
    var limit = 0;
    if (day_index === n_days-1) return 0;
    else
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * NCONT));
        while ((checkArray(veto_cont_id, random_n)|| random_n === 0) && limit < 20)
        {
            console.log("veto had effect on contorno cena " + random_n);
            random_n = Math.floor((Math.random() * NCONT));
            limit++;
        }
        id_break = random_n;
        return id_break;
    }

}

function calcPrimo(day_index) {

    var limit = 0;
    if (day_index === 0) return 1;                          // pranzo al sacco da casa per primo giorno
    else if (day_index === 4 && branca === "eg") return 3;  // trapper per soli eg
    else
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * NPRIMI));
        while ((checkArray(veto_pr_id, random_n)  || random_n < 4) && limit < 20)
        {
            //console.log("veto had effect on primi");
            random_n = Math.floor((Math.random() * NPRIMI));
            limit++;
        }
        id_break = random_n;
        return id_break;
    }
}

function calcSecondo(day_index) {

    var limit = 0;
    if (day_index === 0
            || (day_index === 4 && branca === "eg") // trapper per soli eg
            ) return 0;
    else
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * NSECONDI));
        while ((checkArray(veto_se_id, random_n)  || random_n === 0) && limit < 20)
        {
            //console.log("veto had effect on secondi");
            random_n = Math.floor((Math.random() * NSECONDI));
            limit++;
        }
        id_break = random_n;
        return id_break;
    }
}

function calcFruttaPranzo(day_index) {
    var limit = 0;
    var id_break;

    var random_n =  Math.floor((Math.random() * (NFRUTTA-8)));
    while ((checkArray(veto_fr1_id, random_n) || random_n === 0) && limit < 20)
    {
        //console.log("veto had effect on frutta");
        random_n = Math.floor((Math.random() * (NFRUTTA-8)));
        limit++;
    }
    id_break = random_n;
    return id_break;
}

function calcPanePranzo(day_index) {

    if (day_index === 0 // primo giorno niente pranzo
            || (day_index === 4 && branca === "eg") // quinto giorno, trapper ma solo per EG
            )
    {
        console.log ("day_index = " + day_index);
        return 0;
    }
    else return 1;
}

function calcFruttaCena(day_index) {
    var limit = 0;
    if (day_index === n_days-1) return 0;
    else
    {
        var id_break;
        var random_n =  Math.floor((Math.random() * (NFRUTTA-8)));
        while ((checkArray(veto_fr1_id, random_n) || random_n === 0) && limit < 20)
        {
            //console.log("veto had effect on frutta");
            random_n = Math.floor((Math.random() * (NFRUTTA-8)));
            limit++;
        }
        id_break = random_n;
        return id_break;
    }
}

function calcPaneCena(day_index) {
    var id_break;
    //metti pane integrale solo se richiesto
    if (day_index === n_days-1) return 0;
    else{

        if (pane === 0) id_break = 2;
        else            id_break = 1;
        return id_break;
    }
}



// calcola la dose totale per un dato ingrediente accettando in input le variabili
function calcTotalDoseIngredient (base_dose, base_unit, base_ing, option) {

    var coeff_activity;
    var coeff_branca;
    var coeff_numeri;

    //consider activity_type
    if      (activity_type === 0)                         coeff_activity = 1;
    else if (activity_type === 1 || activity_type === 2)  coeff_activity = 1.1;

    //consider age of people and gender
    if (branca === "lc")  //M age 10,  kg 40 - F age 10, kg 38
    {
        coeff_branca = 1;
        coeff_numeri = (n_male*1.1 + n_female*1.);
    }
    else if (branca === "eg")     //M age 14,  kg 60 - F age 14, kg 54
    {
        coeff_branca = 1.19;
        coeff_numeri = (n_male*1.2 + n_female*1.);
    }
    else if (branca === "rs") // male 72 kg, female 65 kg, age 18-29 years
    {
        coeff_branca = 1.22;
        coeff_numeri = (n_male*1.2 + n_female*1.);
    }
    else if (branca === "coca") //30-59 years
    {
        //console.log ("branca coca!!")
        coeff_branca = 1.15;
        coeff_numeri = (n_male*1.2 + n_female*1.);
    }
    else {coeff_branca = 1; coeff_numeri = n_male + n_female;}

    var t = (n_male+n_female);

    // non aggiustare dose se si tratta di ingredienti unitari
    if (base_unit === "unità" || base_unit === "bustina" || base_unit === "spicchio") { coeff_numeri = t; coeff_branca = 1; coeff_activity = 1;}

    // riduci la dose di olio per grandi numeri: esponenziale tale che per 50 persone serve 1/e =~ 30% dell'olio iniziale
    var e_nep = 2.71828;
    if (base_ing === "olio EVO" ) {coeff_numeri = t* Math.pow(e_nep,-(t-1)/150); coeff_branca = 1; coeff_activity = 1;}
    if (base_ing === "aglio" )    {coeff_numeri = t* Math.pow(e_nep,-(t-1)/30);  coeff_branca = 1; coeff_activity = 1;}

    var total_dose = base_dose * coeff_activity  * coeff_numeri * coeff_branca;

    // se lista ricetta
    if (option === 0)
    {
        if (total_dose > 100 && total_dose < 1000 )//&& base_unit !== "unità" && base_unit !== "bustina")
            return Math.floor(total_dose/10)*10 + " " + base_unit;

        else if (total_dose < 100 )//&& base_unit !== "unità" && base_unit !== "bustina")
            return Math.floor(total_dose) + " " + base_unit;

        else if (total_dose> 1000 && base_unit === "gr") return Math.floor(total_dose/1000*10)/10 + " kg";
        else if (total_dose> 1000 && base_unit === "ml") return Math.floor(total_dose/1000*10)/10 + " lt";

        else return total_dose + " " + base_unit ;
    }

    // se lista spesa
    else if (option === 1)
    {
        if (total_dose > 100 && total_dose < 1000 )//&& base_unit !== "unità" && base_unit !== "bustina")
            return Math.floor(total_dose/10)*10;
        else if (total_dose < 100 )//&& base_unit !== "unità" && base_unit !== "bustina")
            return Math.floor(total_dose);
        else
            return total_dose;
    }
        //return Math.floor(total_dose*10)/10;
}



//*********
// MENU

// salvo l'indice globale della ricetta selezionata --> related to the MEALS
function setBreakfast       (i_day, id) {br_id[i_day] = id;}
function setPranzoPrimo     (i_day, id) {pr1_id[i_day] = id;}
function setPranzoSecondo   (i_day, id) {pr2_id[i_day] = id;}
function setPranzoCompleto  (i_day, id) {prc_id[i_day] = id;}
function setPranzoContorno  (i_day, id) {pr3_id[i_day] = id;}
function setPranzoFrutta    (i_day, id) {fr1_id[i_day] = id;}
function setPranzoPane      (i_day, id) {pn1_id[i_day] = id;}
function setMerenda         (i_day, id) {mer_id[i_day] = id;}
function setCenaPrimo       (i_day, id) {ce_p_id[i_day] = id;}
function setCenaSecondo     (i_day, id) {ce_s_id[i_day] = id;}
function setCenaCompleto    (i_day, id) {ce1_id[i_day] = id;}
function setCenaContorno    (i_day, id) {ce2_id[i_day] = id;}
function setCenaFrutta      (i_day, id) {fr2_id[i_day] = id;}
function setCenaPane        (i_day, id) {pn2_id[i_day] = id;}

function returnBreakfast           (i_day) {return br_id[i_day];}
function returnPranzoPrimo         (i_day) {return pr1_id[i_day];}
function returnPranzoSecondo       (i_day) {return pr2_id[i_day];}
function returnPranzoCompleto      (i_day) {return prc_id[i_day];}
function returnPranzoContorno      (i_day) {return pr3_id[i_day];}
function returnPranzoFrutta        (i_day) {return fr1_id[i_day];}
function returnPranzoPane          (i_day) {return pn1_id[i_day];}
function returnMerenda             (i_day) {return mer_id[i_day];}
function returnCenaPrimo           (i_day) {return ce_p_id[i_day];}
function returnCenaSecondo         (i_day) {return ce_s_id[i_day];}
function returnCenaCompleto        (i_day) {return ce1_id[i_day];}
function returnCenaContorno        (i_day) {return ce2_id[i_day];}
function returnCenaFrutta          (i_day) {return fr2_id[i_day];}
function returnCenaPane            (i_day) {return pn2_id[i_day];}

function getMeal(i_day, i_type)
{
    if (i_type === "col") return br_id[i_day];
    else if (i_type === "pr1") return pr1_id[i_day];
    else if (i_type === "pr2") return pr2_id[i_day];
    else if (i_type === "pr3") return pr3_id[i_day];
    else if (i_type === "prc") return prc_id[i_day];
    else if (i_type === "mer") return mer_id[i_day];
    else if (i_type === "ce_p") return ce_p_id[i_day];
    else if (i_type === "ce_s") return ce_s_id[i_day];
    else if (i_type === "ce1") return ce1_id[i_day];
    else if (i_type === "ce2") return ce2_id[i_day];
    else if (i_type === "fr1") return fr1_id[i_day];
    else if (i_type === "fr2") return fr2_id[i_day];
    else if (i_type === "pn1") return pn1_id[i_day];
    else if (i_type === "pn2") return pn2_id[i_day];
}



// salvo l'elenco delle ricette proibite --> related to the MODELS
function addVetoBreakfast       (j,id) {veto_br_id[j]   = id;}
function addVetoPrimo           (j,id) {veto_pr_id[j]   = id;}
function addVetoSecondo         (j,id) {veto_se_id[j]   = id;}
function addVetoContorno        (j,id) {veto_cont_id[j] = id;}
function addVetoCompleto        (j,id) {veto_comp_id[j] = id;}
function addVetoFrutta          (j,id) {veto_fr1_id[j]  = id;}
function addVetoPane            (j,id) {veto_pn1_id[j]  = id;}
function addVetoMerenda         (j,id) {veto_mer_id[j]  = id;}

function returnVetoBreakfast       () {return veto_br_id;}
function returnVetoPrimo           () {return veto_pr_id;}
function returnVetoSecondo         () {return veto_se_id;}
function returnVetoContorno        () {return veto_cont_id;}
function returnVetoCompleto        () {return veto_comp_id;}
function returnVetoFrutta          () {return veto_fr1_id;}
function returnVetoPane            () {return veto_pn1_id;}
function returnVetoMerenda         () {return veto_mer_id;}


// salvo gli indici dei pasti nelle liste con veto (da usare in personalizza.qml)
function setRestrBreakfast       (j, i_restr_ind) {restr_br_id[j] = i_restr_ind;}
function setRestrPrimo           (j, i_restr_ind) {restr_pr_id[j] = i_restr_ind;}
function setRestrSecondo         (j, i_restr_ind) {restr_se_id[j] = i_restr_ind;}
function setRestrContorno        (j, i_restr_ind) {restr_cont_id[j] = i_restr_ind;}
function setRestrCompleto        (j, i_restr_ind) {restr_comp_id[j] = i_restr_ind;}
function setRestrFrutta          (j, i_restr_ind) {restr_fr1_id[j] = i_restr_ind;}
function setRestrPane            (j, i_restr_ind) {restr_pn1_id[j] = i_restr_ind;}
function setRestrMerenda         (j, i_restr_ind) {restr_mer_id[j] = i_restr_ind;}

function returnRestrBreakfast    (i_ind) {return restr_br_id[i_ind];}
function returnRestrPrimo        (i_ind) {return restr_pr_id[i_ind];}
function returnRestrSecondo      (i_ind) {return restr_se_id[i_ind];}
function returnRestrContorno     (i_ind) {return restr_cont_id[i_ind];}
function returnRestrCompleto     (i_ind) {return restr_comp_id[i_ind];}
function returnRestrFrutta       (i_ind) {return restr_fr1_id[i_ind];}
function returnRestrPane         (i_ind) {return restr_pn1_id[i_ind];}
function returnRestrMerenda      (i_ind) {return restr_mer_id[i_ind];}



function clearVetos()
{
    var i;
    for (i = 0; i < veto_br_id.length; i++ )   veto_br_id[i]    = -2;
    for (i = 0; i < veto_pr_id.length; i++ )   veto_pr_id[i]   = -2;
    for (i = 0; i < veto_se_id.length; i++ )   veto_se_id[i]   = -2;
    for (i = 0; i < veto_cont_id.length; i++ ) veto_cont_id[i] = -2;
    for (i = 0; i < veto_comp_id.length; i++ ) veto_comp_id[i] = -2;
    for (i = 0; i < veto_mer_id.length; i++ )  veto_mer_id[i]  = -2;
    for (i = 0; i < veto_fr1_id.length; i++ )  veto_fr1_id[i]  = -2;
    for (i = 0; i < veto_pn1_id.length; i++ )  veto_pn1_id[i]  = -2;
}




