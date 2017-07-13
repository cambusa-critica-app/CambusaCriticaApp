import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import "../functions/CalcMenu.js" as CalcMenu
import "../functions/CalcList.js" as CalcList
import "../"



Item{
    id: name_menu
    property string name_menu_0;
    property string name_menu_1;
    property string name_menu_2;
    property string name_menu_3;
    property string name_menu_4;


    Settings{
         id: name_settings
         property alias name_menu_0: name_menu.name_menu_0
         property alias name_menu_1: name_menu.name_menu_1
         property alias name_menu_2: name_menu.name_menu_2
         property alias name_menu_3: name_menu.name_menu_3
         property alias name_menu_4: name_menu.name_menu_4

    }

    function setNames ()
    {
       console.log ("setting names")

       CalcMenu.setNome(0, name_menu_0);
       CalcMenu.setNome(1, name_menu_1);
       CalcMenu.setNome(2, name_menu_2);
       CalcMenu.setNome(3, name_menu_3);
       CalcMenu.setNome(4, name_menu_4);

       console.log ("SETTING MENU NAMES ...")
        /*
       console.log ("name_menu_0 = " + name_menu_0)
       console.log ("name_menu_1 = " + name_menu_1)
       console.log ("name_menu_2 = " + name_menu_2)
       console.log ("name_menu_3 = " + name_menu_3)
       console.log ("name_menu_4 = " + name_menu_4)

        console.log ("name_menu_0 = " + CalcMenu.getNome(0))
        console.log ("name_menu_1 = " + CalcMenu.getNome(1))
        console.log ("name_menu_2 = " + CalcMenu.getNome(2))
        console.log ("name_menu_3 = " + CalcMenu.getNome(3))
        console.log ("name_menu_4 = " + CalcMenu.getNome(4))*/
    }

    function storeNames()
    {
       name_menu_0 = CalcMenu.getNome(0)
       name_menu_1 = CalcMenu.getNome(1)
       name_menu_2 = CalcMenu.getNome(2)
       name_menu_3 = CalcMenu.getNome(3)
       name_menu_4 = CalcMenu.getNome(4)

        name_settings.name_menu_0 = name_menu.name_menu_0;
        name_settings.name_menu_1 = name_menu.name_menu_1;
        name_settings.name_menu_2 = name_menu.name_menu_2;
        name_settings.name_menu_3 = name_menu.name_menu_3;
        name_settings.name_menu_4 = name_menu.name_menu_4;


       console.log ("STORING MENU NAMES ...")
        /*
       console.log ("name_menu_0 = " + CalcMenu.getNome(0))
       console.log ("name_menu_1 = " + CalcMenu.getNome(1))
       console.log ("name_menu_2 = " + CalcMenu.getNome(2))
       console.log ("name_menu_3 = " + CalcMenu.getNome(3))
       console.log ("name_menu_4 = " + CalcMenu.getNome(4))*/
    }
}
