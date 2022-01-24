import QtQuick
import QtQuick.Controls

Item {
	anchors.fill: parent	
	SwipeView {
		id: view
		currentIndex: pageIndicator.currentIndex
		anchors.fill: parent

		Page {
			title: qsTr("Home")
			Label { 
				anchors.centerIn: parent
				text: "Home"
				font.bold: true
				font.pixelSize: 28
			}
		}	
		
		Page {
			title: qsTr("Discover")
			Label {
				anchors.centerIn: parent
				text: "Discover"
				font.bold: true
				font.pixelSize: 28
			}
		}

		Page {
			title: qsTr("Activity")
			Label {
				anchors.centerIn: parent
				text: "Activity"
				font.bold: true
				font.pixelSize: 28
			}
		}
	}

	PageIndicator {
		id: pageIndicator
		interactive: true
		count: view.count
		currentIndex: view.currentIndex

		anchors.bottom: parent.bottom
		anchors.horizontalCenter: parent.horizontalCenter
	}
}
