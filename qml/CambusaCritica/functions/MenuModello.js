function setModelloAsMenu(id_modello)
{

    //set base issues for menu
    CalcMenu.setBranca(menuCC.get(id_modello).branca);
    CalcMenu.setEle(menuCC.get(id_modello).ele);

    CalcMenu.setPane(menuCC.get(id_modello).pane);
    CalcMenu.setActivity(menuCC.get(id_modello).activity);
    CalcMenu.setShortNDAYS(menuCC.get(id_modello).durata);


    if (
               (CalcMenu.getMeseIn() >= menuCC.get(id_modello).mese_min && CalcMenu.getMeseIn() <= menuCC.get(id_modello).mese_max)
            || (menuCC.get(id_modello).mese_max > 12 &&
                   (CalcMenu.getMeseIn()+12 >= menuCC.get(id_modello).mese_min && CalcMenu.getMeseIn()+12 <= menuCC.get(id_modello).mese_max)
               )
       )

        CalcMenu.setFresco(menuCC.get(id_modello).fresco);
    else                          CalcMenu.setFresco(1);


    CalcMenu.setDayFin(CalcMenu.calcDayFin());
    CalcMenu.setMeseFin(CalcMenu.calcMeseFin());


    ///set for each day the recipe from the model
    for (var i_day = 0; i_day < CalcMenu.getTotDays(); i_day++)
    //for (var i_day = 0; i_day < 1; i_day++)
    {

        //console.log("i_day = " + i_day);
        //for each day read and match to list ID the recipe from the model based on its name
        for (var i_meal = 0; i_meal < 14; i_meal++)
        {
          //  console.log("i_meal = " + i_meal);
            var recipe_modello;
            var recipe_database;
            //get recipe of the model at a given day for a given meal
            if (i_meal === 0)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).br);
                for (var i_scan = 0; i_scan < breakfastModel.count; i_scan++)
                {
                    recipe_database = String(breakfastModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setBreakfast(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === breakfastModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 1)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).pr1);
                for (i_scan = 0; i_scan < primiModel.count; i_scan++)
                {
                    recipe_database = String(primiModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                    //    console.log("found!! " + recipe_database);
                        CalcMenu.setPranzoPrimo(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === primiModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 2)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).pr2);
                for (i_scan = 0; i_scan < secondiModel.count; i_scan++)
                {
                    recipe_database = String(secondiModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                  //      console.log("found!! " + recipe_database);
                        CalcMenu.setPranzoSecondo(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === secondiModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 3)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).prc);
                for (i_scan = 0; i_scan < fullMealModel.count; i_scan++)
                {
                    recipe_database = String(fullMealModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
//                        console.log("found!! " + recipe_database);
                        CalcMenu.setPranzoCompleto(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === fullMealModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 4)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).pr3);
                for (i_scan = 0; i_scan < contorniModel.count; i_scan++)
                {
                    recipe_database = String(contorniModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setPranzoContorno(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === contorniModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 5)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).prf);
                for (i_scan = 0; i_scan < fruttaModel.count; i_scan++)
                {
                    recipe_database = String(fruttaModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setPranzoFrutta(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === fruttaModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 6)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).prp);
                for (i_scan = 0; i_scan < paneModel.count; i_scan++)
                {
                    recipe_database = String(paneModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setPranzoPane(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === paneModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 7)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).sn);
                for (i_scan = 0; i_scan < snacksModel.count; i_scan++)
                {
                    recipe_database = String(snacksModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                    //    console.log("found!! " + recipe_database);
                        CalcMenu.setMerenda(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === snacksModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 8)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).ce1);
                for (i_scan = 0; i_scan < primiModel.count; i_scan++)
                {
                    recipe_database = String(primiModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setCenaPrimo(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === primiModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 9)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).ce2);
                for (i_scan = 0; i_scan < secondiModel.count; i_scan++)
                {
                    recipe_database = String(secondiModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setCenaSecondo(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === secondiModel.count -1)  console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 10)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).cec);
                for (i_scan = 0; i_scan < fullMealModel.count; i_scan++)
                {
                    recipe_database = String(fullMealModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                    //    console.log("found!! " + recipe_database);
                        CalcMenu.setCenaCompleto(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === fullMealModel.count -1)  console.log("no matching for" + recipe_modello);
                }

            }
            if (i_meal === 11)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).ce3);
                for (i_scan = 0; i_scan < contorniModel.count; i_scan++)
                {
                    recipe_database = String(contorniModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                    //    console.log("found!! " + recipe_database);
                        CalcMenu.setCenaContorno(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === contorniModel.count -1)  console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 12)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).cef);
                for (i_scan = 0; i_scan < fruttaModel.count; i_scan++)
                {
                    recipe_database = String(fruttaModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setCenaFrutta(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === fruttaModel.count -1) console.log("no matching for" + recipe_modello);
                }
            }
            if (i_meal === 13)
            {
                recipe_modello  = String(menuCC.get(id_modello).ricette.get(i_day).cep);
                for (i_scan = 0; i_scan < paneModel.count; i_scan++)
                {
                    recipe_database = String(paneModel.get(i_scan).name);
                    if (recipe_database === recipe_modello)
                    {
                   //     console.log("found!! " + recipe_database);
                        CalcMenu.setCenaPane(i_day, i_scan);
                        break;
                    }
                    else if (i_scan === paneModel.count -1)  console.log("no matching for" + recipe_modello);
                }
            }
        }

    }    
}
