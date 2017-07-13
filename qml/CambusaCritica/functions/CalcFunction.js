function getBMI(altezza, peso)
{

    return Math.floor(peso_slider.value / (altezza_slider.value*altezza_slider.value*0.0001) *10)/10;

}

function getBMI_Category(BMI, age)
{

    if (age > 15)
    {
        /*
        if      (BMI < 15.)  return " Very severely underweight";
        else if (BMI < 16.)  return " Severely underweight";
        else if (BMI < 18.5) return " Underweight";
        else if (BMI < 25.)  return " Normal";
        else if (BMI < 30.)  return " Overweight";
        else if (BMI < 35.)  return " Moderately obese (class I)";
        else if (BMI < 40.)  return " Severaly obese (class II)";
        else                 return " Very severaly obese (class III)";
        */

        if      (BMI < 15.)  return " Molto gravemente sottopeso";
        else if (BMI < 16.)  return " Gravemente sottopeso";
        else if (BMI < 18.5) return " Sottopeso";
        else if (BMI < 25.)  return " Normale";
        else if (BMI < 30.)  return " Sovrappeso";
        else if (BMI < 35.)  return " Moderatamente obeso (classe I)";
        else if (BMI < 40.)  return " Gravemente obeso (classe II)";
        else                 return " Molto gravemente obeso (classe III)";
    }
    /*

    if (age < 20 && age > 2)
    {

    }*/

    else return "età non valida"


}


