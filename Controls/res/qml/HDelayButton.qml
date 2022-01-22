import QtQuick
import QtQuick.Controls

Item {
	Label {
		id: label
		text: "未点击"
		font.bold: true
		font.pixelSize: 28
		anchors.centerIn: parent
	}
	
	DelayButton {
		id: delayButton
		text: "PressAndHold"

		onActivated: {
			label.text = "已点击"
		}
	}
}
