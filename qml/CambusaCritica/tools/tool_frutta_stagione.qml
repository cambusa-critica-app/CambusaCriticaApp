import QtQuick 2.4
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import Qt.labs.settings 1.0


Item  {
    width: mainWindow.width


    ScrollView{
        id: scroll_view_id
        anchors.fill: parent
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        y: mainWindow.height/20

        Image{
                id: fruit_image
                source: "../images/frutta.jpg"
                width: mainWindow.width
                fillMode: Image.PreserveAspectFit
                property int zoom: 0

                MouseArea
                {
                    anchors.fill: parent
                    onDoubleClicked:
                    {
                       if(fruit_image.zoom === 0) {fruit_image.width = mainWindow.width*2;  fruit_image.zoom = 1;}
                       else                       {fruit_image.width = mainWindow.width;    fruit_image.zoom = 0;}
                    }
                }
        }
    }
}
