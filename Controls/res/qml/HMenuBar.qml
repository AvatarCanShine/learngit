import QtQuick
import QtQuick.Controls
import QtQuick.Window

ApplicationWindow {
	visible: true
	width: 1280
	height: 720
	menuBar: MenuBar {
		Menu {
			title: qsTr("&File")
			Action { text: qsTr("&New...") }
			Action { text: qsTr("&Open...") }
			Action { text: qsTr("&Save...") }
			Action { text: qsTr("&Save &As...") }
			MenuSeparator {}
			Action { text: qsTr("&Quict") }
		}
		Menu {
			title: qsTr("&Edit")
			Action { text: qsTr("&Cut") }
			Action { text: qsTr("&Copy") }
			Action { text: qsTr("&Paste") }
		}
		Menu {
			title: qsTr("&Help")
			Action { text: qsTr("&About") }
		}
	}
}
