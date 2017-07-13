//slider age
import QtQuick 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import Qt.labs.settings 1.0
import "../"

Rectangle {
    id: rect_slider_age
    anchors.horizontalCenter: page_selfp.horizontalCenter
    y: (myPathview.currentIndex === 0) ? 430 : 700
    width: 200
    height: 100

    Slider{

      id: slider_age
      anchors.centerIn: parent
      style: SliderStyle
      {
            groove: Rectangle {
                implicitWidth: 200
                implicitHeight: 8
                color: "gray"
                radius: 8
            }
            handle: Rectangle {
                anchors.centerIn: parent
                color: control.pressed ? "white" : "lightgray"
                border.color: "gray"
                border.width: 2
                implicitWidth: 34
                implicitHeight: 34
                radius: 8
            }
        }

     // value: 27
      minimumValue: 1
      maximumValue: 100
      stepSize: 1.0
      updateValueWhileDragging : true

      Settings { property alias value_age: slider_age.value  }

  }

  Text {
      text: "Age: " + slider_age.value
  }
}
