import QtQuick 2.0
Item {
	id: root
	width: 200; height: 200
	Image {
		id: pole
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		source: "../Images/pitch_bg.png"
	}
	Image {
		id: wheel
		source: "../Images/pitch_boat.png"
		MouseArea {
			anchors.fill: parent
			onClicked: wheel.rotation += 90
		}
		Behavior on rotation {
			NumberAnimation {
				duration: 2000
			}
		}
	}
	MouseArea {
		anchors.fill: parent
		onClicked: wheel.rotation -= 90
	}	



}
