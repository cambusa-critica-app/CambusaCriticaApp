

//set vetoes on recipes inside the MODELS



function setVetos()
{

    var i = 0;
    CalcMenu.clearVetos();
    console.log("clearing vetoes")
    var j_pr = 0; var j_se = 0;  var j_cont = 0; var j_comp = 0;
    var j_mer = 0; var j_fr = 0; var j_pane = 0;

    console.log("setting vetoes");
    for (i = 0; i < primiModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && primiModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && primiModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && primiModel.get(i).route === 0)
         )
         { CalcMenu.addVetoPrimo(j_pr, i); j_pr++}
    }

    for (i = 0; i < secondiModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && secondiModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && secondiModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && secondiModel.get(i).route === 0)
         )
         {CalcMenu.addVetoSecondo(j_se, i); j_se++}
    }
    for (i = 0; i < contorniModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && contorniModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && contorniModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && contorniModel.get(i).route === 0)
         )
         {CalcMenu.addVetoContorno(j_cont, i); j_cont++;}
    }
    for (i = 0; i < snacksModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && snacksModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && snacksModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && snacksModel.get(i).route === 0)
         )
         {CalcMenu.addVetoMerenda(j_mer, i); j_mer++}
    }
    for (i = 0; i < fullMealModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && fullMealModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && fullMealModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && fullMealModel.get(i).route === 0)
         )
         {CalcMenu.addVetoCompleto(j_comp, i); j_comp++}
    }
    for (i = 0; i < fruttaModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && fruttaModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && fruttaModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && fruttaModel.get(i).route === 0)
         )
         {CalcMenu.addVetoFrutta(j_fr, i); j_fr++}
    }
    for (i = 0; i < paneModel.count; i++)
    {
         if
         (
                   (CalcMenu.getEle() === 1       && paneModel.get(i).ele === 1)
                || (CalcMenu.getFresco() === 0    && paneModel.get(i).mesi.get(CalcMenu.getMeseIn()).fresco === 0)
                || (CalcMenu.getActivity() === 2  && paneModel.get(i).route === 0)
         )
          {CalcMenu.addVetoPane(j_pane, i); j_pane++}
    }
}




function clearCustomLists()
{
    listaColazioni.clear();
    listaPrimi.clear();
    listaSecondi.clear();
    listaContorni.clear();
    listaSnacks.clear();
    listaFullMeal.clear();
    listaFrutta.clear();
    listaPane.clear();
}

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

function setRestrictedListINDEX ()
{
    var i = 0;

    console.log("setting restricted indeces ... **")
    var veto_br   = CalcMenu.returnVetoBreakfast();
    var veto_pr   = CalcMenu.returnVetoPrimo();
    var veto_se   = CalcMenu.returnVetoSecondo();
    var veto_cont = CalcMenu.returnVetoContorno();
    var veto_comp = CalcMenu.returnVetoCompleto();
    var veto_fr1  = CalcMenu.returnVetoFrutta();
    var veto_pn1  = CalcMenu.returnVetoPane();
    var veto_mer  = CalcMenu.returnVetoMerenda();


    //for (var test = 0; test < veto_pr3.length; test++) console.log("test veto contorno = " + veto_pr3[test])
    var j = 0;
    for (i = 0; i < breakfastModel.count; i++)
    {
        if (!checkArray(veto_br,i))
        {
            CalcMenu.setRestrBreakfast(i, j);
            j++;
        }
        else CalcMenu.setRestrBreakfast(i, -1);
    }

    j = 0;
    for (i = 0; i < primiModel.count; i++)
    {
        if (!checkArray(veto_pr,i))
        {
            CalcMenu.setRestrPrimo(i, j);
            j++;
        }
        else CalcMenu.setRestrPrimo(i, -1);
    }

    j= 0;
    for (i = 0; i < secondiModel.count; i++)
    {
        if (!checkArray(veto_se, i))
        {
            CalcMenu.setRestrSecondo(i, j)
            j++;
        }
        else CalcMenu.setRestrSecondo(i, -1);
    }

    j= 0;
    for (i = 0; i < contorniModel.count; i++)
    {
        if (!checkArray(veto_cont, i))
        {
            CalcMenu.setRestrContorno(i, j);
            j++;
        }
        else CalcMenu.setRestrContorno(i, -1);
    }

    j=0;
    for (i = 0; i < fullMealModel.count; i++)
    {
        if (!checkArray(veto_comp,i))
        {
            CalcMenu.setRestrCompleto(i, j);
            j++;
        }
        else CalcMenu.setRestrCompleto(i, -1);
    }

    j=0;
    for (i = 0; i < snacksModel.count; i++)
    {
        if (!checkArray(veto_mer,i))
        {
            CalcMenu.setRestrMerenda(i, j);
            j++;
        }
        else CalcMenu.setRestrMerenda(i, -1);
    }

    j=0;
    for (i = 0; i < fruttaModel.count; i++)
    {
        if (!checkArray(veto_fr1,i))
        {
            CalcMenu.setRestrFrutta(i, j);
            j++;
        }
        else CalcMenu.setRestrFrutta(i, -1);
    }

    j=0;
    for (i = 0; i < paneModel.count; i++)
    {
        if (!checkArray(veto_pn1,i))
        {
            CalcMenu.setRestrPane(i, j);
            j++;
        }
        else CalcMenu.setRestrPane(i, -1);
    }
}

//fill a custom list derived from model but without elements (recipes) which are vetoed
function fillCustomLists()
{
        var i = 0;

        var veto_br   = CalcMenu.returnVetoBreakfast();
        var veto_pr   = CalcMenu.returnVetoPrimo();
        var veto_se   = CalcMenu.returnVetoSecondo();
        var veto_cont = CalcMenu.returnVetoContorno();
        var veto_comp = CalcMenu.returnVetoCompleto();
        var veto_fr1  = CalcMenu.returnVetoFrutta();
        var veto_pn1  = CalcMenu.returnVetoPane();
        var veto_mer  = CalcMenu.returnVetoMerenda();


        for (i = 0; i < breakfastModel.count; i++)if (!checkArray(veto_br,i))   listaColazioni.append({"text":  breakfastModel.get(i).name, "id": i});
        for (i = 0; i < primiModel.count; i++)    if (!checkArray(veto_pr,i))   listaPrimi.append({"text":      primiModel.get(i).name, "id": i});
        for (i = 0; i < secondiModel.count; i++)  if (!checkArray(veto_se,i))   listaSecondi.append({"text":    secondiModel.get(i).name, "id": i});
        for (i = 0; i < contorniModel.count; i++) if (!checkArray(veto_cont,i)) listaContorni.append({"text":   contorniModel.get(i).name, "id": i});
        for (i = 0; i < fullMealModel.count; i++) if (!checkArray(veto_comp,i)) listaFullMeal.append({"text":   fullMealModel.get(i).name, "id": i});
        for (i = 0; i < fruttaModel.count; i++)   if (!checkArray(veto_fr1,i))  listaFrutta.append({"text":     fruttaModel.get(i).name, "id": i});
        for (i = 0; i < paneModel.count; i++)     if (!checkArray(veto_pn1,i))  listaPane.append({"text":       paneModel.get(i).name, "id": i});
        for (i = 0; i < snacksModel.count; i++)   if (!checkArray(veto_mer,i))  listaSnacks.append({"text":     snacksModel.get(i).name, "id": i});

}


function azzeraListaSpesa(input) {
    //lista.clear()
   if (input === -1) listaSpesa.clear();
   else listaSpesaGiorno.clear();
}

function checkUnitAndName_ofIngredients()
{
    //ciclo su tutti gli ingredienti di ciascuna ricetta

}

