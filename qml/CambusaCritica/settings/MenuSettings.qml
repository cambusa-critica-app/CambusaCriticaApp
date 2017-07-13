import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import "../functions/CalcMenu.js" as CalcMenu
import "../"



Item{

    id: property_settings
    visible: false

    property var b1;
    property var b2;
    property var b3;
    property var b4;
    property var b5;
    property var b6;
    property var b7;
    property var b8;
    property var b9;
    property var b10;
    property var b11;
    property var b12;
    property var b13;
    property var b14;
    property var b15;

    property var p1;
    property var p2;
    property var p3;
    property var p4;
    property var p5;
    property var p6;
    property var p7;
    property var p8;
    property var p9;
    property var p10;
    property var p11;
    property var p12;
    property var p13;
    property var p14;
    property var p15;

    property var pp1;
    property var pp2;
    property var pp3;
    property var pp4;
    property var pp5;
    property var pp6;
    property var pp7;
    property var pp8;
    property var pp9;
    property var pp10;
    property var pp11;
    property var pp12;
    property var pp13;
    property var pp14;
    property var pp15;

    //pranzo completo
    property var ppc1;
    property var ppc2;
    property var ppc3;
    property var ppc4;
    property var ppc5;
    property var ppc6;
    property var ppc7;
    property var ppc8;
    property var ppc9;
    property var ppc10;
    property var ppc11;
    property var ppc12;
    property var ppc13;
    property var ppc14;
    property var ppc15;

    //pranzo contorno
    property var ppp1;
    property var ppp2;
    property var ppp3;
    property var ppp4;
    property var ppp5;
    property var ppp6;
    property var ppp7;
    property var ppp8;
    property var ppp9;
    property var ppp10;
    property var ppp11;
    property var ppp12;
    property var ppp13;
    property var ppp14;
    property var ppp15;

    property var m1;
    property var m2;
    property var m3;
    property var m4;
    property var m5;
    property var m6;
    property var m7;
    property var m8;
    property var m9;
    property var m10;
    property var m11;
    property var m12;
    property var m13;
    property var m14;
    property var m15;

    property var c_p1;
    property var c_p2;
    property var c_p3;
    property var c_p4;
    property var c_p5;
    property var c_p6;
    property var c_p7;
    property var c_p8;
    property var c_p9;
    property var c_p10;
    property var c_p11;
    property var c_p12;
    property var c_p13;
    property var c_p14;
    property var c_p15;

    property var c_s1;
    property var c_s2;
    property var c_s3;
    property var c_s4;
    property var c_s5;
    property var c_s6;
    property var c_s7;
    property var c_s8;
    property var c_s9;
    property var c_s10;
    property var c_s11;
    property var c_s12;
    property var c_s13;
    property var c_s14;
    property var c_s15;
    //completo
    property var c1;
    property var c2;
    property var c3;
    property var c4;
    property var c5;
    property var c6;
    property var c7;
    property var c8;
    property var c9;
    property var c10;
    property var c11;
    property var c12;
    property var c13;
    property var c14;
    property var c15;
    //contorno
    property var cc1;
    property var cc2;
    property var cc3;
    property var cc4;
    property var cc5;
    property var cc6;
    property var cc7;
    property var cc8;
    property var cc9;
    property var cc10;
    property var cc11;
    property var cc12;
    property var cc13;
    property var cc14;
    property var cc15;

    property var fp1;
    property var fp2;
    property var fp3;
    property var fp4;
    property var fp5;
    property var fp6;
    property var fp7;
    property var fp8;
    property var fp9;
    property var fp10;
    property var fp11;
    property var fp12;
    property var fp13;
    property var fp14;
    property var fp15;

    property var fc1;
    property var fc2;
    property var fc3;
    property var fc4;
    property var fc5;
    property var fc6;
    property var fc7;
    property var fc8;
    property var fc9;
    property var fc10;
    property var fc11;
    property var fc12;
    property var fc13;
    property var fc14;
    property var fc15;

    property var pnp1;
    property var pnp2;
    property var pnp3;
    property var pnp4;
    property var pnp5;
    property var pnp6;
    property var pnp7;
    property var pnp8;
    property var pnp9;
    property var pnp10;
    property var pnp11;
    property var pnp12;
    property var pnp13;
    property var pnp14;
    property var pnp15;

    property var pnc1;
    property var pnc2;
    property var pnc3;
    property var pnc4;
    property var pnc5;
    property var pnc6;
    property var pnc7;
    property var pnc8;
    property var pnc9;
    property var pnc10;
    property var pnc11;
    property var pnc12;
    property var pnc13;
    property var pnc14;
    property var pnc15;

    property int n_male;
    property int n_female;
    property int n_ragazzi;
    property int n_ragazze;
    property int n_bambini;
    property int n_bambine;

    property int n_activity;
    property int n_forno;
    property int n_verdura;

    property int n_g_in;
    property int n_g_fin;
    property int n_m_in;
    property int n_m_fin;
    property int n_days;

    property var menu_name;


    Settings
    {
        id: menu_settings
        category: "cat_" + CalcMenu.getMenuID()

        property alias b1: property_settings.b1
        property alias b2: property_settings.b2
        property alias b3: property_settings.b3
        property alias b4: property_settings.b4
        property alias b5: property_settings.b5
        property alias b6: property_settings.b6
        property alias b7: property_settings.b7
        property alias b8: property_settings.b8
        property alias b9: property_settings.b9
        property alias b10: property_settings.b10
        property alias b11: property_settings.b11
        property alias b12: property_settings.b12
        property alias b13: property_settings.b13
        property alias b14: property_settings.b14
        property alias b15: property_settings.b15

        property alias p1: property_settings.p1
        property alias p2: property_settings.p2
        property alias p3: property_settings.p3
        property alias p4: property_settings.p4
        property alias p5: property_settings.p5
        property alias p6: property_settings.p6
        property alias p7: property_settings.p7
        property alias p8: property_settings.p8
        property alias p9: property_settings.p9
        property alias p10: property_settings.p10
        property alias p11: property_settings.p11
        property alias p12: property_settings.p12
        property alias p13: property_settings.p13
        property alias p14: property_settings.p14
        property alias p15: property_settings.p15

        property alias pp1: property_settings.pp1
        property alias pp2: property_settings.pp2
        property alias pp3: property_settings.pp3
        property alias pp4: property_settings.pp4
        property alias pp5: property_settings.pp5
        property alias pp6: property_settings.pp6
        property alias pp7: property_settings.pp7
        property alias pp8: property_settings.pp8
        property alias pp9: property_settings.pp9
        property alias pp10: property_settings.pp10
        property alias pp11: property_settings.pp11
        property alias pp12: property_settings.pp12
        property alias pp13: property_settings.pp13
        property alias pp14: property_settings.pp14
        property alias pp15: property_settings.pp15

        //pranzo completo
        property alias ppc1: property_settings.ppc1
        property alias ppc2: property_settings.ppc2
        property alias ppc3: property_settings.ppc3
        property alias ppc4: property_settings.ppc4
        property alias ppc5: property_settings.ppc5
        property alias ppc6: property_settings.ppc6
        property alias ppc7: property_settings.ppc7
        property alias ppc8: property_settings.ppc8
        property alias ppc9: property_settings.ppc9
        property alias ppc10: property_settings.ppc10
        property alias ppc11: property_settings.ppc11
        property alias ppc12: property_settings.ppc12
        property alias ppc13: property_settings.ppc13
        property alias ppc14: property_settings.ppc14
        property alias ppc15: property_settings.ppc15

        property alias ppp1: property_settings.ppp1
        property alias ppp2: property_settings.ppp2
        property alias ppp3: property_settings.ppp3
        property alias ppp4: property_settings.ppp4
        property alias ppp5: property_settings.ppp5
        property alias ppp6: property_settings.ppp6
        property alias ppp7: property_settings.ppp7
        property alias ppp8: property_settings.ppp8
        property alias ppp9: property_settings.ppp9
        property alias ppp10: property_settings.ppp10
        property alias ppp11: property_settings.ppp11
        property alias ppp12: property_settings.ppp12
        property alias ppp13: property_settings.ppp13
        property alias ppp14: property_settings.ppp14
        property alias ppp15: property_settings.ppp15

        property alias m1: property_settings.m1
        property alias m2: property_settings.m2
        property alias m3: property_settings.m3
        property alias m4: property_settings.m4
        property alias m5: property_settings.m5
        property alias m6: property_settings.m6
        property alias m7: property_settings.m7
        property alias m8: property_settings.m8
        property alias m9: property_settings.m9
        property alias m10: property_settings.m10
        property alias m11: property_settings.m11
        property alias m12: property_settings.m12
        property alias m13: property_settings.m13
        property alias m14: property_settings.m14
        property alias m15: property_settings.m15

        property alias c_p1: property_settings.c_p1
        property alias c_p2: property_settings.c_p2
        property alias c_p3: property_settings.c_p3
        property alias c_p4: property_settings.c_p4
        property alias c_p5: property_settings.c_p5
        property alias c_p6: property_settings.c_p6
        property alias c_p7: property_settings.c_p7
        property alias c_p8: property_settings.c_p8
        property alias c_p9: property_settings.c_p9
        property alias c_p10: property_settings.c_p10
        property alias c_p11: property_settings.c_p11
        property alias c_p12: property_settings.c_p12
        property alias c_p13: property_settings.c_p13
        property alias c_p14: property_settings.c_p14
        property alias c_p15: property_settings.c_p15

        property alias c_s1: property_settings.c_s1
        property alias c_s2: property_settings.c_s2
        property alias c_s3: property_settings.c_s3
        property alias c_s4: property_settings.c_s4
        property alias c_s5: property_settings.c_s5
        property alias c_s6: property_settings.c_s6
        property alias c_s7: property_settings.c_s7
        property alias c_s8: property_settings.c_s8
        property alias c_s9: property_settings.c_s9
        property alias c_s10: property_settings.c_s10
        property alias c_s11: property_settings.c_s11
        property alias c_s12: property_settings.c_s12
        property alias c_s13: property_settings.c_s13
        property alias c_s14: property_settings.c_s14
        property alias c_s15: property_settings.c_s15

        property alias c1: property_settings.c1
        property alias c2: property_settings.c2
        property alias c3: property_settings.c3
        property alias c4: property_settings.c4
        property alias c5: property_settings.c5
        property alias c6: property_settings.c6
        property alias c7: property_settings.c7
        property alias c8: property_settings.c8
        property alias c9: property_settings.c9
        property alias c10: property_settings.c10
        property alias c11: property_settings.c11
        property alias c12: property_settings.c12
        property alias c13: property_settings.c13
        property alias c14: property_settings.c14
        property alias c15: property_settings.c15

        property alias cc1: property_settings.cc1
        property alias cc2: property_settings.cc2
        property alias cc3: property_settings.cc3
        property alias cc4: property_settings.cc4
        property alias cc5: property_settings.cc5
        property alias cc6: property_settings.cc6
        property alias cc7: property_settings.cc7
        property alias cc8: property_settings.cc8
        property alias cc9: property_settings.cc9
        property alias cc10: property_settings.cc10
        property alias cc11: property_settings.cc11
        property alias cc12: property_settings.cc12
        property alias cc13: property_settings.cc13
        property alias cc14: property_settings.cc14
        property alias cc15: property_settings.cc15

        property alias fp1: property_settings.fp1
        property alias fp2: property_settings.fp2
        property alias fp3: property_settings.fp3
        property alias fp4: property_settings.fp4
        property alias fp5: property_settings.fp5
        property alias fp6: property_settings.fp6
        property alias fp7: property_settings.fp7
        property alias fp8: property_settings.fp8
        property alias fp9: property_settings.fp9
        property alias fp10: property_settings.fp10
        property alias fp11: property_settings.fp11
        property alias fp12: property_settings.fp12
        property alias fp13: property_settings.fp13
        property alias fp14: property_settings.fp14
        property alias fp15: property_settings.fp15

        property alias fc1: property_settings.fc1
        property alias fc2: property_settings.fc2
        property alias fc3: property_settings.fc3
        property alias fc4: property_settings.fc4
        property alias fc5: property_settings.fc5
        property alias fc6: property_settings.fc6
        property alias fc7: property_settings.fc7
        property alias fc8: property_settings.fc8
        property alias fc9: property_settings.fc9
        property alias fc10: property_settings.fc10
        property alias fc11: property_settings.fc11
        property alias fc12: property_settings.fc12
        property alias fc13: property_settings.fc13
        property alias fc14: property_settings.fc14
        property alias fc15: property_settings.fc15

        property alias pnp1: property_settings.pnp1
        property alias pnp2: property_settings.pnp2
        property alias pnp3: property_settings.pnp3
        property alias pnp4: property_settings.pnp4
        property alias pnp5: property_settings.pnp5
        property alias pnp6: property_settings.pnp6
        property alias pnp7: property_settings.pnp7
        property alias pnp8: property_settings.pnp8
        property alias pnp9: property_settings.pnp9
        property alias pnp10: property_settings.pnp10
        property alias pnp11: property_settings.pnp11
        property alias pnp12: property_settings.pnp12
        property alias pnp13: property_settings.pnp13
        property alias pnp14: property_settings.pnp14
        property alias pnp15: property_settings.pnp15

        property alias pnc1: property_settings.pnc1
        property alias pnc2: property_settings.pnc2
        property alias pnc3: property_settings.pnc3
        property alias pnc4: property_settings.pnc4
        property alias pnc5: property_settings.pnc5
        property alias pnc6: property_settings.pnc6
        property alias pnc7: property_settings.pnc7
        property alias pnc8: property_settings.pnc8
        property alias pnc9: property_settings.pnc9
        property alias pnc10: property_settings.pnc10
        property alias pnc11: property_settings.pnc11
        property alias pnc12: property_settings.pnc12
        property alias pnc13: property_settings.pnc13
        property alias pnc14: property_settings.pnc14
        property alias pnc15: property_settings.pnc15

        property alias n_male:  property_settings.n_male
        property alias n_female:   property_settings.n_female

        property alias n_activity: property_settings.n_activity
        property alias n_forno:    property_settings.n_forno
        property alias n_verdura:  property_settings.n_verdura

        property alias n_g_in:     property_settings.n_g_in
        property alias n_g_fin:    property_settings.n_g_fin
        property alias n_m_in:     property_settings.n_m_in
        property alias n_m_fin:    property_settings.n_m_fin
        property alias n_days:     property_settings.n_days
        property alias menu_name:  property_settings.menu_name



        Component.onCompleted:
        {
            console.log("component settings completed .." + property_settings.p1);
            console.log("settings category: " + menu_settings.category)
        }
        Component.onDestruction:
        {
            console.log("component settings destroyed .." + property_settings.p1);
        }
    }

    function storeMenu ()
    {
        console.log("function storeMenu has been called!")

        property_settings.b1 = CalcMenu.returnBreakfast(0)
        property_settings.b2 = CalcMenu.returnBreakfast(1)
        property_settings.b3 = CalcMenu.returnBreakfast(2)
        property_settings.b4 = CalcMenu.returnBreakfast(3)
        property_settings.b5 = CalcMenu.returnBreakfast(4)
        property_settings.b6 = CalcMenu.returnBreakfast(5)
        property_settings.b7 = CalcMenu.returnBreakfast(6)
        property_settings.b8 = CalcMenu.returnBreakfast(7)
        property_settings.b9 = CalcMenu.returnBreakfast(8)
        property_settings.b10 = CalcMenu.returnBreakfast(9)
        property_settings.b11 = CalcMenu.returnBreakfast(10)
        property_settings.b12 = CalcMenu.returnBreakfast(11)
        property_settings.b13 = CalcMenu.returnBreakfast(12)
        property_settings.b14 = CalcMenu.returnBreakfast(13)
        property_settings.b15 = CalcMenu.returnBreakfast(14)

        property_settings.p1 = CalcMenu.returnPranzoPrimo(0)
        property_settings.p2 = CalcMenu.returnPranzoPrimo(1)
        property_settings.p3 = CalcMenu.returnPranzoPrimo(2)
        property_settings.p4 = CalcMenu.returnPranzoPrimo(3)
        property_settings.p5 = CalcMenu.returnPranzoPrimo(4)
        property_settings.p6 = CalcMenu.returnPranzoPrimo(5)
        property_settings.p7 = CalcMenu.returnPranzoPrimo(6)
        property_settings.p8 = CalcMenu.returnPranzoPrimo(7)
        property_settings.p9 = CalcMenu.returnPranzoPrimo(8)
        property_settings.p10 = CalcMenu.returnPranzoPrimo(9)
        property_settings.p11 = CalcMenu.returnPranzoPrimo(10)
        property_settings.p12 = CalcMenu.returnPranzoPrimo(11)
        property_settings.p13 = CalcMenu.returnPranzoPrimo(12)
        property_settings.p14 = CalcMenu.returnPranzoPrimo(13)
        property_settings.p15 = CalcMenu.returnPranzoPrimo(14)

        property_settings.pp1 = CalcMenu.returnPranzoSecondo(0)
        property_settings.pp2 = CalcMenu.returnPranzoSecondo(1)
        property_settings.pp3 = CalcMenu.returnPranzoSecondo(2)
        property_settings.pp4 = CalcMenu.returnPranzoSecondo(3)
        property_settings.pp5 = CalcMenu.returnPranzoSecondo(4)
        property_settings.pp6 = CalcMenu.returnPranzoSecondo(5)
        property_settings.pp7 = CalcMenu.returnPranzoSecondo(6)
        property_settings.pp8 = CalcMenu.returnPranzoSecondo(7)
        property_settings.pp9 = CalcMenu.returnPranzoSecondo(8)
        property_settings.pp10 = CalcMenu.returnPranzoSecondo(9)
        property_settings.pp11 = CalcMenu.returnPranzoSecondo(10)
        property_settings.pp12 = CalcMenu.returnPranzoSecondo(11)
        property_settings.pp13 = CalcMenu.returnPranzoSecondo(12)
        property_settings.pp14 = CalcMenu.returnPranzoSecondo(13)
        property_settings.pp15 = CalcMenu.returnPranzoSecondo(14)

        //pranzo completo
        property_settings.ppc1 = CalcMenu.returnPranzoCompleto(0)
        property_settings.ppc2 = CalcMenu.returnPranzoCompleto(1)
        property_settings.ppc3 = CalcMenu.returnPranzoCompleto(2)
        property_settings.ppc4 = CalcMenu.returnPranzoCompleto(3)
        property_settings.ppc5 = CalcMenu.returnPranzoCompleto(4)
        property_settings.ppc6 = CalcMenu.returnPranzoCompleto(5)
        property_settings.ppc7 = CalcMenu.returnPranzoCompleto(6)
        property_settings.ppc8 = CalcMenu.returnPranzoCompleto(7)
        property_settings.ppc9 = CalcMenu.returnPranzoCompleto(8)
        property_settings.ppc10 = CalcMenu.returnPranzoCompleto(9)
        property_settings.ppc11 = CalcMenu.returnPranzoCompleto(10)
        property_settings.ppc12 = CalcMenu.returnPranzoCompleto(11)
        property_settings.ppc13 = CalcMenu.returnPranzoCompleto(12)
        property_settings.ppc14 = CalcMenu.returnPranzoCompleto(13)
        property_settings.ppc15 = CalcMenu.returnPranzoCompleto(14)

        property_settings.ppp1 = CalcMenu.returnPranzoContorno(0)
        property_settings.ppp2 = CalcMenu.returnPranzoContorno(1)
        property_settings.ppp3 = CalcMenu.returnPranzoContorno(2)
        property_settings.ppp4 = CalcMenu.returnPranzoContorno(3)
        property_settings.ppp5 = CalcMenu.returnPranzoContorno(4)
        property_settings.ppp6 = CalcMenu.returnPranzoContorno(5)
        property_settings.ppp7 = CalcMenu.returnPranzoContorno(6)
        property_settings.ppp8 = CalcMenu.returnPranzoContorno(7)
        property_settings.ppp9 = CalcMenu.returnPranzoContorno(8)
        property_settings.ppp10 = CalcMenu.returnPranzoContorno(9)
        property_settings.ppp11 = CalcMenu.returnPranzoContorno(10)
        property_settings.ppp12 = CalcMenu.returnPranzoContorno(11)
        property_settings.ppp13 = CalcMenu.returnPranzoContorno(12)
        property_settings.ppp14 = CalcMenu.returnPranzoContorno(13)
        property_settings.ppp15 = CalcMenu.returnPranzoContorno(14)

        property_settings.m1 = CalcMenu.returnMerenda(0)
        property_settings.m2 = CalcMenu.returnMerenda(1)
        property_settings.m3 = CalcMenu.returnMerenda(2)
        property_settings.m4 = CalcMenu.returnMerenda(3)
        property_settings.m5 = CalcMenu.returnMerenda(4)
        property_settings.m6 = CalcMenu.returnMerenda(5)
        property_settings.m7 = CalcMenu.returnMerenda(6)
        property_settings.m8 = CalcMenu.returnMerenda(7)
        property_settings.m9 = CalcMenu.returnMerenda(8)
        property_settings.m10 = CalcMenu.returnMerenda(9)
        property_settings.m11 = CalcMenu.returnMerenda(10)
        property_settings.m12 = CalcMenu.returnMerenda(11)
        property_settings.m13 = CalcMenu.returnMerenda(12)
        property_settings.m14 = CalcMenu.returnMerenda(13)
        property_settings.m15 = CalcMenu.returnMerenda(14)


        property_settings.c_p1 = CalcMenu.returnCenaPrimo(0)
        property_settings.c_p2 = CalcMenu.returnCenaPrimo(1)
        property_settings.c_p3 = CalcMenu.returnCenaPrimo(2)
        property_settings.c_p4 = CalcMenu.returnCenaPrimo(3)
        property_settings.c_p5 = CalcMenu.returnCenaPrimo(4)
        property_settings.c_p6 = CalcMenu.returnCenaPrimo(5)
        property_settings.c_p7 = CalcMenu.returnCenaPrimo(6)
        property_settings.c_p8 = CalcMenu.returnCenaPrimo(7)
        property_settings.c_p9 = CalcMenu.returnCenaPrimo(8)
        property_settings.c_p10 = CalcMenu.returnCenaPrimo(9)
        property_settings.c_p11 = CalcMenu.returnCenaPrimo(10)
        property_settings.c_p12 = CalcMenu.returnCenaPrimo(11)
        property_settings.c_p13 = CalcMenu.returnCenaPrimo(12)
        property_settings.c_p14 = CalcMenu.returnCenaPrimo(13)
        property_settings.c_p15 = CalcMenu.returnCenaPrimo(14)


        property_settings.c_s1 = CalcMenu.returnCenaSecondo(0)
        property_settings.c_s2 = CalcMenu.returnCenaSecondo(1)
        property_settings.c_s3 = CalcMenu.returnCenaSecondo(2)
        property_settings.c_s4 = CalcMenu.returnCenaSecondo(3)
        property_settings.c_s5 = CalcMenu.returnCenaSecondo(4)
        property_settings.c_s6 = CalcMenu.returnCenaSecondo(5)
        property_settings.c_s7 = CalcMenu.returnCenaSecondo(6)
        property_settings.c_s8 = CalcMenu.returnCenaSecondo(7)
        property_settings.c_s9 = CalcMenu.returnCenaSecondo(8)
        property_settings.c_s10 = CalcMenu.returnCenaSecondo(9)
        property_settings.c_s11 = CalcMenu.returnCenaSecondo(10)
        property_settings.c_s12 = CalcMenu.returnCenaSecondo(11)
        property_settings.c_s13 = CalcMenu.returnCenaSecondo(12)
        property_settings.c_s14 = CalcMenu.returnCenaSecondo(13)
        property_settings.c_s15 = CalcMenu.returnCenaSecondo(14)

        property_settings.c1 = CalcMenu.returnCenaCompleto(0)
        property_settings.c2 = CalcMenu.returnCenaCompleto(1)
        property_settings.c3 = CalcMenu.returnCenaCompleto(2)
        property_settings.c4 = CalcMenu.returnCenaCompleto(3)
        property_settings.c5 = CalcMenu.returnCenaCompleto(4)
        property_settings.c6 = CalcMenu.returnCenaCompleto(5)
        property_settings.c7 = CalcMenu.returnCenaCompleto(6)
        property_settings.c8 = CalcMenu.returnCenaCompleto(7)
        property_settings.c9 = CalcMenu.returnCenaCompleto(8)
        property_settings.c10 = CalcMenu.returnCenaCompleto(9)
        property_settings.c11 = CalcMenu.returnCenaCompleto(10)
        property_settings.c12 = CalcMenu.returnCenaCompleto(11)
        property_settings.c13 = CalcMenu.returnCenaCompleto(12)
        property_settings.c14 = CalcMenu.returnCenaCompleto(13)
        property_settings.c15 = CalcMenu.returnCenaCompleto(14)

        property_settings.cc1 = CalcMenu.returnCenaContorno(0)
        property_settings.cc2 = CalcMenu.returnCenaContorno(1)
        property_settings.cc3 = CalcMenu.returnCenaContorno(2)
        property_settings.cc4 = CalcMenu.returnCenaContorno(3)
        property_settings.cc5 = CalcMenu.returnCenaContorno(4)
        property_settings.cc6 = CalcMenu.returnCenaContorno(5)
        property_settings.cc7 = CalcMenu.returnCenaContorno(6)
        property_settings.cc8 = CalcMenu.returnCenaContorno(7)
        property_settings.cc9 = CalcMenu.returnCenaContorno(8)
        property_settings.cc10 = CalcMenu.returnCenaContorno(9)
        property_settings.cc11 = CalcMenu.returnCenaContorno(10)
        property_settings.cc12 = CalcMenu.returnCenaContorno(11)
        property_settings.cc13 = CalcMenu.returnCenaContorno(12)
        property_settings.cc14 = CalcMenu.returnCenaContorno(13)
        property_settings.cc15 = CalcMenu.returnCenaContorno(14)

        property_settings.fp1 = CalcMenu.returnPranzoFrutta(0)
        property_settings.fp2 = CalcMenu.returnPranzoFrutta(1)
        property_settings.fp3 = CalcMenu.returnPranzoFrutta(2)
        property_settings.fp4 = CalcMenu.returnPranzoFrutta(3)
        property_settings.fp5 = CalcMenu.returnPranzoFrutta(4)
        property_settings.fp6 = CalcMenu.returnPranzoFrutta(5)
        property_settings.fp7 = CalcMenu.returnPranzoFrutta(6)
        property_settings.fp8 = CalcMenu.returnPranzoFrutta(7)
        property_settings.fp9 = CalcMenu.returnPranzoFrutta(8)
        property_settings.fp10 = CalcMenu.returnPranzoFrutta(9)
        property_settings.fp11 = CalcMenu.returnPranzoFrutta(10)
        property_settings.fp12 = CalcMenu.returnPranzoFrutta(11)
        property_settings.fp13 = CalcMenu.returnPranzoFrutta(12)
        property_settings.fp14 = CalcMenu.returnPranzoFrutta(13)
        property_settings.fp15 = CalcMenu.returnPranzoFrutta(14)

        property_settings.fc1 = CalcMenu.returnCenaFrutta(0)
        property_settings.fc2 = CalcMenu.returnCenaFrutta(1)
        property_settings.fc3 = CalcMenu.returnCenaFrutta(2)
        property_settings.fc4 = CalcMenu.returnCenaFrutta(3)
        property_settings.fc5 = CalcMenu.returnCenaFrutta(4)
        property_settings.fc6 = CalcMenu.returnCenaFrutta(5)
        property_settings.fc7 = CalcMenu.returnCenaFrutta(6)
        property_settings.fc8 = CalcMenu.returnCenaFrutta(7)
        property_settings.fc9 = CalcMenu.returnCenaFrutta(8)
        property_settings.fc10 = CalcMenu.returnCenaFrutta(9)
        property_settings.fc11 = CalcMenu.returnCenaFrutta(10)
        property_settings.fc12 = CalcMenu.returnCenaFrutta(11)
        property_settings.fc13 = CalcMenu.returnCenaFrutta(12)
        property_settings.fc14 = CalcMenu.returnCenaFrutta(13)
        property_settings.fc15 = CalcMenu.returnCenaFrutta(14)

        property_settings.pnp1 = CalcMenu.returnPranzoPane(0)
        property_settings.pnp2 = CalcMenu.returnPranzoPane(1)
        property_settings.pnp3 = CalcMenu.returnPranzoPane(2)
        property_settings.pnp4 = CalcMenu.returnPranzoPane(3)
        property_settings.pnp5 = CalcMenu.returnPranzoPane(4)
        property_settings.pnp6 = CalcMenu.returnPranzoPane(5)
        property_settings.pnp7 = CalcMenu.returnPranzoPane(6)
        property_settings.pnp8 = CalcMenu.returnPranzoPane(7)
        property_settings.pnp9 = CalcMenu.returnPranzoPane(8)
        property_settings.pnp10 = CalcMenu.returnPranzoPane(9)
        property_settings.pnp11 = CalcMenu.returnPranzoPane(10)
        property_settings.pnp12 = CalcMenu.returnPranzoPane(11)
        property_settings.pnp13 = CalcMenu.returnPranzoPane(12)
        property_settings.pnp14 = CalcMenu.returnPranzoPane(13)
        property_settings.pnp15 = CalcMenu.returnPranzoPane(14)

        property_settings.pnc1 = CalcMenu.returnCenaPane(0)
        property_settings.pnc2 = CalcMenu.returnCenaPane(1)
        property_settings.pnc3 = CalcMenu.returnCenaPane(2)
        property_settings.pnc4 = CalcMenu.returnCenaPane(3)
        property_settings.pnc5 = CalcMenu.returnCenaPane(4)
        property_settings.pnc6 = CalcMenu.returnCenaPane(5)
        property_settings.pnc7 = CalcMenu.returnCenaPane(6)
        property_settings.pnc8 = CalcMenu.returnCenaPane(7)
        property_settings.pnc9 = CalcMenu.returnCenaPane(8)
        property_settings.pnc10 = CalcMenu.returnCenaPane(9)
        property_settings.pnc11 = CalcMenu.returnCenaPane(10)
        property_settings.pnc12 = CalcMenu.returnCenaPane(11)
        property_settings.pnc13 = CalcMenu.returnCenaPane(12)
        property_settings.pnc14 = CalcMenu.returnCenaPane(13)
        property_settings.pnc15 = CalcMenu.returnCenaPane(14)

        /*console.log ("IMPORTING: \nbranca: " + CalcMenu.getBranca()
                     +"\n nmales: " + CalcMenu.getNMALE()
                     + "\n nfemales: " + CalcMenu.getNFEMALE()
                     + "\n nactivity: " + CalcMenu.getActivity()
                     + "\n nele: " + CalcMenu.getEle()
                     + "\n nfresco: " + CalcMenu.getFresco()
                     + "\n ngiornoin: " + CalcMenu.getDayIn()
                     + "\n ngiornofin: " + CalcMenu.getDayFin()
                     + "\n nmesein: " + CalcMenu.getMeseIn()
                     + "\n nmesefin: " + CalcMenu.getMeseFin()
                     + "\n ndays: " + CalcMenu.getShortNDAYS()
                     + "\n NOME = " + CalcMenu.getCurrentMenuName()

                     );*/

        property_settings.n_male     = CalcMenu.getNMALE()
        property_settings.n_female   = CalcMenu.getNFEMALE()

        property_settings.n_activity = CalcMenu.getActivity()
        property_settings.n_forno    = CalcMenu.getEle()
        property_settings.n_verdura  = CalcMenu.getFresco()

        property_settings.n_g_in  = CalcMenu.getDayIn()
        property_settings.n_g_fin = CalcMenu.getDayFin()
        property_settings.n_m_in  = CalcMenu.getMeseIn()
        property_settings.n_m_fin = CalcMenu.getMeseFin()

        property_settings.n_days = CalcMenu.getShortNDAYS()
        property_settings.menu_name = CalcMenu.getCurrentMenuName()

     //   console.log("storing day: " + 0 + ":: prev stored m = " + property_settings.stored_pr2[0]
       //            + ":: prev stored sett = " + property_settings.stored_pr2[0]
         //          + " new: " + CalcMenu.returnPranzoSecondo(0));
        //rect_full_menu.emitDataChanged();


    }



    function setMenu ()
    {
        console.log("function setMenu has been called!")

        CalcMenu.setBreakfast       (0, property_settings.b1);
        CalcMenu.setBreakfast       (1, property_settings.b2);
        CalcMenu.setBreakfast       (2, property_settings.b3);
        CalcMenu.setBreakfast       (3, property_settings.b4);
        CalcMenu.setBreakfast       (4, property_settings.b5);
        CalcMenu.setBreakfast       (5, property_settings.b6);
        CalcMenu.setBreakfast       (6, property_settings.b7);
        CalcMenu.setBreakfast       (7, property_settings.b8);
        CalcMenu.setBreakfast       (8, property_settings.b9);
        CalcMenu.setBreakfast       (9, property_settings.b10);
        CalcMenu.setBreakfast       (10, property_settings.b11);
        CalcMenu.setBreakfast       (11, property_settings.b12);
        CalcMenu.setBreakfast       (12, property_settings.b13);
        CalcMenu.setBreakfast       (13, property_settings.b14);
        CalcMenu.setBreakfast       (14, property_settings.b15);

        CalcMenu.setPranzoPrimo     (0, property_settings.p1);
        CalcMenu.setPranzoPrimo     (1, property_settings.p2);
        CalcMenu.setPranzoPrimo     (2, property_settings.p3);
        CalcMenu.setPranzoPrimo     (3, property_settings.p4);
        CalcMenu.setPranzoPrimo     (4, property_settings.p5);
        CalcMenu.setPranzoPrimo     (5, property_settings.p6);
        CalcMenu.setPranzoPrimo     (6, property_settings.p7);
        CalcMenu.setPranzoPrimo     (7, property_settings.p8);
        CalcMenu.setPranzoPrimo     (8, property_settings.p9);
        CalcMenu.setPranzoPrimo     (9, property_settings.p10);
        CalcMenu.setPranzoPrimo     (10, property_settings.p11);
        CalcMenu.setPranzoPrimo     (11, property_settings.p12);
        CalcMenu.setPranzoPrimo     (12, property_settings.p13);
        CalcMenu.setPranzoPrimo     (13, property_settings.p14);
        CalcMenu.setPranzoPrimo     (14, property_settings.p15);

        CalcMenu.setPranzoSecondo     (0, property_settings.pp1);
        CalcMenu.setPranzoSecondo     (1, property_settings.pp2);
        CalcMenu.setPranzoSecondo     (2, property_settings.pp3);
        CalcMenu.setPranzoSecondo     (3, property_settings.pp4);
        CalcMenu.setPranzoSecondo     (4, property_settings.pp5);
        CalcMenu.setPranzoSecondo     (5, property_settings.pp6);
        CalcMenu.setPranzoSecondo     (6, property_settings.pp7);
        CalcMenu.setPranzoSecondo     (7, property_settings.pp8);
        CalcMenu.setPranzoSecondo     (8, property_settings.pp9);
        CalcMenu.setPranzoSecondo     (9, property_settings.pp10);
        CalcMenu.setPranzoSecondo     (10, property_settings.pp11);
        CalcMenu.setPranzoSecondo     (11, property_settings.pp12);
        CalcMenu.setPranzoSecondo     (12, property_settings.pp13);
        CalcMenu.setPranzoSecondo     (13, property_settings.pp14);
        CalcMenu.setPranzoSecondo     (14, property_settings.pp15);

        //pranzo completo
        CalcMenu.setPranzoCompleto     (0, property_settings.ppc1);
        CalcMenu.setPranzoCompleto     (1, property_settings.ppc2);
        CalcMenu.setPranzoCompleto     (2, property_settings.ppc3);
        CalcMenu.setPranzoCompleto     (3, property_settings.ppc4);
        CalcMenu.setPranzoCompleto     (4, property_settings.ppc5);
        CalcMenu.setPranzoCompleto     (5, property_settings.ppc6);
        CalcMenu.setPranzoCompleto     (6, property_settings.ppc7);
        CalcMenu.setPranzoCompleto     (7, property_settings.ppc8);
        CalcMenu.setPranzoCompleto     (8, property_settings.ppc9);
        CalcMenu.setPranzoCompleto     (9, property_settings.ppc10);
        CalcMenu.setPranzoCompleto     (10, property_settings.ppc11);
        CalcMenu.setPranzoCompleto     (11, property_settings.ppc12);
        CalcMenu.setPranzoCompleto     (12, property_settings.ppc13);
        CalcMenu.setPranzoCompleto     (13, property_settings.ppc14);
        CalcMenu.setPranzoCompleto     (14, property_settings.ppc15);


        CalcMenu.setPranzoContorno     (0, property_settings.ppp1);
        CalcMenu.setPranzoContorno     (1, property_settings.ppp2);
        CalcMenu.setPranzoContorno     (2, property_settings.ppp3);
        CalcMenu.setPranzoContorno     (3, property_settings.ppp4);
        CalcMenu.setPranzoContorno     (4, property_settings.ppp5);
        CalcMenu.setPranzoContorno     (5, property_settings.ppp6);
        CalcMenu.setPranzoContorno     (6, property_settings.ppp7);
        CalcMenu.setPranzoContorno     (7, property_settings.ppp8);
        CalcMenu.setPranzoContorno     (8, property_settings.ppp9);
        CalcMenu.setPranzoContorno     (9, property_settings.ppp10);
        CalcMenu.setPranzoContorno     (10, property_settings.ppp11);
        CalcMenu.setPranzoContorno     (11, property_settings.ppp12);
        CalcMenu.setPranzoContorno     (12, property_settings.ppp13);
        CalcMenu.setPranzoContorno     (13, property_settings.ppp14);
        CalcMenu.setPranzoContorno     (14, property_settings.ppp15);

        CalcMenu.setMerenda     (0, property_settings.m1);
        CalcMenu.setMerenda     (1, property_settings.m2);
        CalcMenu.setMerenda     (2, property_settings.m3);
        CalcMenu.setMerenda     (3, property_settings.m4);
        CalcMenu.setMerenda     (4, property_settings.m5);
        CalcMenu.setMerenda     (5, property_settings.m6);
        CalcMenu.setMerenda     (6, property_settings.m7);
        CalcMenu.setMerenda     (7, property_settings.m8);
        CalcMenu.setMerenda     (8, property_settings.m9);
        CalcMenu.setMerenda     (9, property_settings.m10);
        CalcMenu.setMerenda     (10, property_settings.m11);
        CalcMenu.setMerenda     (11, property_settings.m12);
        CalcMenu.setMerenda     (12, property_settings.m13);
        CalcMenu.setMerenda     (13, property_settings.m14);
        CalcMenu.setMerenda     (14, property_settings.m15);

        CalcMenu.returnCenaPrimo     (0, property_settings.c_p1);
        CalcMenu.returnCenaPrimo     (1, property_settings.c_p2);
        CalcMenu.returnCenaPrimo     (2, property_settings.c_p3);
        CalcMenu.returnCenaPrimo     (3, property_settings.c_p4);
        CalcMenu.returnCenaPrimo     (4, property_settings.c_p5);
        CalcMenu.returnCenaPrimo     (5, property_settings.c_p6);
        CalcMenu.returnCenaPrimo     (6, property_settings.c_p7);
        CalcMenu.returnCenaPrimo     (7, property_settings.c_p8);
        CalcMenu.returnCenaPrimo     (8, property_settings.c_p9);
        CalcMenu.returnCenaPrimo     (9, property_settings.c_p10);
        CalcMenu.returnCenaPrimo     (10, property_settings.c_p11);
        CalcMenu.returnCenaPrimo     (11, property_settings.c_p12);
        CalcMenu.returnCenaPrimo     (12, property_settings.c_p13);
        CalcMenu.returnCenaPrimo     (13, property_settings.c_p14);
        CalcMenu.returnCenaPrimo     (14, property_settings.c_p15);

        CalcMenu.returnCenaSecondo     (0, property_settings.c_s1);
        CalcMenu.returnCenaSecondo     (1, property_settings.c_s2);
        CalcMenu.returnCenaSecondo     (2, property_settings.c_s3);
        CalcMenu.returnCenaSecondo     (3, property_settings.c_s4);
        CalcMenu.returnCenaSecondo     (4, property_settings.c_s5);
        CalcMenu.returnCenaSecondo     (5, property_settings.c_s6);
        CalcMenu.returnCenaSecondo     (6, property_settings.c_s7);
        CalcMenu.returnCenaSecondo     (7, property_settings.c_s8);
        CalcMenu.returnCenaSecondo     (8, property_settings.c_s9);
        CalcMenu.returnCenaSecondo     (9, property_settings.c_s10);
        CalcMenu.returnCenaSecondo     (10, property_settings.c_s11);
        CalcMenu.returnCenaSecondo     (11, property_settings.c_s12);
        CalcMenu.returnCenaSecondo     (12, property_settings.c_s13);
        CalcMenu.returnCenaSecondo     (13, property_settings.c_s14);
        CalcMenu.returnCenaSecondo     (14, property_settings.c_s15);

        CalcMenu.setCenaCompleto     (0, property_settings.c1);
        CalcMenu.setCenaCompleto     (1, property_settings.c2);
        CalcMenu.setCenaCompleto     (2, property_settings.c3);
        CalcMenu.setCenaCompleto     (3, property_settings.c4);
        CalcMenu.setCenaCompleto     (4, property_settings.c5);
        CalcMenu.setCenaCompleto     (5, property_settings.c6);
        CalcMenu.setCenaCompleto     (6, property_settings.c7);
        CalcMenu.setCenaCompleto     (7, property_settings.c8);
        CalcMenu.setCenaCompleto     (8, property_settings.c9);
        CalcMenu.setCenaCompleto     (9, property_settings.c10);
        CalcMenu.setCenaCompleto     (10, property_settings.c11);
        CalcMenu.setCenaCompleto     (11, property_settings.c12);
        CalcMenu.setCenaCompleto     (12, property_settings.c13);
        CalcMenu.setCenaCompleto     (13, property_settings.c14);
        CalcMenu.setCenaCompleto     (14, property_settings.c15);

        CalcMenu.setCenaContorno     (0, property_settings.cc1);
        CalcMenu.setCenaContorno     (1, property_settings.cc2);
        CalcMenu.setCenaContorno     (2, property_settings.cc3);
        CalcMenu.setCenaContorno     (3, property_settings.cc4);
        CalcMenu.setCenaContorno     (4, property_settings.cc5);
        CalcMenu.setCenaContorno     (5, property_settings.cc6);
        CalcMenu.setCenaContorno     (6, property_settings.cc7);
        CalcMenu.setCenaContorno     (7, property_settings.cc8);
        CalcMenu.setCenaContorno     (8, property_settings.cc9);
        CalcMenu.setCenaContorno     (9, property_settings.cc10);
        CalcMenu.setCenaContorno     (10, property_settings.cc11);
        CalcMenu.setCenaContorno     (11, property_settings.cc12);
        CalcMenu.setCenaContorno     (12, property_settings.cc13);
        CalcMenu.setCenaContorno     (13, property_settings.cc14);
        CalcMenu.setCenaContorno     (14, property_settings.cc15);

        CalcMenu.setPranzoFrutta     (0, property_settings.fp1);
        CalcMenu.setPranzoFrutta     (1, property_settings.fp2);
        CalcMenu.setPranzoFrutta     (2, property_settings.fp3);
        CalcMenu.setPranzoFrutta     (3, property_settings.fp4);
        CalcMenu.setPranzoFrutta     (4, property_settings.fp5);
        CalcMenu.setPranzoFrutta     (5, property_settings.fp6);
        CalcMenu.setPranzoFrutta     (6, property_settings.fp7);
        CalcMenu.setPranzoFrutta     (7, property_settings.fp8);
        CalcMenu.setPranzoFrutta     (8, property_settings.fp9);
        CalcMenu.setPranzoFrutta     (9, property_settings.fp10);
        CalcMenu.setPranzoFrutta     (10, property_settings.fp11);
        CalcMenu.setPranzoFrutta     (11, property_settings.fp12);
        CalcMenu.setPranzoFrutta     (12, property_settings.fp13);
        CalcMenu.setPranzoFrutta     (13, property_settings.fp14);
        CalcMenu.setPranzoFrutta     (14, property_settings.fp15);

        CalcMenu.setCenaFrutta     (0, property_settings.fc1);
        CalcMenu.setCenaFrutta     (1, property_settings.fc2);
        CalcMenu.setCenaFrutta     (2, property_settings.fc3);
        CalcMenu.setCenaFrutta     (3, property_settings.fc4);
        CalcMenu.setCenaFrutta     (4, property_settings.fc5);
        CalcMenu.setCenaFrutta     (5, property_settings.fc6);
        CalcMenu.setCenaFrutta     (6, property_settings.fc7);
        CalcMenu.setCenaFrutta     (7, property_settings.fc8);
        CalcMenu.setCenaFrutta     (8, property_settings.fc9);
        CalcMenu.setCenaFrutta     (9, property_settings.fc10);
        CalcMenu.setCenaFrutta     (10, property_settings.fc11);
        CalcMenu.setCenaFrutta     (11, property_settings.fc12);
        CalcMenu.setCenaFrutta     (12, property_settings.fc13);
        CalcMenu.setCenaFrutta     (13, property_settings.fc14);
        CalcMenu.setCenaFrutta     (14, property_settings.fc15);

        CalcMenu.setPranzoPane     (0, property_settings.pnp1);
        CalcMenu.setPranzoPane     (1, property_settings.pnp2);
        CalcMenu.setPranzoPane     (2, property_settings.pnp3);
        CalcMenu.setPranzoPane     (3, property_settings.pnp4);
        CalcMenu.setPranzoPane     (4, property_settings.pnp5);
        CalcMenu.setPranzoPane     (5, property_settings.pnp6);
        CalcMenu.setPranzoPane     (6, property_settings.pnp7);
        CalcMenu.setPranzoPane     (7, property_settings.pnp8);
        CalcMenu.setPranzoPane     (8, property_settings.pnp9);
        CalcMenu.setPranzoPane     (9, property_settings.pnp10);
        CalcMenu.setPranzoPane     (10, property_settings.pnp11);
        CalcMenu.setPranzoPane     (11, property_settings.pnp12);
        CalcMenu.setPranzoPane     (12, property_settings.pnp13);
        CalcMenu.setPranzoPane     (13, property_settings.pnp14);
        CalcMenu.setPranzoPane     (14, property_settings.pnp15);

        CalcMenu.setCenaPane     (0, property_settings.pnc1);
        CalcMenu.setCenaPane     (1, property_settings.pnc2);
        CalcMenu.setCenaPane     (2, property_settings.pnc3);
        CalcMenu.setCenaPane     (3, property_settings.pnc4);
        CalcMenu.setCenaPane     (4, property_settings.pnc5);
        CalcMenu.setCenaPane     (5, property_settings.pnc6);
        CalcMenu.setCenaPane     (6, property_settings.pnc7);
        CalcMenu.setCenaPane     (7, property_settings.pnc8);
        CalcMenu.setCenaPane     (8, property_settings.pnc9);
        CalcMenu.setCenaPane     (9, property_settings.pnc10);
        CalcMenu.setCenaPane     (10, property_settings.pnc11);
        CalcMenu.setCenaPane     (11, property_settings.pnc12);
        CalcMenu.setCenaPane     (12, property_settings.pnc13);
        CalcMenu.setCenaPane     (13, property_settings.pnc14);
        CalcMenu.setCenaPane     (14, property_settings.pnc15);

        CalcMenu.setNMALE(property_settings.n_male)
        CalcMenu.setNFEMALE(property_settings.n_female)

        CalcMenu.setActivity(property_settings.n_activity)
        CalcMenu.setEle(property_settings.n_forno)
        CalcMenu.setFresco(property_settings.n_verdura)

        CalcMenu.setDayIn(property_settings.n_g_in )
        CalcMenu.setDayFin(property_settings.n_g_fin )
        CalcMenu.setMeseIn(property_settings.n_m_in )
        CalcMenu.setMeseFin(property_settings.n_m_fin )
        CalcMenu.setShortNDAYS(property_settings.n_days)
        CalcMenu.setCurrentMenuName(property_settings.menu_name);

       /* console.log ("SETTINGS: \nbranca: " + property_settings.n_branca
                     +"\n nmales: " + property_settings.n_males
                     + "\n nfemales: " + property_settings.n_females
                     + "\n nactivity: " + property_settings.n_activity
                     + "\n nele: " + property_settings.n_forno
                     + "\n nfresco: " + property_settings.n_verdura
                     + "\n ngiornoin: " + property_settings.n_g_in
                     + "\n ngiornofin: " +property_settings.n_g_fin
                     + "\n nmesein: " + property_settings.n_m_in
                     + "\n nmesefin: " + property_settings.n_m_fin
                     + "\n ndays: " + property_settings.n_days
                     + "\n NOME = " + property_settings.menu_name

                     );*/

    }

}
