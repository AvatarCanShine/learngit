import QtQuick

Column {
	spacing: 2
	
	Repeater {
		model: ["Enterprise", "Columnia", "Challenger", "Discovery", "Endeavour", "Atlantis"]
	
		delegate: Rectangle {
			required property var modelData
			required property int index
			
			width: 100
			height: 32
			radius: 3

			Text { anchors.centerIn: parent; text: modelData + '(' + index + ')' }
		}
	}
}	