function creaListaSpesa(input_day)
{
    var min_day, n_days;
    if (input_day === -1) {n_days = CalcMenu.getTotDays(); min_day = 0;}
    else {n_days = input_day+1; min_day = input_day}

    for (var i_day = min_day; i_day < n_days; i_day++)
    {

    // ciclo sugli ingredienti della cena del giorno i_day
    for (var i_meal = 0; i_meal < 14; i_meal++)
    {

        var NINGR;
        if (i_meal === 0) NINGR = breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.count;
        if (i_meal === 1) NINGR = primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.count;
        if (i_meal === 2) NINGR = secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.count;
        if (i_meal === 3) NINGR = contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.count;
        if (i_meal === 4) NINGR = snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.count;
        if (i_meal === 5) NINGR = fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.count;
        if (i_meal === 6) NINGR = contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.count;

        if (i_meal === 7) NINGR = fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.count;
        if (i_meal === 8) NINGR = fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.count;
        if (i_meal === 9) NINGR = paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.count;
        if (i_meal === 10) NINGR = paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.count;        
        if (i_meal === 11) NINGR = primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.count;
        if (i_meal === 12) NINGR = secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.count;
        if (i_meal === 13) NINGR = fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.count;

        for (var i_ingr = 0; i_ingr < NINGR; i_ingr++)
        {
            var new_ingr;
            var new_dose;
            var new_unit;

            if (i_meal === 0)
            {
                new_ingr = breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.get(i_ingr).dose,
                                                      breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.get(i_ingr).unit,
                                                      breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 1)
            {
                new_ingr = primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.get(i_ingr).dose,
                                                      primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.get(i_ingr).unit,
                                                      primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 2)
            {
                new_ingr = secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.get(i_ingr).dose,
                                                      secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.get(i_ingr).unit,
                                                      secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 3)
            {
                new_ingr = contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.get(i_ingr).dose,
                                                      contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.get(i_ingr).unit,
                                                      contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 4)
            {
                new_ingr = snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.get(i_ingr).dose,
                                                      snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.get(i_ingr).unit,
                                                      snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 5)
            {
                new_ingr = fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.get(i_ingr).dose,
                                                      fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.get(i_ingr).unit,
                                                      fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.get(i_ingr).unit;
                }
            if (i_meal === 6)
            {
                new_ingr = contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.get(i_ingr).dose,
                                                      contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.get(i_ingr).unit,
                                                      contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 7)
            {
                new_ingr = fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.get(i_ingr).dose,
                                                      fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.get(i_ingr).unit,
                                                      fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 8)
            {
                new_ingr = fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.get(i_ingr).dose,
                                                      fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.get(i_ingr).unit,
                                                      fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 9)
            {
                new_ingr = paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.get(i_ingr).dose,
                                                      paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.get(i_ingr).unit,
                                                      paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 10)
            {
                new_ingr = paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.get(i_ingr).dose,
                                                      paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.get(i_ingr).unit,
                                                      paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 11)
            {
                new_ingr = primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.get(i_ingr).dose,
                                                      primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.get(i_ingr).unit,
                                                      primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 12)
            {
                new_ingr = secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.get(i_ingr).dose,
                                                      secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.get(i_ingr).unit,
                                                      secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.get(i_ingr).unit;
            }
            if (i_meal === 13)
            {
                new_ingr = fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.get(i_ingr).name_ing; // depending on i_day and i_ingr
                new_dose = CalcMenu.calcTotalDoseIngredient(fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.get(i_ingr).dose,
                                                      fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.get(i_ingr).unit,
                                                      fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.get(i_ingr).name_ing, 1);
                new_unit = fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.get(i_ingr).unit;
            }

            //ciclo sugli ingredienti già presenti in lista
            var NEW_ENTRY = true;
            var id_entry ;

            var NTING;
            if (input_day === -1)  NTING = listaSpesa.count;
            else NTING = listaSpesaGiorno.count;

            for (var prev_ingr = 0; prev_ingr < NTING ; prev_ingr++)
            {
                var name_prev_ing;
                var name_prev_unit;

                if (input_day === -1) name_prev_ing = listaSpesa.get(prev_ingr).ingrediente;
                else                  name_prev_ing = listaSpesaGiorno.get(prev_ingr).ingrediente;

                if (input_day === -1) name_prev_unit = listaSpesa.get(prev_ingr).unit;
                else                  name_prev_unit = listaSpesaGiorno.get(prev_ingr).unit;

                if ( name_prev_ing === new_ingr)    // se era in lista non aggiungierlo
                {
                    NEW_ENTRY = false;
                    id_entry = prev_ingr;

                    if (name_prev_unit !== new_unit)
                    {
                        console.log("******ATTENTION******\n in Meal: " + i_meal + "\nMISMATCHING UNITS: " + name_prev_ing + "[" + name_prev_unit + "] vs " + new_ingr + "[" + new_unit + "]");
                    }
                }
            }

            // se è nuovo aggiungile alle liste
            if (NEW_ENTRY === true && new_ingr !== "")
            {
                  if (input_day === -1)  listaSpesa.append({"ingrediente": new_ingr, "dose": new_dose, "unit": new_unit, "missing": "X", "sezione": getSezione(new_ingr)});
                  else                   listaSpesaGiorno.append({"ingrediente": new_ingr, "dose": new_dose, "unit": new_unit, "missing": "X", "sezione": getSezione(new_ingr)});
            }
            //se era già in lista aumentane la dose
            else if (new_ingr !== "")
            {
                    var insed_dose;
                    if (input_day === -1)
                    {
                        insed_dose = (listaSpesa.get(id_entry).dose + new_dose);
                        listaSpesa.setProperty(id_entry, "dose", insed_dose);
                    }
                    else
                    {
                        insed_dose = (listaSpesaGiorno.get(id_entry).dose + new_dose);
                        listaSpesaGiorno.setProperty(id_entry, "dose", insed_dose);
                    }
            }
        }//cycle over ingredients
    }//cycle over meals        
   }//cycle over days


    //sorting della lista
    var name_section = [];
    var global_counter = 0;
    var NSEZIONI = 7;

    name_section[0] = "Fresco"; name_section[1] = "Frigo"; name_section[2] = "Carne-Pesce"; name_section[3]= "Secco";
    name_section[4] = "Conserve"; name_section[5] = "Condimenti"; name_section[6] = "Altro";


    var temp_dose, temp_unit, i_sezione, i_ing, t_section;

    if (input_day === -1) //spesona
    {
        //normalizzo le grammature a kg.
        for ( i_ing = 0; i_ing < listaSpesa.count; i_ing++)
        {
             temp_dose = listaSpesa.get(i_ing).dose;
             temp_unit = listaSpesa.get(i_ing).unit;

            if (temp_dose > 1000)
            {
                if (temp_unit === "gr") {listaSpesa.setProperty(i_ing, "dose", Math.round(temp_dose/1000 *10)/10); listaSpesa.setProperty(i_ing, "unit", "kg");}
                if (temp_unit === "ml") {listaSpesa.setProperty(i_ing, "dose", Math.round(temp_dose/1000 *10)/10); listaSpesa.setProperty(i_ing, "unit", "lt");}
            }
        }

        for ( i_sezione = 0; i_sezione < NSEZIONI; i_sezione++)
        {
            //counter[i_sezione] = 0;
            for (i_ing = 0; i_ing < (listaSpesa.count - global_counter); i_ing++)
            {
                t_section = listaSpesa.get(i_ing).sezione;
                if (t_section === name_section[i_sezione])
                {
                    listaSpesa.move(i_ing, listaSpesa.count-1, 1);
                    global_counter++; i_ing--;
                }
            }
        }
    }//end spesona IF

    else
    {
        //normalizzo le grammature a kg.
        for ( i_ing = 0; i_ing < listaSpesaGiorno.count; i_ing++)
        {
             temp_dose = listaSpesaGiorno.get(i_ing).dose;
             temp_unit = listaSpesaGiorno.get(i_ing).unit;

            if (temp_dose > 1000)
            {
                if (temp_unit === "gr") {listaSpesaGiorno.setProperty(i_ing, "dose", Math.round(temp_dose/1000 *10)/10); listaSpesaGiorno.setProperty(i_ing, "unit", "kg");}
                if (temp_unit === "ml") {listaSpesaGiorno.setProperty(i_ing, "dose", Math.round(temp_dose/1000 *10)/10); listaSpesaGiorno.setProperty(i_ing, "unit", "lt");}
            }
        }

        for ( i_sezione = 0; i_sezione < NSEZIONI; i_sezione++)
        {
            //counter[i_sezione] = 0;
            for (i_ing = 0; i_ing < (listaSpesaGiorno.count - global_counter); i_ing++)
            {
                t_section = listaSpesaGiorno.get(i_ing).sezione;
                if (t_section === name_section[i_sezione])
                {
                    listaSpesaGiorno.move(i_ing, listaSpesaGiorno.count-1, 1);
                    global_counter++; i_ing--;
                }
            }
        }
    }//end spesa giorno IF
}


function calcolaTempoRicetta(recipe_id, input_meal)
{
    var time_string = " ";
    var minutes = getRecipeTime(input_meal, recipe_id);
    var hours = 0;

    if (minutes >=60) {hours++; minutes = minutes-60;}

    return (hours + "h" + minutes);

}


