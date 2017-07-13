import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import "../functions/CalcMenu.js" as CalcMenu
import "../functions/CalcList.js" as CalcList
import "../"


    Settings
    {
        id: menu_settings
       // category: "category_" + CalcMenu.getMenuID()

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



        Component.onCompleted:
        {
            console.log("component settings completed .." + property_settings.p1);
        }
        Component.onDestruction:
        {
            console.log("component settings destroyed .." + property_settings.p1);
        }
    }
