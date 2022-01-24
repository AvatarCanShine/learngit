import QtQuick
import QtQuick.Controls

Item {
	Drawer {
		id: drawer
		width: 0.4 * parent.width
		height: parent.height
		dragMargin: parent.width * 0.1
	}
	Label {
		id: content
		text: "Aa"
		font.pixelSize: 96
		anchors.fill: parent
		verticalAlignment: Label.AlignVCenter
		horizontalAlignment: Label.AlignHCenter

		transform: Translate {
			x: drawer.position * content.width * 0.33
		}
	}	
}	