function calcolaPesoRicetta(input_day, recipe_id, input_meal, input_quantity)
{
    //set input_day  == -2 if recipe_id is specified and only integration over a single recipe is desired
    //set input day  != -2 to integrate over the desired day
    //set input_meal == -1 to integrate over the whole day_text
    //set input_day  == -1 && input_meal == -1 to integrate over the whole activity!
    //set input_quatity == 0 to obtain weigth and == 1 to get water

    var min_day, n_days;
    if (input_day === -1) {n_days = CalcMenu.getTotDays(); min_day = 0;}
    else {n_days = input_day+1; min_day = input_day}

    var temp_weight = 0;
    var temp_water = 0;

    console.log ("calculating peso... for day " + input_day +  " and meal " + input_meal);

    for (var i_day = min_day; i_day < n_days; i_day++)
    {

    // ciclo sugli ingredienti della cena del giorno i_day
    for (var i_meal = 0; i_meal < 14; i_meal++)
    {
        if (input_meal !==-1 && input_meal!== i_meal) continue; //cicla solo sul pasto richiesto, se richiesto
        var NINGR;
        var recipe_selected;

        //salta ciclo se la merenda è esclusa
        if (CalcMenu.getVoglioMerenda() === 1 && i_meal === 6) continue;

        if (input_day!==-2) // se non è specificato l'id della ricetta ma si sta integrando su più giorni e/o pasti
        {           
            if (i_meal === 0) {NINGR = breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.count; recipe_selected = CalcMenu.returnBreakfast(i_day);}
            if (i_meal === 1) {NINGR = primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.count;recipe_selected = CalcMenu.returnPranzoPrimo(i_day);}
            if (i_meal === 2) {NINGR = secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoSecondo(i_day);}
            if (i_meal === 3) {NINGR = contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoContorno(i_day);}
            if (i_meal === 4) {NINGR = fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoFrutta(i_day);}
            if (i_meal === 5) {NINGR = paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoPane(i_day);}
            if (i_meal === 6) {NINGR = snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.count; recipe_selected = CalcMenu.returnMerenda(i_day);}

            if (i_meal === 7) {NINGR = primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaPrimo(i_day);}
            if (i_meal === 8) {NINGR = secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaSecondo(i_day);}

            if (i_meal === 9) {NINGR = fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaCompleto(i_day);}
            if (i_meal === 10){NINGR = contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaContorno(i_day);}
            if (i_meal === 11){NINGR = fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaFrutta(i_day);}
            if (i_meal === 12){NINGR = paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaPane(i_day);}
            if (i_meal === 13){NINGR = fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoCompleto(i_day);}
        }
        else
        {
            NINGR = getRecipeNING(i_meal, recipe_id);
            recipe_selected = recipe_id;
        }
        for (var i_ingr = 0; i_ingr < NINGR; i_ingr++)
        {
            var new_ingr = getRecipeIngName(i_meal, recipe_selected, i_ingr);
            var new_dose = CalcMenu.calcTotalDoseIngredient(getRecipeIngDose(i_meal, recipe_selected, i_ingr),
                                                        getRecipeIngUnit(i_meal, recipe_selected, i_ingr),
                                                        getRecipeIngName(i_meal, recipe_selected, i_ingr),1);
            var new_unit = getRecipeIngUnit(i_meal, recipe_selected, i_ingr);

            if (new_unit=== "gr" || (new_unit === "ml" && new_ingr !== "acqua"))
            {
               // console.log("summing up ... " + temp_weight + " + " + new_dose + " ...");
                temp_weight+= new_dose;
            }
            if (new_unit === "unità") temp_weight += new_dose*130;  //assuming each unit weighs on average 130 gr
            if (new_unit=== "ml" && new_ingr === "acqua") temp_water+= new_dose;
        }//cycle over ingredients
    }//cycle over meals
   }//cycle over days

   if      (input_quantity === 0) return Math.floor(temp_weight/100)/10 + " kg";
   else if (input_quantity === 1) return Math.floor(temp_water/100)/10 + " lt";


}

