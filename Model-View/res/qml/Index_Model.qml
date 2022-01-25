import QtQuick

Column {
	spacing: 2
	
	Repeater {
		model: 10
		delegate: Rectangle {
			required property int index
			width: 100
			height: 32
			Text { anchors.centerIn: parent; text: index }
		}
	}
}
