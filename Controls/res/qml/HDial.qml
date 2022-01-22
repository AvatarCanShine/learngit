import QtQuick
import QtQuick.Controls

Item {
	Label {
		id: label
		text: "0"
		font.bold: true
		font.pixelSize: 28
		anchors.centerIn: parent
	}
	
	Dial {
		id: dial
		snapMode: Dial.SnapAlways
		stepSize: 0.1
		onMoved: label.text = value;
		onValueChanged: label.text = value;
	}
	
	Button {
		id: btnIncrease
		text: "增加"
		anchors.left: dial.right
		anchors.leftMargin: 40
		anchors.bottom: dial.bottom

		onClicked: dial.increase();
	}

	Button {
		id: btnDecrease
		text: "减少"
		anchors.left: btnIncrease.right
		anchors.leftMargin: 40
		anchors.bottom: btnIncrease.bottom

		onClicked: dial.decrease();
	}
}