function calcolaCalorie (input_day, recipe_id, input_meal)
{

    //set input_day  == -2 if recipe_id is specified and only integration over a single recipe is desired
    //set input day  != -2 to integrate over the desired day
    //set input_meal == -1 to integrate over the whole day_text
    //set input_day  == -1 && input_meal == -1 to integrate over the whole activity!

    var min_day, n_days;
    if (input_day === -1) {n_days = CalcMenu.getTotDays(); min_day = 0;}
    else {n_days = input_day+1; min_day = input_day}

    //console.log ("calculating kcal... for day " + input_day +  " and meal " + input_meal);
    var tot_calorie = 0;

    for (var i_day = min_day; i_day < n_days; i_day++)
    {
    // ciclo sugli ingredienti della cena del giorno i_day
    for (var i_meal = 0; i_meal < 14; i_meal++)
    {
        if (input_meal !==-1 && input_meal!== i_meal) continue; //cicla solo sul pasto richiesto, se richiesto
        var NINGR;
        var recipe_selected;

        //salta ciclo se la merenda è esclusa
        if (CalcMenu.getVoglioMerenda() === 1 && i_meal === 6) continue;

        if (input_day!==-2) // se non è specificato l'id della ricetta ma si sta integrando su più giorni e/o pasti
        {
            if (i_meal === 0) {NINGR = breakfastModel.get(CalcMenu.returnBreakfast(i_day)).ingredients.count; recipe_selected = CalcMenu.returnBreakfast(i_day);}
            if (i_meal === 1) {NINGR = primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).ingredients.count;recipe_selected = CalcMenu.returnPranzoPrimo(i_day);}
            if (i_meal === 2) {NINGR = secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoSecondo(i_day);}
            if (i_meal === 3){NINGR = fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoCompleto(i_day);}
            if (i_meal === 4) {NINGR = contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoContorno(i_day);}
            if (i_meal === 5) {NINGR = fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoFrutta(i_day);}
            if (i_meal === 6) {NINGR = paneModel.get(CalcMenu.returnPranzoPane(i_day)).ingredients.count; recipe_selected = CalcMenu.returnPranzoPane(i_day);}

            if (i_meal === 7) {NINGR = snacksModel.get(CalcMenu.returnMerenda(i_day)).ingredients.count; recipe_selected = CalcMenu.returnMerenda(i_day);}
            if (i_meal === 8) {NINGR = primiModel.get(CalcMenu.returnCenaPrimo(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaPrimo(i_day);}
            if (i_meal === 9) {NINGR = secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaSecondo(i_day);}
            if (i_meal === 10) {NINGR = fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaCompleto(i_day);}
            if (i_meal === 11){NINGR = contorniModel.get(CalcMenu.returnCenaContorno(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaContorno(i_day);}
            if (i_meal === 12){NINGR = fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaFrutta(i_day);}
            if (i_meal === 13){NINGR = paneModel.get(CalcMenu.returnCenaPane(i_day)).ingredients.count; recipe_selected = CalcMenu.returnCenaPane(i_day);}

        }
        else
        {
            NINGR = getRecipeNING(i_meal, recipe_id);
            recipe_selected = recipe_id;
        }

        //ciclo sugli ingredienti della ricetta
        for (var i_ingr = 0; i_ingr < NINGR; i_ingr++)
        {
            //console.log("integrating kCal for day: " + input_day + ", meal: " + i_meal + ", recipe: " + recipe_selected + ", ing: " + i_ingr);
            var new_ingr = getRecipeIngName(i_meal, recipe_selected, i_ingr);

            //to get calories calibrated on activity, sex and gender
            var new_dose = CalcMenu.calcTotalDoseIngredient(getRecipeIngDose(i_meal, recipe_selected, i_ingr),
                                                        getRecipeIngUnit(i_meal, recipe_selected, i_ingr),
                                                        getRecipeIngName(i_meal, recipe_selected, i_ingr),1)
                                                / (CalcMenu.getNMALE() + CalcMenu.getNFEMALE());

            var new_unit = getRecipeIngUnit(i_meal, recipe_selected, i_ingr);

            if (new_unit=== "gr")
            {
               // console.log("summing up ... " + temp_weight + " + " + new_dose + " ...");
                //temp_weight+= new_dose;
            }

            var temp_cal = 0;

            for (var j_ing = 0; j_ing < ingModel.count; j_ing++)
            {


                var listIngTemp = String(ingModel.get(j_ing).name);
                var listIng     = listIngTemp.substring(0, 1).toLowerCase() + listIngTemp.substring(1);

                //console.log("nome list ing = " + listIng + " :: current ing = " + new_ingr);
                var empty_st = "";
                if (new_ingr.indexOf(empty_st) === -1) break;
                else if ( listIng.indexOf(new_ingr) !== -1 && listIng.localeCompare(new_ingr) === 0)
                {
                    //console.log ("matching ingredients: " + ingModel.get(j_ing).name + " :: " + new_ingr)
                    temp_cal = ingModel.get(j_ing).kcal;
                    break;
                }
                else if (j_ing === ingModel.count-1 && new_unit !== "qb")
                {
                    console.log("**** WARNING **** :: matching not found for " + new_ingr + "! :(");
                }
            }

            if (new_unit=== "gr" || new_unit === "ml") tot_calorie += temp_cal*new_dose;

            //conversione per gli spicchi
            else if (new_unit === "spicchio")
            {
                var toGrams = 0;
                if      (new_ingr === "aglio") toGrams = 7;
                //else if (new_ingr === "aglio") toGrams = 7;
                tot_calorie += temp_cal*new_dose*toGrams;
            }

            //conversione per le unità
            else if (new_unit === "unità")
            {
                toGrams = 0;
                if      (new_ingr === "mela")       toGrams = 180;
                else if (new_ingr === "arancia")    toGrams = 250;
                else if (new_ingr === "mandarini")  toGrams = 90;
                else if (new_ingr === "limone")     toGrams = 90;

                else if (new_ingr === "pera")       toGrams = 200;
                else if (new_ingr === "pesca")      toGrams = 180;
                else if (new_ingr === "albicocche") toGrams = 70;
                else if (new_ingr === "kiwi")       toGrams = 130;
                else if (new_ingr === "clementine") toGrams = 100;

                else if (new_ingr === "prugne")     toGrams = 100;
                else if (new_ingr === "caco")       toGrams = 200;
                else if (new_ingr === "fichi")      toGrams = 80;
                else if (new_ingr === "nespole")    toGrams = 70;
                else if (new_ingr === "pompelmo")   toGrams = 300;

                else if (new_ingr === "scalogno")   toGrams = 30;
                else if (new_ingr === "uova")       toGrams = 56;

                else if (new_ingr === "pomodoro")   toGrams = 150;
                else if (new_ingr === "panini")     toGrams = 150;
                else if (new_ingr === "carciofo")   toGrams = 200;
                else if (new_ingr === "lievito")    toGrams = 7;

                tot_calorie += temp_cal*new_dose*toGrams;
            }
            //conversione per le bustine
            else if (new_unit === "bustine")
            {
                toGrams = 0;
                if    (new_ingr === "té in bustine") toGrams = 2;
            }

            //else if (new_unit !== "qb" || new_ingr !== "") console.log("**** WARNING **** :: " + new_ingr + " -> it's not in grams!!");
        }//cycle over ingredients
    }//cycle over meals
   }//cycle over days

  return Math.floor(tot_calorie/1000)*10;

}




function getSezione(ingr)
{
    var sezione = "Altro";

    if      (//frutta
             ingr === "melone"  || ingr === "mela"      || ingr === "pera"      || ingr === "pesca"     || ingr === "arancia"   ||
             ingr === "anguria" || ingr === "melone"    || ingr === "uva"       || ingr === "albicocche"|| ingr === "ciliegie"  ||
             ingr === "caco"    || ingr === "nespole"   || ingr === "clementine"|| ingr === "fichi"     || ingr === "fragole"   ||
             ingr === "kiwi"    || ingr === "lamponi"   || ingr === "mirtilli"  || ingr === "mandarini" || ingr === "prugne"    ||
             ingr === "pompelmo"||
             //verdura
             ingr === "zucchine"     || ingr === "limone"            || ingr === "menta"     || ingr === "cipolla"        || ingr === "patate"    ||
             ingr === "sedano"       || ingr === "peperone"          || ingr === "pomodori"  || ingr === "melanzana"      || ingr === "salvia"    ||
             ingr === "carote"       || ingr === "ravanelli"         || ingr === "broccoli"  || ingr === "insalata"       || ingr === "cetrioli"  ||
             ingr === "carciofi"     || ingr === "peperoni"          || ingr === "prezzemolo"|| ingr === "indivia belga"  || ingr === "cavolini di Bruxelles"    ||
             ingr === "basilico"     || ingr === "verze"             || ingr === "cavolfiore"|| ingr === "cipolle rosse"  || ingr === "erba cipollina"  ||
             ingr === "finocchi"     || ingr === "aglio"             || ingr === "fagiolini" || ingr === "spinaci"        || ingr === "zucca"     ||
             ingr === "bietole"      || ingr === "asparagi"          || ingr === "radicchio" || ingr === "broccoletti"    || ingr === "piselli" ||
             ingr === "fave"         || ingr === "cavolfiore bianco" || ingr === "porri"     || ingr === "cipolle bianche"|| ingr === "lattuga" ||
             ingr === "fave fresche" || ingr === "peperoni gialli"   || ingr === "rughetta"  || ingr === "coste"          || ingr === "cipolla bianca" ||
             ingr === "cipolla rossa"|| ingr === "cime di rapa"
             )
        sezione = "Fresco";

    else if (ingr === "latte"             || ingr === "formaggio"  || ingr === "crescenza"  || ingr === "yogurt naturale"   ||
             ingr === "uova"              || ingr === "parmigiano" || ingr === "burro"      || ingr === "ricotta"           ||
             ingr === "casera"            || ingr === "ravioli spinaci e ricotta"           || ingr === "impasto lievitato per pizza" || ingr === "gnocchi di patate" ||
             ingr === "groviera"          || ingr === "prosciutto crudo o cotto"            || ingr === "mozzarella"        || ingr === "provolone dolce" ||
             ingr === "ricotta di pecora" || ingr === "ricotta salata"                      || ingr === "pecorino"
             )
        sezione = "Frigo";

    else if (ingr === "pollo"                   || ingr === "merluzzo"                  || ingr === "sogliola"                || ingr === "filetti di pesce" ||
             ingr === "merluzzo in tranci"      || ingr === "petto di pollo"            || ingr === "coscia di pollo"         || ingr === "manzo"            ||
             ingr === "vitellone magro tritato" || ingr === "fettine di tacchino"       || ingr === "tacchino in fetta unica" || ingr === "nasello"          ||
             ingr === "carne trita di manzo"    || ingr === "vitellone in pezzo unico"  || ingr === "vitellone"               || ingr === "salsiccia"        ||
             ingr === "orata"
             )
        sezione = "Carne-Pesce";

    else if (ingr === "pomodori pelati"       || ingr === "ceci in scatola"   || ingr === "acciughe" || ingr === "piselli in scatola"||
             ingr === "lenticchie in scatola" || ingr === "fagioli in scatola"|| ingr === "olive"    || ingr === "capperi"           ||
             ingr === "olive nere snocciolate")
        sezione = "Conserve";

    else if (ingr === "olio EVO"        || ingr === "sale marino" || ingr === "pepe"  || ingr === "origano"  ||
             ingr === "noce moscata"    || ingr === "zafferano"   || ingr === "timo"  || ingr === "rosmarino"||
             ingr === "brodo vegetale"  || ingr === "peperoncino" || ingr === "curry" || ingr === "cumino"   ||
             ingr === "semi di finocchio"
             )
        sezione = "Condimenti";

    else if (ingr === "riso"           || ingr === "pasta"              || ingr === "farina"            || ingr === "pizzoccheri"   ||
             ingr === "farina di mais" || ingr === "fiocchi d'avena"    || ingr === "biscotti"          || ingr === "cioccolato"    ||
             ingr === "marmellata"     || ingr === "cacao amaro"        || ingr === "miele"             || ingr === "tè in bustine" ||
             ingr === "uvetta"         || ingr === "pan grattato"       || ingr === "gnocchetti sardi"  || ingr === "riso parboiled"||
             ingr === "orzo"           || ingr === "cioccolato fondente"|| ingr === "zucchero"          || ingr === "taralli"       ||
             ingr === "farina tipo 0"  || ingr === "farina di castagne" || ingr === "noci"              || ingr === "pinoli"        ||
             ingr === "nocciole"       || ingr === "mandorle"

             )
        sezione = "Secco";

    return sezione;
}

var temp_br_id = [], temp_pr1_id = [], temp_pr2_id = [], temp_pr3_id = [], temp_prc_id = [], temp_mer_id = [] , temp_ce_p_id = [], temp_ce_s_id = [], temp_ce1_id = [], temp_ce2_id = [], temp_fr1_id=[], temp_fr2_id=[], temp_pn1_id=[], temp_pn2_id=[];


function calcFullMenu()
{
    var max_calories = 1800;    // upper limit for lupetta, sedentaria
    var min_calories = 1600;    // lower limit for lupetta, sedentaria
    if (CalcMenu.getActivity() !== 0)    { max_calories = max_calories*1.1; min_calories = min_calories*1.1;}
    if (CalcMenu.getBranca()   !== "lc") { max_calories = max_calories*1.2; min_calories = min_calories*1.2;}
    max_calories = max_calories * (1.2*CalcMenu.getNMALE() + CalcMenu.getNFEMALE()) / (CalcMenu.getNMALE() + CalcMenu.getNFEMALE());
    min_calories = min_calories * (1.2*CalcMenu.getNMALE() + CalcMenu.getNFEMALE()) / (CalcMenu.getNMALE() + CalcMenu.getNFEMALE());

    for (var i_day = 0; i_day < CalcMenu.getTotDays(); i_day++)
    {
        var n_attempts = 0;         //initialization
        var daily_calories = 5000;  //initialization

      //  while((daily_calories > max_calories || daily_calories < min_calories) && n_attempts < 3)
      //  {
            // get meal ID
        if (CalcMenu.getStruttura(0))  temp_br_id[i_day] = CalcMenu.calcBreakfast(i_day);
        else                           temp_br_id[i_day] = 0;

        if (CalcMenu.getStruttura(1))  temp_pr1_id[i_day] = CalcMenu.calcPrimo(i_day);
        else                           temp_pr1_id[i_day] = 0;

        if (CalcMenu.getStruttura(2))  temp_pr2_id[i_day] = CalcMenu.calcSecondo(i_day);
        else                           temp_pr2_id[i_day] = 0;

        if (CalcMenu.getStruttura(3))  temp_prc_id[i_day] = CalcMenu.calcFullMeal(i_day);
        else                           temp_prc_id[i_day] = 0;

        if (CalcMenu.getStruttura(4))  temp_pr3_id[i_day] = CalcMenu.calcContornoPranzo(i_day);
        else                           temp_pr3_id[i_day] = 0;

        if (CalcMenu.getStruttura(5))  temp_fr1_id[i_day] = CalcMenu.calcFruttaPranzo(i_day);
        else                           temp_fr1_id[i_day] = 0;

        if (CalcMenu.getStruttura(6)) temp_pn1_id[i_day] = CalcMenu.calcPanePranzo(i_day);
        else                           temp_pn1_id[i_day] = 0;

        if (CalcMenu.getStruttura(7))  temp_mer_id[i_day] = CalcMenu.calcSnacks(i_day);
        else                           temp_mer_id[i_day] = 0;

        if (CalcMenu.getStruttura(8))  temp_ce_p_id[i_day] = CalcMenu.calcPrimo(i_day);
        else                           temp_ce_p_id[i_day] = 0;

        if (CalcMenu.getStruttura(9))  temp_ce_s_id[i_day] = CalcMenu.calcSecondo(i_day);
        else                           temp_ce_s_id[i_day] = 0;

        if (CalcMenu.getStruttura(10))  temp_ce1_id[i_day] = CalcMenu.calcFullMeal(i_day);
        else                           temp_ce1_id[i_day] = 0;

        if (CalcMenu.getStruttura(11))  temp_ce2_id[i_day] = CalcMenu.calcContornoCena(i_day);
        else                           temp_ce2_id[i_day] = 0;

        if (CalcMenu.getStruttura(12)) temp_fr2_id[i_day] = CalcMenu.calcFruttaCena(i_day);
        else                           temp_fr2_id[i_day] = 0;

        if (CalcMenu.getStruttura(13)) temp_pn2_id[i_day] = CalcMenu.calcPaneCena(i_day);
        else                           temp_pn2_id[i_day] = 0;

            //avoid repeating the same PRIMO as previous days
            var safety_limit = 40;
            var safety_counter = 0;

            if (i_day > 0 && temp_pr1_id[i_day] !== 0 && temp_pr2_id[i_day] !== 0)
            {
                while (temp_pr1_id[i_day] === temp_pr1_id[i_day-1] && safety_counter<safety_limit)     temp_pr1_id[i_day] = CalcMenu.calcPrimo(i_day);
            }
            safety_counter = 0;
            if (i_day > 1 )
            {
                while (  ((temp_pr1_id[i_day] === temp_pr1_id[i_day-1] && temp_pr1_id[i_day] !== 0)
                      || (temp_pr1_id[i_day] === temp_pr1_id[i_day-2] && temp_pr1_id[i_day] !== 0))
                      && safety_counter<safety_limit           )     temp_pr1_id[i_day] = CalcMenu.calcPrimo(i_day);
            }

            //avoid repeating the same SECONDO as previous days
            safety_counter = 0;
            if (i_day > 0)
            {
                while (temp_pr2_id[i_day] === temp_pr2_id[i_day-1] && temp_pr2_id[i_day-1] !==0 && safety_counter<safety_limit)     temp_pr2_id[i_day] = CalcMenu.calcSecondo(i_day);
            }
            safety_counter = 0;
            if (i_day > 1)
            {
                while ( ((temp_pr2_id[i_day] === temp_pr2_id[i_day-1] && temp_pr2_id[i_day]!== 0)
                     || (temp_pr2_id[i_day] === temp_pr2_id[i_day-2]  && temp_pr2_id[i_day]!== 0))
                       && safety_counter<safety_limit           )     temp_pr2_id[i_day] = CalcMenu.calcSecondo(i_day);
            }

            //avoid using the same CONTORNO per pranzo e cena
            /*while (temp_pr3_id[i_day] === temp_ce2_id[i_day] && i_day === 0)
            {
                temp_pr3_id[i_day] = CalcMenu.calcContorno(i_day);
                temp_ce2_id[i_day] = CalcMenu.calcContorno(i_day);
            }*/

            //avoid repeating the same CONTORNO as previous day
            safety_counter = 0;
            if (i_day > 0)
            {
                while ((temp_pr3_id[i_day] !== 0 && temp_ce2_id[i_day] !== 0) && ( //avoid to stuck if 0 menù is forced by default [vedi trapper e ultimo giorno]
                       temp_pr3_id[i_day] === temp_ce2_id[i_day] ||
                       temp_pr3_id[i_day] === temp_pr3_id[i_day-1] || temp_ce2_id[i_day] === temp_ce2_id[i_day-1]
                       //||  temp_pr3_id[i_day] === temp_ce2_id[i_day-1] || temp_ce2_id[i_day] === temp_pr3_id[i_day-1]
                        && safety_counter<safety_limit                                                          )
                       )
                {
                    temp_pr3_id[i_day] = CalcMenu.calcContornoPranzo(i_day);
                    temp_ce2_id[i_day] = CalcMenu.calcContornoCena(i_day);
                }
            }

            //avoid using the same FRUTTA per pranzo e cena
            safety_counter = 0;
            while (temp_fr1_id[i_day] === temp_fr2_id[i_day] && temp_fr1_id[i_day] !== 0 && i_day === 0 && safety_counter<safety_limit)
            {
                temp_fr1_id[i_day] = CalcMenu.calcFruttaPranzo(i_day);
                temp_fr2_id[i_day] = CalcMenu.calcFruttaCena(i_day);
            }

            // if (pasta (o riso) a pranzo) avoid (pasta (o riso) a cena)
            //console.log("cena = " + fullMealModel.get(temp_ce1_id[i_day]).flag + " : pranzo = " + primiModel.get(temp_pr1_id[i_day]).flag );

            var flag_pranzo         = String(primiModel.get(temp_pr1_id[i_day]).flag);
            var flag_pranzo_secondo = String(secondiModel.get(temp_pr2_id[i_day]).flag);

            var flag_cena           = String(fullMealModel.get(temp_ce1_id[i_day]).flag);
            //var flag_cena_secondo   = String(contorniModel.get(temp_ce2_id[i_day]).flag);
            safety_counter = 0;
            while (
                (flag_cena.indexOf("PASTA") !== -1 && flag_pranzo.indexOf("PASTA") !== -1             && CalcMenu.getActivity()!==2) ||
                (flag_cena.indexOf("LEGUMI") !== -1 && flag_pranzo.indexOf("LEGUMI") !== -1           && CalcMenu.getActivity()!==2) ||
                (flag_pranzo_secondo.indexOf("LEGUMI") !== -1 && flag_pranzo.indexOf("LEGUMI") !== -1 && CalcMenu.getActivity()!==2) ||
                (flag_pranzo_secondo.indexOf("LEGUMI") !== -1 && flag_cena.indexOf("LEGUMI") !== -1   && CalcMenu.getActivity()!==2) ||
                (flag_cena.indexOf("RISO") !== -1 && flag_pranzo.indexOf("RISO") !== -1               && CalcMenu.getActivity()!==2  )
                 && safety_counter<safety_limit  )
            {
                temp_ce1_id[i_day] = CalcMenu.calcFullMeal(i_day);
                temp_pr2_id[i_day] = CalcMenu.calcSecondo(i_day);

                flag_pranzo         = String(primiModel.get(temp_pr1_id[i_day]).flag);
                flag_pranzo_secondo = String(secondiModel.get(temp_pr2_id[i_day]).flag);
                flag_cena           = String(fullMealModel.get(temp_ce1_id[i_day]).flag);
               // flag_cena_secondo   = String(fullMealModel.get(temp_ce2_id[i_day]).flag);

                console.log("test :: " + temp_ce1_id[i_day]);
                //else {pasta = true; g_pasta++; break}
            }

            CalcMenu.setBreakfast       (i_day, temp_br_id[i_day]);
            CalcMenu.setPranzoPrimo     (i_day, temp_pr1_id[i_day]);
            CalcMenu.setPranzoSecondo   (i_day, temp_pr2_id[i_day]);
            CalcMenu.setPranzoCompleto  (i_day, temp_prc_id[i_day]);
            CalcMenu.setPranzoContorno  (i_day, temp_pr3_id[i_day]);
            CalcMenu.setPranzoFrutta    (i_day, temp_fr1_id[i_day]);
            CalcMenu.setPranzoPane      (i_day, temp_pn1_id[i_day]);

            CalcMenu.setMerenda         (i_day, temp_mer_id[i_day]);            
            CalcMenu.setCenaPrimo       (i_day, temp_ce_p_id[i_day]);
            CalcMenu.setCenaSecondo     (i_day, temp_ce_s_id[i_day]);
            CalcMenu.setCenaCompleto    (i_day, temp_ce1_id[i_day]);
            CalcMenu.setCenaContorno    (i_day, temp_ce2_id[i_day]);
            CalcMenu.setCenaFrutta      (i_day, temp_fr2_id[i_day]);
            CalcMenu.setCenaPane        (i_day, temp_pn2_id[i_day]);

       //     daily_calories = calcolaCalorie(i_day, 0, -1);
       //     console.log("calcolo calorie per giorno: " + i_day + "... ("+ daily_calories + ") - tentativo " + n_attempts);
       //     n_attempts++;
       //     if (i_day === 0 || i_day === (CalcMenu.getShortNDAYS()-1)) n_attempts += 5;
       //     if (n_attempts === 4 && daily_calories > max_calories) console.log("WARNING: Impossibile calcolare un menù giornaliero sotto il limite calorico");
       //     if (n_attempts === 4 && daily_calories < min_calories) console.log("WARNING: Impossibile calcolare un menù giornaliero sopra il minimo calorico");
       // }//end of "while too much calories" cycle
    }//end of cycle over days
}


function evaluateFullMenu ()
{

    var NDAYS = CalcMenu.getShortNDAYS();

    console.log("evaluating menù ... durata: " + NDAYS)

    //initialize counters and flags
    var NFLAGS = 12;
    var temp_flag = [];
    for (var i = 0; i < NFLAGS; i++) temp_flag[i] = 0;

    var label_flag = [];
    label_flag[0] = "FRUTTA";  label_flag[1] = "VERDURA"; label_flag[2] = "PATATE"; label_flag[3] = "CEREALI";
    label_flag[4] = "PESCE";  label_flag[5] = "CARNEROSSA"; label_flag[6] = "CARNEBIANCA"; label_flag[7] = "UOVA";
    label_flag[8] = "AFFETTATO";  label_flag[9] = "FORMAGGIO"; label_flag[10] = "DESSERT"; label_flag[11] = "LEGUMI";

    //scan the whole menù and count
    var flag;
    var i_flag;
    for (var i_day = 0; i_day < NDAYS; i_day++)
    {

        //scan colazioni
        flag = String(breakfastModel.get(CalcMenu.returnBreakfast(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan primi
        flag = String(primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan secondi
        flag = String(secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan primo completo
        flag = String(fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan pranzo contorno
        flag = String(contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan merende
        flag = String(snacksModel.get(CalcMenu.returnMerenda(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1){ temp_flag[i_flag]++;}

        //scan cena primo
        flag = String(primiModel.get(CalcMenu.returnCenaPrimo(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan cena secondo
        flag = String(secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan cena completo
        flag = String(fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++) if (flag.indexOf(label_flag[i_flag]) !== -1) temp_flag[i_flag]++;

        //scan cena contorno
        flag = String(contorniModel.get(CalcMenu.returnCenaContorno(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++)
        {
            if (flag.indexOf(label_flag[i_flag]) !== -1){ temp_flag[i_flag]++;}
           // console.log("flag: " + flag + " :: temp flag = " +temp_flag[i_flag]);}
        }

        //scan frutta pranzo
        flag = String(fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++)
        {
            if (flag.indexOf(label_flag[i_flag]) !== -1){ temp_flag[i_flag]++;}
          //  console.log("flag: " + flag + " :: temp flag = " +temp_flag[i_flag]);}
        }

        //scan frutta cena
        flag = String(fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).flag);
        for (i_flag = 0; i_flag < NFLAGS; i_flag++)
        {
            if (flag.indexOf(label_flag[i_flag]) !== -1){ temp_flag[i_flag]++;}
         //   console.log("flag: " + flag + " :: temp flag = " +temp_flag[i_flag]);}
        }


    }

    //associate temp_counters to human readable ones
    var n_frutta = temp_flag[0],   n_verdura = temp_flag[1],      n_patate = temp_flag[2],       n_cereali = temp_flag[3],
        n_pesce = temp_flag[4],    n_carnerossa = temp_flag[5],   n_carnebianca = temp_flag[6],  n_uovo = temp_flag[7],
        n_affettato = temp_flag[8],n_formaggio = temp_flag[9],    n_dessert = temp_flag[10],      n_legumi = temp_flag[11];

/*
    console.log("n_frutta = " + n_frutta);
    console.log("n_verdura = " + n_verdura);
    console.log("n_patate = " + n_patate);
    console.log("n_cereali = " + n_cereali);

        console.log("n_pesce = " + n_pesce);
        console.log("n_carnerossa = " + n_carnerossa);
        console.log("n_carnebianca = " + n_carnebianca);
        console.log("n_uovo = " + n_uovo);

        console.log("n_affettato = " + n_affettato);
        console.log("n_formaggio = " + n_formaggio);
        console.log("n_dessert = " + n_dessert);
        console.log("n_legumi = " + n_legumi);*/


    var score = 0;

    // set and check rules per week
    // frutta
    if      (n_frutta*7/(NDAYS-1) > 12) {score += 10; CalcMenu.setScoreFrutta(10);}
    else if (n_frutta*7/(NDAYS-1) > 10) {score += 8;  CalcMenu.setScoreFrutta(8);}
    else CalcMenu.setScoreFrutta(0);

    //verdura
    if      (n_verdura*7/(NDAYS-1) > 11.5)  {score += 10; CalcMenu.setScoreVerdura(10);}
    else if (n_verdura*7/(NDAYS-1) > 9.5)   {score += 8;  CalcMenu.setScoreVerdura(8);}
    else CalcMenu.setScoreVerdura(0);

    //patate
//    if          (n_patate*7/(NDAYS-1) < 2) {score += 10; CalcMenu.setScorePatate(10);}
//    else if     (n_patate*7/(NDAYS-1) < 3) {score += 8; CalcMenu.setScorePatate(8);}
    if   (n_patate*7/(NDAYS-1) < 4) {score += 5; CalcMenu.setScorePatate(5);}
    else CalcMenu.setScorePatate(0);

    //pesce
    //if      (n_pesce*7/(NDAYS-1) > 0.9)  {score += 5; CalcMenu.setScorePesce(10);}
    if (n_pesce*7/(NDAYS-1) > 0.5){score += 5;  CalcMenu.setScorePesce(5);}
    //else if (n_pesce*7/(NDAYS-1) > 0)  {score += 3;  CalcMenu.setScorePesce(6);}
    else CalcMenu.setScorePesce(0);

    //carne rossa
    if      (n_carnerossa*7/(NDAYS-1) < 2.1){score += 10; CalcMenu.setScoreCROSSA(10);}
    else if (n_carnerossa*7/(NDAYS-1) < 3)  {score += 5;  CalcMenu.setScoreCROSSA(5);}
    else CalcMenu.setScoreCROSSA(0);

    //carne bianca [TO BE CHECKED!!!]
    //if      (n_carnebianca*7/(NDAYS-1) < 4)  {score += 5; CalcMenu.setScoreCBIANCA(10);}
    if (n_carnebianca*7/(NDAYS-1) < 5)  {score += 5;  CalcMenu.setScoreCBIANCA(5);}
    else CalcMenu.setScoreCBIANCA(0);

    //uovo
    if      (n_uovo*7/(NDAYS-1) < 2)       {score += 10;  CalcMenu.setScoreUovo(10);}
    else if (n_uovo*7/(NDAYS-1) < 3)       {score += 7;  CalcMenu.setScoreUovo(7);}
    else if (n_uovo*7/(NDAYS-1) < 4)       {score += 5; CalcMenu.setScoreUovo(5);}
    else CalcMenu.setScoreUovo(0);

    //affettato
    if      (n_affettato*7/(NDAYS-1) < 3)  {score += 10; CalcMenu.setScoreAffettato(10);}
    else if (n_affettato*7/(NDAYS-1) < 4)  {score += 5; CalcMenu.setScoreAffettato(5);}
    else CalcMenu.setScoreAffettato(0);

    //formaggio
    //if      (n_formaggio*7/(NDAYS-1) < 5 || (NDAYS-1 === 0))  {score += 10; CalcMenu.setScoreFormaggio(10);}
    if (n_formaggio*7/(NDAYS-1) < 7)  {score += 5; CalcMenu.setScoreFormaggio(5);}
    else CalcMenu.setScoreFormaggio(0);

    //dessert
    if      (n_dessert*7/(NDAYS-1) < 2.5)  {score += 10; CalcMenu.setScoreDessert(10);}
    else if (n_dessert*7/(NDAYS-1) < 3.5)  {score += 5;  CalcMenu.setScoreDessert(5);}
    else CalcMenu.setScoreDessert(0);

    //legumi
    if      (n_legumi*7/(NDAYS-1) > 2)  {score += 10; CalcMenu.setScoreLegumi(10);}
    else if (n_legumi*7/(NDAYS-1) > 1)  {score += 7;  CalcMenu.setScoreLegumi(7);}
    else if (n_legumi*7/(NDAYS-1) > 0)  {score += 5;  CalcMenu.setScoreLegumi(5);}
    else CalcMenu.setScoreLegumi(0);

    //varietà  di cereali: se oltre alla pasta e al riso
    if      (n_cereali*7/(NDAYS-1) > 6)  {score += 10; CalcMenu.setScoreCereali(10);}
    else if (n_cereali*7/(NDAYS-1) > 4)  {score += 7;  CalcMenu.setScoreCereali(7);}
    else CalcMenu.setScoreCereali(0);

    return score;
}





function writeMenu()
{
    console.log("writing menù ...");
    console.log ("print menu seems to be:" + CalcMenu.getPrintMenu());


    var header = "Ciao, \n il menù che hai scelto è pensato per un'attività " //+ CalcMenu.getActivity()
                + "della durata di " + CalcMenu.getTotDays() + " giorni. \nLa tua unità (" + CalcMenu.getBranca() + ") ha "
                + CalcMenu.getNMALE()  + " maschi e " + CalcMenu.getNFEMALE() + " femmine. \n Qui sotto puoi trovare il menù e la lista della spesa.\n\nBuon divertimento e buon appetito! \n\n Il team di CambusaCritica App\n\n";

    //stampa menù
    if (CalcMenu.getPrintMenu()=== 1)
    {
        var menu = "********* MENU' ********** \n\n";

        for (var i_day = 0; i_day < CalcMenu.getTotDays(); i_day++)
        {
            menu += "-----------------------------------\n"
                  + "------- " + CalcMenu.getGiornoEsatto(i_day+1) +" -------\n"
                  + "-----------------------------------\n";
            if (breakfastModel.get(CalcMenu.returnBreakfast(i_day)).name!== "NIENTE")
                menu+=  "Colazione: " + breakfastModel.get(CalcMenu.returnBreakfast(i_day)).name + " \n\n";

            menu+= "Pranzo: \n";

            if (primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).name!== "NIENTE")       menu += "- primo: "     + primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).name + " \n"
            if (secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).name!== "NIENTE")   menu += "- secondo: "   + secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).name + " \n"
            if (fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).name!== "NIENTE")   menu += "- piatto unico: "   + fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).name + " \n"
            if (contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).name!== "NIENTE") menu += "- contorno: "  + contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).name + " \n"
            if (fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).name!== "NIENTE")     menu += "- frutta: "    + fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).name + " \n\n"
            if (paneModel.get(CalcMenu.returnPranzoPane(i_day)).name!== "NIENTE")         menu += "- pane: "      + paneModel.get(CalcMenu.returnPranzoPane(i_day)).name + " \n\n"

            if (snacksModel.get(CalcMenu.returnMerenda(i_day)).name!== "NIENTE")          menu +=  "Merenda: "     + snacksModel.get(CalcMenu.returnMerenda(i_day)).name + " \n\n"

            menu += "Cena: \n";
            if (primiModel.get(CalcMenu.returnCenaPrimo(i_day)).name!== "NIENTE")         menu += "- primo: "      + primiModel.get(CalcMenu.returnCenaPrimo(i_day)).name + " \n"
            if (secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).name!== "NIENTE")     menu += "- secondo: "    + secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).name + " \n"
            if (fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).name!== "NIENTE")   menu += "- piatto unico: "  + fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).name + " \n"
            if (contorniModel.get(CalcMenu.returnCenaContorno(i_day)).name!== "NIENTE")   menu += "- contorno: "      + contorniModel.get(CalcMenu.returnCenaContorno(i_day)).name + " \n"
            if (fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).name!== "NIENTE")       menu += "- frutta: "        + fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).name + " \n\n"
            if (paneModel.get(CalcMenu.returnCenaPane(i_day)).name!== "NIENTE")           menu += "- pane: "          + paneModel.get(CalcMenu.returnCenaPane(i_day)).name + " \n\n"
        }
    }



    //stampa spesa totale
    console.log ("print totale seems to be:" + CalcMenu.getPrintTotale());
    var lista_spesa = "";
    if (CalcMenu.getPrintTotale()=== 1)
    {
        azzeraListaSpesa(-1);
        creaListaSpesa(-1);

        lista_spesa += "\n\n"
                   + "----------------------------------------\n"
                   + "-------------- LISTA SPESA -------------\n"
                   + "----------------------------------------\n\n";

        var temp_section = "";
        for (var i_l = 0; i_l < listaSpesa.count; i_l++)
        {
            if (listaSpesa.get(i_l).sezione !== temp_section)
            {
                lista_spesa += "------------------------------\n"
                              + listaSpesa.get(i_l).sezione + "\n"
                              + "------------------------------\n"
            }

            temp_section = listaSpesa.get(i_l).sezione;
            lista_spesa += "- " + listaSpesa.get(i_l).ingrediente + " : " + listaSpesa.get(i_l).dose + " " + listaSpesa.get(i_l).unit + "\n";
        }
        lista_spesa += " ******************************************************** \n\n"

    }

    console.log ("print giornaliera seems to be:" + CalcMenu.getPrintGiornaliera());

    //stampa spesa giornaliera
    var lista_spesa_giorno = "";
    if (CalcMenu.getPrintGiornaliera()=== 1)
    {
        for (i_day = 0; i_day < CalcMenu.getTotDays(); i_day++)
        {
            azzeraListaSpesa(i_day);
            creaListaSpesa(i_day);

            lista_spesa_giorno += "\n\n"
                   + "----------------------------------------\n"
                   + "-------------- LISTA SPESA -------------\n"
                   + "------------ " +  CalcMenu.getGiornoEsatto(i_day+1) + " -----------\n"
                   + "----------------------------------------\n\n";

            var temp_section_g = "";
            for (var i_g = 0; i_g < listaSpesaGiorno.count; i_g++)
            {
                if (listaSpesaGiorno.get(i_g).sezione !== temp_section)
                {
                    lista_spesa_giorno += "------------------------------\n"
                              + listaSpesaGiorno.get(i_g).sezione + "\n"
                              + "------------------------------\n"
                }

                temp_section = listaSpesaGiorno.get(i_g).sezione;
                lista_spesa_giorno += "- " + listaSpesaGiorno.get(i_g).ingrediente + " : " + listaSpesaGiorno.get(i_g).dose + " " + listaSpesaGiorno.get(i_g).unit + "\n";
            }
            lista_spesa_giorno += " ******************************************************** \n\n"
        }
    }
    return (header + menu + lista_spesa + lista_spesa_giorno);

}

function writeHTML_MenuTable ()
{
    var table = "";
    table += "\n\n"
                   + "----------------------------------------\n"
                   + "-------------- <b>TABELLA MENU'</b> ------------\n"
                   + "----------------------------------------\n\n";
    table += "<\!DOCTYPE html>
        <html>        <head>  <meta charset=\"utf-8\"/>      <style>
        table, th, td {border: 1px solid black; }
        </style>      </head>       <body>"
      +"<table style=\"width:100%\">"
      +"<tr>        <td>  </td>     <td><b>Colazione</b></td>     <td><b>Pranzo</b></td>      <td><b>Merenda</b></td>      <td><b>Cena</b></td>    </tr>";

    for (var i_day = 0; i_day < CalcMenu.getTotDays(); i_day++)
    {


      table += "<tr>  <td><pre>" + CalcMenu.getGiornoEsatto(i_day+1) + "</td>"
      table+=     "<td><pre>";
      if (breakfastModel.get(CalcMenu.returnBreakfast(i_day)).name!=="NIENTE")    table+= breakfastModel.get(CalcMenu.returnBreakfast(i_day)).name      + "</pre></td>"

      table+=     "<td><pre>";
      if (primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).name!=="NIENTE")      table+= primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).name        + ", \n"
      if (secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).name!=="NIENTE")  table+= secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).name    + ", \n"
      if (fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).name!=="NIENTE") table+= fullMealModel.get(CalcMenu.returnPranzoCompleto(i_day)).name    + ", \n"
      if (contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).name!=="NIENTE")table+= contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).name  + ", \n"
      if (fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).name!=="NIENTE")    table+= fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).name      + ", \n"
      if (paneModel.get(CalcMenu.returnPranzoPane(i_day)).name!=="NIENTE")        table+= paneModel.get(CalcMenu.returnPranzoPane(i_day)).name      + "</pre></td>"

      table+=     "<td><pre>";
      if (snacksModel.get(CalcMenu.returnMerenda(i_day)).name!=="NIENTE")         table+= snacksModel.get(CalcMenu.returnMerenda(i_day)).name           + "</pre></td>"

      table+=     "<td><pre>";
      if (primiModel.get(CalcMenu.returnCenaPrimo(i_day)).name!=="NIENTE")        table+= primiModel.get(CalcMenu.returnCenaPrimo(i_day)).name    + ", \n"
      if (secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).name!=="NIENTE")    table+= secondiModel.get(CalcMenu.returnCenaSecondo(i_day)).name    + ", \n"
      if (fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).name!=="NIENTE")  table+= fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).name    + ", \n"
      if (contorniModel.get(CalcMenu.returnCenaContorno(i_day)).name!=="NIENTE")  table+= contorniModel.get(CalcMenu.returnCenaContorno(i_day)).name    + ", \n"
      if (fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).name!=="NIENTE")      table+= fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).name        + ", \n"
      if (paneModel.get(CalcMenu.returnCenaPane(i_day)).name!=="NIENTE")          table+= paneModel.get(CalcMenu.returnCenaPane(i_day)).name        + "</pre></td>"

      table+="  </tr>";

    }

    table+= "</table> </body> </html>";
    return table;
    // end of sperimental table
}



