import QtQuick 2.3
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
import "."

Rectangle  {
    id: page
    width: 320
    height: 480
    visible: (pageLoader.status === Loader.Loading) ? true : false
    color: "#f6dfb2"



    Image {
        id: logo_starter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset:  -logo_starter.height
        width: parent.width*0.5
        fillMode: Image.PreserveAspectFit
        source: "images/logo.png"
      //  visible: (pageLoader.status === Loader.Loading || pageLoader.status === Loader.Null) ? true : false
        asynchronous: true

       // Component.onCompleted: pageLoader.source = "mainWindow.qml"

/*
        MouseArea{
            anchors.fill: parent
            onClicked:
            {
                pageLoader.source = "mainWindow.qml"
            }
        }*/

    }

    AnimatedImage {
        id: loading_image
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset:  logo_starter.height
        width: parent.width*0.2
        fillMode: Image.PreserveAspectFit
        source: "images/loading.gif"
        visible: (pageLoader.status === Loader.Loading) ? true : false
        asynchronous: true
    }


    Loader {
        id: pageLoader
        anchors.fill: parent
        source: "mainWindow.qml"
        asynchronous: true
    }

}
