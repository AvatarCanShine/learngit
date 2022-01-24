import QtQuick
import QtQuick.Controls

Item {
	ScrollView {
		width: 200
		height: 200
		clip: true

		Label {
			text: "ABC"
			font.pixelSize: 224
		}
	}
	
	ScrollView {
		width: 200
		height: 224
		
		anchors.centerIn: parent
		ListView {
			model: 20
			delegate: ItemDelegate {
				text: "Item " + index
			}
		}
	}
	
	
}
