import QtQuick
import QtQuick.Controls

Row {	
	TabBar {
		id: tabBar
		currentIndex: swipeView.currentIndex
	}
	SwipeView {
		id: swipeView
		currentIndex: tabBar.currentIndex
	}

	Button {
		text: qsTr("Home")
		onClicked: swipeView.setCurrentIndex(0)
		enabled: swipeView.currentIndex != 0
	}

	Button {
		text: qsTr("Previous")
		onClicked: swipeView.decrementCurrentIndex()
		enabled: swipeView.currentIndex > 0
	}

	Button {
		text: qsTr("Next")
		onClicked: swipeView.incrementCurrentIndex()
		enabled: swipeView.currentIndex < swipeView.count - 1
	}
}
