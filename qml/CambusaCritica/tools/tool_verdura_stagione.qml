import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0

Item  {
    width: mainWindow.width
    height: mainWindow.height
    //y: top_bar.height

    ScrollView{
        id: scroll_view_id
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff


        Image{
                id: fruit_image
                source: "../images/verdura_2.jpg"
                width: mainWindow.width
                fillMode: Image.PreserveAspectFit
                property int zoom: 0

                MouseArea
                {
                    anchors.fill: parent
                    onDoubleClicked:
                    {
                       if(fruit_image.zoom === 0) {fruit_image.width = mainWindow.width*2; fruit_image.zoom = 1;}
                       else                       {fruit_image.width = mainWindow.width;    fruit_image.zoom = 0;}
                    }
                }

        }
    }
}