function writeHTML_SpesaTable ()
{
    azzeraListaSpesa(-1);
    creaListaSpesa(-1);
    var table = "";
    table += "\n\n\n\n"
                   + "----------------------------------------\n"
                   + "------------- <b>SPESA TOTALE</b> ------------\n"
                   + "----------------------------------------\n\n";
    table += "<\!DOCTYPE html>
        <html>        <head>   <meta charset=\"utf-8\"/>     <style>
        table, th, td {border: 1px solid black; }
        </style>      </head>       <body>"
      +"<table style=\"width:100%\">"
      +"<tr>    <td> <b>Ingrediente  </b></td>     <td><b>Quantità</b></td>     <td><b>Unità</b></td>      <td><b>Note</b></td>    </tr>";

    var temp_section = "";
    for (var i_l = 0; i_l < listaSpesa.count; i_l++)
    {
        if (listaSpesa.get(i_l).sezione !== temp_section)
        {
            table               += "<tr>  <td><pre><b><font color=\"blue\">" + listaSpesa.get(i_l).sezione + "</font></b></td>"
                                +        "<td><pre>" + " "      + "</pre></td>"
                                +        "<td><pre>" + " "           + "</pre></td>"
                                +        "<td><pre>" + " "    + "</pre></td>"
                                +"  </tr>";
        }
        temp_section = listaSpesa.get(i_l).sezione;
        table   += "<tr>  <td><pre>" + listaSpesa.get(i_l).ingrediente + "</td>"
                    +        "<td><pre>" + listaSpesa.get(i_l).dose        + "</pre></td>"
                    +        "<td><pre>" + listaSpesa.get(i_l).unit        + "</pre></td>"
                    +        "<td><pre>" + " "    + "</pre></td>"
                    +"  </tr>";
    }
    table+= "</table> </body> </html>";
    return table;
}



