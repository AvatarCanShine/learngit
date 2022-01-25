import QtQuick
import QtQuick.Controls

Column {
	spacing: 2
	
	Repeater {
		model: ListModel {
			ListElement { name: "Mercury"; surfaceColor: "gray" }
			ListElement { name: "Venus"; surfaceColor: "yellow" }
			ListElement { name: "Earth"; surfaceColor: "blue" }
			ListElement { name: "Mars"; surfaceColor: "orange" }
			ListElement { name: "Jupiter"; surfaceColor: "orange" }
			ListElement { name: "Saturn"; surfaceColor: "yellow" }
			ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
			ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
		}

		delegate: Rectangle {
			id: blueRec
			
			required property string name
			required property color surfaceColor

			width: 120
			height: 32
			
			radius: 3
			Text { anchors.centerIn: parent; text: name }
			
			Rectangle { 
				anchors.left: parent.left
				anchors.verticalCenter: parent.verticalCenter
				anchors.leftMargin: 4

				width: 16
				height: 16
				
				radius: 8
				
				color: blueRec.surfaceColor
			}
		}
	}
}	
