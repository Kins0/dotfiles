pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton{
  property var date: new Date()
  property string time: Qt.formatDateTime(date, "dddd, dd.MM.yyyy, HH:mm:ss")

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: date = new Date()
  }
}