function writeHTML_SpesaGiornoTable ()
{

    var table = "";
    table += "\n\n\n\n"
                   + "----------------------------------------\n"
                   + "------------- <b>SPESA GIORNALIERA</b> ------------\n"
                   + "----------------------------------------\n\n";
    table += "<\!DOCTYPE html>
        <html>        <head>   <meta charset=\"utf-8\"/>     <style>
        table, th, td {border: 1px solid black; }
        </style>      </head>       <body>"
      +"<table style=\"width:100%\">"
      +"<tr>    <td> <b>Ingrediente  </b></td>     <td><b>Quantità</b></td>     <td><b>Unità</b></td>      <td><b>Note</b></td>    </tr>";

    for (var i_day = 0; i_day < CalcMenu.getTotDays(); i_day++)
    {
        azzeraListaSpesa(i_day);
        creaListaSpesa(i_day);

        //header of selected day
        table               += "<tr>  <td><pre><b><font color=\"red\">" + CalcMenu.getGiornoEsatto(i_day+1) + "</font></b></td>"
                            +        "<td><pre>" + " "      + "</pre></td>"
                            +        "<td><pre>" + " "      + "</pre></td>"
                            +        "<td><pre>" + " "      + "</pre></td>"
                            +"  </tr>";

        var temp_section = "";
        for (var i_l = 0; i_l < listaSpesaGiorno.count; i_l++)
        {
            if (listaSpesaGiorno.get(i_l).sezione !== temp_section)
            {
                table               += "<tr>  <td><pre><b>" + listaSpesaGiorno.get(i_l).sezione + "</b></td>"
                                    +        "<td><pre>" + " "      + "</pre></td>"
                                    +        "<td><pre>" + " "           + "</pre></td>"
                                    +        "<td><pre>" + " "    + "</pre></td>"
                                    +"  </tr>";
            }
            temp_section = listaSpesaGiorno.get(i_l).sezione;
            table   += "<tr>  <td><pre>" + listaSpesaGiorno.get(i_l).ingrediente + "</td>"
                        +        "<td><pre>" + listaSpesaGiorno.get(i_l).dose        + "</pre></td>"
                        +        "<td><pre>" + listaSpesaGiorno.get(i_l).unit        + "</pre></td>"
                        +        "<td><pre>" + " "    + "</pre></td>"
                        +"  </tr>";
        }
    }

    table+= "</table> </body> </html>";
    return table;
}



