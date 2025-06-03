import Quickshell
import Quickshell.Io
import QtQuick
import Quickshell.Hyprland

Scope {
  property string time;

  Variants {
    model: Quickshell.screens

    PanelWindow {
      property var modelData

      screen: modelData
      
      anchors {
        top: true
        left: true
        right: true
      }

      height: 30

      margins {
        top: 20
        right: 20
        left: 20
      } 

      ClockWidget {
        anchors.centerIn: parent
      }

    }
  }
}
