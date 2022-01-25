import QtQuick

Rectangle {
	width: 80
	height: 300

	ListView {
		anchors.margins: 20
		clip: true
		model: 100
		delegate: Rectangle {
			id: rec
			required property int index
			width: 40
			height: 40
			color: "green"
			Text { anchors.centerIn: parent; text: "ssssss" }// rec.index }
		}
		spacing: 5
	}
}