// get info from models functions
function getRecipeName (sel_meal, sel_recipe)
{
    var recipe_name = "";

    if (sel_meal === 0) recipe_name = breakfastModel.get(sel_recipe).name
    if (sel_meal === 1) recipe_name = primiModel.get(sel_recipe).name
    if (sel_meal === 2) recipe_name = secondiModel.get(sel_recipe).name
    if (sel_meal === 3) recipe_name = fullMealModel.get(sel_recipe).name
    if (sel_meal === 4) recipe_name = contorniModel.get(sel_recipe).name
    if (sel_meal === 5) recipe_name = fruttaModel.get(sel_recipe).name
    if (sel_meal === 6) recipe_name = paneModel.get(sel_recipe).name
    if (sel_meal === 7) recipe_name = snacksModel.get(sel_recipe).name
    if (sel_meal === 8) recipe_name = primiModel.get(sel_recipe).name
    if (sel_meal === 9) recipe_name = secondiModel.get(sel_recipe).name
    if (sel_meal === 10) recipe_name = fullMealModel.get(sel_recipe).name
    if (sel_meal === 11) recipe_name = contorniModel.get(sel_recipe).name
    if (sel_meal === 12) recipe_name = fruttaModel.get(sel_recipe).name
    if (sel_meal === 13)recipe_name = paneModel.get(sel_recipe).name

    return recipe_name;
}


