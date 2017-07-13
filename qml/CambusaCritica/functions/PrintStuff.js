function printPDF(my_filename)
{


    printer.filename = my_filename + CalcMenu.getCurrentMenuName() + "_cc_menu.pdf";


    printer.endpainter = false;
    printer.endpage = false;

    // header menù
    printer.totitems = 3;   printer.row = 5;   printer.column = 5;
    printer.linewidth = 0;
    printer.indexday = 2;
    printer.indexmeal = 2;
    printer.currentslottext = "Menù: " + CalcMenu.getCurrentMenuName() + "\n\nBranca: " + CalcMenu.getBranca() + "\n\nDurata: " + CalcMenu.getTotDays() + " giorni";
    printer.indexday = 3;
    printer.indexmeal = 3;
    printer.currentslottext = " ";
    printer.endpage = true;
    printer.currentslottext = " ";
    printer.endpage = false;

    //printing menù table
    printer.totitems = CalcMenu.getTotDays();
    printer.row = 7;
    printer.column = 5;
    printer.linewidth = 2;

    //print menù pdf
    if (CalcMenu.getPrintMenu() === 1)
    {
        //table header
        printer.indexday = 0;
        printer.indexmeal = 0;
        printer.currentslottext = " ";
        printer.indexmeal = 1;
        printer.currentslottext = "Colazione";
        printer.indexmeal = 2;
        printer.currentslottext = "Pranzo";
        printer.indexmeal = 3;
        printer.currentslottext = "Merenda";
        printer.indexmeal = 4;
        printer.currentslottext = "Cena";

        for (var i_day= 0; i_day < CalcMenu.getTotDays(); i_day++)
        {
            console.log ("i_day = " +  i_day);
            printer.indexday = i_day+1;

            //giorno
            printer.indexmeal = 0;
            printer.currentslottext = CalcMenu.getGiornoEsatto(i_day+1);

            //colazione
            printer.indexmeal = 1;
            if (breakfastModel.get(CalcMenu.returnBreakfast(i_day)).name!=="NIENTE") printer.currentslottext = breakfastModel.get(CalcMenu.returnBreakfast(i_day)).name;
            else printer.currentslottext = " ";

            //pranzo
            printer.indexmeal = 2;
            var temp = "";
            if (primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).name!== "NIENTE")      temp += primiModel.get(CalcMenu.returnPranzoPrimo(i_day)).name + "\n"
            if (secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).name!== "NIENTE")  temp += secondiModel.get(CalcMenu.returnPranzoSecondo(i_day)).name + "\n"
            if (contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).name!== "NIENTE")temp += contorniModel.get(CalcMenu.returnPranzoContorno(i_day)).name + "\n"
            if (fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).name!== "NIENTE")    temp += fruttaModel.get(CalcMenu.returnPranzoFrutta(i_day)).name + "\n"
            if (paneModel.get(CalcMenu.returnPranzoPane(i_day)).name!== "NIENTE")        temp += paneModel.get(CalcMenu.returnPranzoPane(i_day)).name

            printer.currentslottext = temp;

            //merenda
            printer.indexmeal = 3;
            if (snacksModel.get(CalcMenu.returnMerenda(i_day)).name!=="NIENTE") printer.currentslottext = snacksModel.get(CalcMenu.returnMerenda(i_day)).name;
            else printer.currentslottext = " ";


            //cena
            var temp_cena = "";
            if (fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).name !=="NIENTE")  temp_cena += fullMealModel.get(CalcMenu.returnCenaCompleto(i_day)).name  + "\n"
            if (contorniModel.get(CalcMenu.returnCenaContorno(i_day)).name  !=="NIENTE") temp_cena += contorniModel.get(CalcMenu.returnCenaContorno(i_day)).name   + "\n"
            if (fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).name !=="NIENTE")      temp_cena += fruttaModel.get(CalcMenu.returnCenaFrutta(i_day)).name  + "\n"
            if (paneModel.get(CalcMenu.returnCenaPane(i_day)).name !=="NIENTE")          temp_cena += paneModel.get(CalcMenu.returnCenaPane(i_day)).name

            printer.indexmeal = 4;
            printer.currentslottext = temp_cena;
        }
        printer.endpage = true;
        printer.currentslottext = "";
        printer.endpage = false;

    }

    //print spesa pdf
    if (CalcMenu.getPrintTotale() === 1)
    {

        // header spesa
        printer.totitems = 3;   printer.row = 5;   printer.column = 5;
        printer.linewidth = 0;
        printer.indexday = 2;
        printer.indexmeal = 2;
        printer.currentslottext = "Spesa totale per: " + CalcMenu.getCurrentMenuName() + "\n\nBranca: " + CalcMenu.getBranca() + "\n\nDurata: " + CalcMenu.getTotDays() + " giorni";
        printer.indexday = 3;
        printer.indexmeal = 3;
        printer.currentslottext = " ";
        printer.endpage = true;
        printer.currentslottext = " ";
        printer.endpage = false;


        CalcList.azzeraListaSpesa(-1);
        CalcList.creaListaSpesa(-1);

        printer.totitems = listaSpesa.count;
        console.log("items spesa = " + listaSpesa.count);
        printer.row = 30;
        printer.column = 4;
        printer.linewidth = 1;

        //table header
        printer.indexday = 0;
        printer.indexmeal = 0;
        printer.currentslottext = "Ingrediente";
        printer.indexmeal = 1;
        printer.currentslottext = "Quantità";
        printer.indexmeal = 2;
        printer.currentslottext = "Unità";
        printer.indexmeal = 3;
        printer.currentslottext = "Note";


        var temp_section = "";
        for (var i_item= 0; i_item < listaSpesa.count; i_item++)
        {
            printer.indexday = i_item+1;

            if (listaSpesa.get(i_item).sezione !== temp_section)
            {
                //printer.linewidth = 2;
                printer.indexmeal = 0;
                printer.currentslottext = listaSpesa.get(i_item).sezione;
                printer.indexmeal = 1;  printer.currentslottext = " ";
                printer.indexmeal = 2;  printer.currentslottext = " ";
                printer.indexmeal = 3;  printer.currentslottext = " ";
                temp_section = listaSpesa.get(i_item).sezione;
            }
            else
            {
                //printer.linewidth = 1;
                printer.indexmeal = 0;  printer.currentslottext = listaSpesa.get(i_item).ingrediente;
                printer.indexmeal = 1;  printer.currentslottext = listaSpesa.get(i_item).dose;
                printer.indexmeal = 2;  printer.currentslottext = listaSpesa.get(i_item).unit;
                printer.indexmeal = 3;  printer.currentslottext = " ";
            }
        }
        printer.endpage = true;
        printer.currentslottext = "";
        printer.endpage = false;
    }

    //print spesa giornaliera pdf
    if (CalcMenu.getPrintGiornaliera() === 1)
    {
        printer.row = 30;
        printer.column = 4;
        printer.linewidth = 1;

        //table header
        printer.indexday = 0;
        printer.indexmeal = 0;                     printer.currentslottext = "Ingrediente";
        printer.indexmeal = 1;                     printer.currentslottext = "Quantità";
        printer.indexmeal = 2;                     printer.currentslottext = "Unità";
        printer.indexmeal = 3;                     printer.currentslottext = "Note";

        var row_counter=1;

        for (var i_d = 0; i_d < CalcMenu.getTotDays(); i_d ++)
        {
            CalcList.azzeraListaSpesa(i_d);
            CalcList.creaListaSpesa(i_d);
            //printer.linewidth = 2;

            //giorno header
            printer.indexday = row_counter;
            printer.indexmeal = 0;  printer.currentslottext = CalcMenu.getGiornoEsatto(i_d+1);
            printer.indexmeal = 1;  printer.currentslottext = " ";
            printer.indexmeal = 2;  printer.currentslottext = " ";
            printer.indexmeal = 3;  printer.currentslottext = " ";
            printer.linewidth = 1;
            row_counter++;

            //lista per sezione
            temp_section  = " "

            for (i_item= 0; i_item < listaSpesa.count; i_item++)
            {
                printer.indexday = row_counter;
                if (listaSpesa.get(i_item).sezione !== temp_section)
                {

                    //printer.linewidth = 2;
                    printer.indexmeal = 0;  printer.currentslottext = listaSpesa.get(i_item).sezione;
                    printer.indexmeal = 1;  printer.currentslottext = " ";
                    printer.indexmeal = 2;  printer.currentslottext = " ";
                    printer.indexmeal = 3;  printer.currentslottext = " ";
                    temp_section = listaSpesa.get(i_item).sezione;
                }
                else
                {
                    //printer.linewidth = 1;
                    printer.indexmeal = 0;  printer.currentslottext = listaSpesa.get(i_item).ingrediente;
                    printer.indexmeal = 1;  printer.currentslottext = listaSpesa.get(i_item).dose;
                    printer.indexmeal = 2;  printer.currentslottext = listaSpesa.get(i_item).unit;
                    printer.indexmeal = 3;  printer.currentslottext = " ";
                }
                row_counter++;
            }
        }
        printer.endpage = true;
        //printer.currentslottext = "";
    }

    printer.endpainter = true;
    printer.currentslottext = "";

}


function printHTML (my_filename)
{


    if (CalcMenu.getPrintMenu() === 1)        my_file.menutable = CalcList.writeHTML_MenuTable();
    else                                      my_file.menutable = " ";

    if (CalcMenu.getPrintTotale() === 1)      my_file.spesatable = CalcList.writeHTML_SpesaTable();
    else                                      my_file.spesatable = " ";

    if (CalcMenu.getPrintGiornaliera() === 1)  my_file.spesagiornotable = CalcList.writeHTML_SpesaGiornoTable();
    else                                       my_file.spesagiornotable = " ";

    //console.log("last part of string = " + temp_filename.substring(temp_filename.length-4))
    my_file.filename = my_filename + CalcMenu.getCurrentMenuName() + "_cc_menu.html";



}
