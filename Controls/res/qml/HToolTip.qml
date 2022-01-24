import QtQuick
import QtQuick.Controls

Row {
	spacing: 30
	Button {
		text: qsTr("Save")
		ToolTip.visible: down
		ToolTip.text: qsTr("Save the active project")
	}
	
	Button { 
		text: qsTr("Button")
		
		ToolTip.visible: pressed
		ToolTip.delay: Qt.styleHints.mousePressAndHoldInterval
		ToolTip.text: qsTr("This tool tip shown after pressing and holding")
	}

	Button {
		text: qsTr("Button")
		ToolTip.delay: 1000
		ToolTip.timeout: 5000
		ToolTip.visible: hovered
		ToolTip.text: qsTr("This tool tip is shoen hovering the button")
	}
	
	Slider {
		id: slider
		value: 0.5
		
		ToolTip {
			parent: slider.handle
			visible: slider.pressed
			text: slider.value.toFixed(1)
		}
	}
}
