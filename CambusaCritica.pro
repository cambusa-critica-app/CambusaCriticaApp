# Add more folders to ship with the application, here
#folder_01.source = qml/CambusaCritica
#folder_01.target = qml
#DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
#QML_IMPORT_PATH =
TEMPLATE = app

# The .cpp file which was generated for your project. Feel free to hack it.

HEADERS += \
    my_printer_new.h \
    write_file.h


SOURCES += main.cpp \
        my_printer_new.cpp \
        write_file.cpp \

QT+= gui quick qml printsupport widgets

ICON += icon.ico
RC_FILE = myapp.rc

#CONFIG += static staticlib

OTHER_FILES += \
    qml/CambusaCritica/images/logo.png \
    qml/CambusaCritica/mainWindow.qml \
    qml/CambusaCritica/Widgets/HomeButton.qml \
    qml/CambusaCritica/Widgets/BackButton.qml \
    qml/CambusaCritica/daysel.qml \
    qml/CambusaCritica/recipesel.qml \
    qml/CambusaCritica/personalizza.qml \
    qml/CambusaCritica/mymenu.qml \
    qml/CambusaCritica/main.qml \
    qml/CambusaCritica/visualizeListaSpesona.qml \
    qml/CambusaCritica/models/Snacks.qml \
    qml/CambusaCritica/models/Breakfast.qml \
    qml/CambusaCritica/models/FullMeal.qml \
    qml/CambusaCritica/models/Primo.qml \
    qml/CambusaCritica/models/Secondo.qml \
    qml/CambusaCritica/models/Contorni.qml \
    qml/CambusaCritica/functions/CalcMenu.js \
    qml/CambusaCritica/functions/CalcFunctions.js \
    qml/CambusaCritica/functions/CalcList.js \
    qml/CambusaCritica/Widgets/MenuButton.qml \
    qml/CambusaCritica/valutazione.qml \
    android/AndroidManifest.xml \
    qml/CambusaCritica/models/Frutta.qml \
    qml/CambusaCritica/models/Pane.qml \
    qml/CambusaCritica/infos/infos.qml \
    qml/CambusaCritica/infos/manuale.qml \
    qml/CambusaCritica/infos/spesa_critica.qml \
    qml/CambusaCritica/settings/AliasSettings.qml \
    qml/CambusaCritica/settings/EvaluateCriteria.qml \
    qml/CambusaCritica/settings/MenuSettings.qml \
    qml/CambusaCritica/settings/SpesaSettings.qml \
    qml/CambusaCritica/contribuisci.qml \
    qml/CambusaCritica/crea_menu/dettagli.qml


ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

RESOURCES +=     cambusa_critica.qrc

DISTFILES += \
    qml/CambusaCritica/salvataggio.qml \
    qml/CambusaCritica/conferma_salva.qml \
    qml/CambusaCritica/tools/tool_frutta_stagione.qml \
    qml/CambusaCritica/tools/tool_verdura_stagione.qml \
    qml/CambusaCritica/tools/tool_junk_food.qml \
    qml/CambusaCritica/tools/tool_cc_food.qml \
    qml/CambusaCritica/visualizeSpesaGiorno.qml \
    qml/CambusaCritica/Widgets/ImportaButton.qml \
    qml/CambusaCritica/tools/tool_wcrf.qml \
    qml/CambusaCritica/models/CCListino.qml \
    qml/CambusaCritica/Widgets/CreaButton.qml \
    qml/CambusaCritica/functions/printerFunctions.js \
    qml/CambusaCritica/loadFileLoader.qml \
    qml/CambusaCritica/loadSendMail \
    qml/CambusaCritica/loadSendMail.qml \
    qml/CambusaCritica/loadCreateHTML.qml \
    qml/CambusaCritica/tools/tool_ricette.qml \
    qml/CambusaCritica/models/Pane.qml \
    qml/CambusaCritica/recipes_list.qml \
    qml/CambusaCritica/change_dose_recipe.qml \
    qml/CambusaCritica/crea_menu/dettagli.qml \
    qml/CambusaCritica/models/Ingredienti.qml \
    qml/CambusaCritica/crea_menu/crea_numeri.qml \
    qml/CambusaCritica/crea_menu/crea_giorni.qml \
    qml/CambusaCritica/crea_menu/crea_branca.qml \
    qml/CambusaCritica/functions/PrintStuff.js \
    qml/CambusaCritica/tools/tool_cecc.qml \
    qml/CambusaCritica/tools/tool_concorso.qml \
    qml/CambusaCritica/tools/tool_bmi.qml \
    qml/CambusaCritica/tools/tool_concorso.qml \
    qml/CambusaCritica/crea_menu/crea_menu_choice.qml \
    qml/CambusaCritica/crea_menu/imposta_modello.qml \
    qml/CambusaCritica/crea_menu/scegli_modello.qml \
    qml/CambusaCritica/models/MenuCC.qml \
    qml/CambusaCritica/crea_menu/mm_captions.qml \
    qml/CambusaCritica/functions/MenuModello.js \
    qml/CambusaCritica/crea_menu/crea_struttura.qml \
    qml/CambusaCritica/functions/MainOptions.js \
    qml/CambusaCritica/tools/about_us.qml