function getRecipeTime (sel_meal, sel_recipe)
{
    var recipe_time = "";

    if (sel_meal === 0) recipe_time = breakfastModel.get(sel_recipe).time
    if (sel_meal === 1) recipe_time = primiModel.get(sel_recipe).time
    if (sel_meal === 2) recipe_time = secondiModel.get(sel_recipe).time
    if (sel_meal === 3) recipe_time = fullMealModel.get(sel_recipe).time
    if (sel_meal === 4) recipe_time = contorniModel.get(sel_recipe).time
    if (sel_meal === 5) recipe_time = fruttaModel.get(sel_recipe).time
    if (sel_meal === 6) recipe_time = paneModel.get(sel_recipe).time
    if (sel_meal === 7) recipe_time = snacksModel.get(sel_recipe).time
    if (sel_meal === 8) recipe_time = primiModel.get(sel_recipe).time
    if (sel_meal === 9) recipe_time = secondiModel.get(sel_recipe).time
    if (sel_meal === 10) recipe_time = fullMealModel.get(sel_recipe).time
    if (sel_meal === 11) recipe_time = contorniModel.get(sel_recipe).time
    if (sel_meal === 12) recipe_time = fruttaModel.get(sel_recipe).time
    if (sel_meal === 13)recipe_time = paneModel.get(sel_recipe).time

    return recipe_time;
}

function getRecipeRecipe(sel_meal, sel_recipe)
{
    var recipe_recipe = "";

    if (sel_meal === 0) recipe_recipe = breakfastModel.get(sel_recipe).recipe
    if (sel_meal === 1) recipe_recipe = primiModel.get(sel_recipe).recipe
    if (sel_meal === 2) recipe_recipe = secondiModel.get(sel_recipe).recipe
    if (sel_meal === 3) recipe_recipe = fullMealModel.get(sel_recipe).recipe
    if (sel_meal === 4) recipe_recipe = contorniModel.get(sel_recipe).recipe
    if (sel_meal === 5) recipe_recipe = fruttaModel.get(sel_recipe).recipe
    if (sel_meal === 6) recipe_recipe = paneModel.get(sel_recipe).recipe
    if (sel_meal === 7) recipe_recipe = snacksModel.get(sel_recipe).recipe
    if (sel_meal === 8) recipe_recipe = primiModel.get(sel_recipe).recipe
    if (sel_meal === 9) recipe_recipe = secondiModel.get(sel_recipe).recipe
    if (sel_meal === 10) recipe_recipe = fullMealModel.get(sel_recipe).recipe
    if (sel_meal === 11) recipe_recipe = contorniModel.get(sel_recipe).recipe
    if (sel_meal === 12) recipe_recipe = fruttaModel.get(sel_recipe).recipe
    if (sel_meal === 13)recipe_recipe = paneModel.get(sel_recipe).recipe

    return recipe_recipe;
}


function getRecipeNING (sel_meal, sel_recipe)
{
    var recipe_NING;

    if (sel_meal === 0) recipe_NING = breakfastModel.get(sel_recipe).ingredients.count
    if (sel_meal === 1) recipe_NING = primiModel.get(sel_recipe).ingredients.count
    if (sel_meal === 2) recipe_NING = secondiModel.get(sel_recipe).ingredients.count
    if (sel_meal === 3) recipe_NING = fullMealModel.get(sel_recipe).ingredients.count
    if (sel_meal === 4) recipe_NING = contorniModel.get(sel_recipe).ingredients.count
    if (sel_meal === 5) recipe_NING = fruttaModel.get(sel_recipe).ingredients.count
    if (sel_meal === 6) recipe_NING = paneModel.get(sel_recipe).ingredients.count
    if (sel_meal === 7) recipe_NING = snacksModel.get(sel_recipe).ingredients.count
    if (sel_meal === 8) recipe_NING = primiModel.get(sel_recipe).ingredients.count
    if (sel_meal === 9) recipe_NING = secondiModel.get(sel_recipe).ingredients.count
    if (sel_meal === 10) recipe_NING = fullMealModel.get(sel_recipe).ingredients.count
    if (sel_meal === 11) recipe_NING = contorniModel.get(sel_recipe).ingredients.count
    if (sel_meal === 12) recipe_NING = fruttaModel.get(sel_recipe).ingredients.count
    if (sel_meal === 13)recipe_NING = paneModel.get(sel_recipe).ingredients.count

    return recipe_NING;
}


function getRecipeIngName (sel_meal, sel_recipe, ing)
{
    var ing_name = "";

    if (sel_meal === 0) ing_name = breakfastModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 1) ing_name = primiModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 2) ing_name = secondiModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 3) ing_name = fullMealModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 4) ing_name = contorniModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 5) ing_name = fruttaModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 6) ing_name = paneModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 7) ing_name = snacksModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 8) ing_name = primiModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 9) ing_name = secondiModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 10) ing_name = fullMealModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 11) ing_name = contorniModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 12) ing_name = fruttaModel.get(sel_recipe).ingredients.get(ing).name_ing
    if (sel_meal === 13)ing_name = paneModel.get(sel_recipe).ingredients.get(ing).name_ing

    return ing_name;
}

function getRecipeIngDose (sel_meal, sel_recipe, ing)
{
    var ing_dose;

    if (sel_meal === 0) ing_dose = breakfastModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 1) ing_dose = primiModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 2) ing_dose = secondiModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 3) ing_dose = fullMealModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 4) ing_dose = contorniModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 5) ing_dose = fruttaModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 6) ing_dose = paneModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 7) ing_dose = snacksModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 8) ing_dose = primiModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 9) ing_dose = secondiModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 10) ing_dose = fullMealModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 11) ing_dose = contorniModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 12) ing_dose = fruttaModel.get(sel_recipe).ingredients.get(ing).dose
    if (sel_meal === 13)ing_dose = paneModel.get(sel_recipe).ingredients.get(ing).dose

    return ing_dose;
}

function getRecipeIngUnit (sel_meal, sel_recipe, ing)
{
    var ing_unit = "";

    if (sel_meal === 0) ing_unit = breakfastModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 1) ing_unit = primiModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 2) ing_unit = secondiModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 3) ing_unit = fullMealModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 4) ing_unit = contorniModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 5) ing_unit = fruttaModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 6) ing_unit = paneModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 7) ing_unit = snacksModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 8) ing_unit = primiModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 9) ing_unit = secondiModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 10) ing_unit = fullMealModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 11) ing_unit = contorniModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 12) ing_unit = fruttaModel.get(sel_recipe).ingredients.get(ing).unit
    if (sel_meal === 13)ing_unit = paneModel.get(sel_recipe).ingredients.get(ing).unit

    return ing_unit;
}
