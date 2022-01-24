import QtQuick
import QtQuick.Controls

Item {
	RangeSlider {
		id: rangeSlider
		from: 1
		to: 100
		first.value: 25
		second.value: 75
		first.onValueChanged: { }
	}
	
	Label {
		id: label
		text: rangeSlider.first.value
		anchors.centerIn: parent
	}

	Label {
		text: rangeSlider.second.value
		anchors.centerIn: parent
		anchors.verticalCenterOffset: 30
	}
}
