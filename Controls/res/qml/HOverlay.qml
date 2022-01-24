import QtQuick
import QtQuick.Controls

Item {
	Button {
		anchors.left: parent.left
		anchors.leftMargin: 20
		text: "Popup"
		onClicked: popup.open();
	}
	
	Popup {
		id: popup
		parent: Overlay.overlay

		x: (parent.width - width ) / 2
		y: (parent.height - height ) / 2
		width: 500
		height: 300
	}
}
