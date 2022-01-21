import QtQuick
import QtQuick.Controls

Row {
	TabBar {
		id: tabBar

		currentIndex: swipeView.currentIndex
		width: parent.width - addButton.width * 5
		onCurrentIndexChanged: swipeView.setCurrentIndex(currentIndex)
		//TabButton { text: "TabButton" }
	}
	
	Component {
		id: tabButton
		TabButton { text: "TabButton" }
	}
	
	Button {
		id: addButton
		text: "+"
		flat: true
		onClicked: {
			tabBar.addItem(tabButton.createObject(tabBar))
			console.log("added:", tabBar.itemAt(tabBar.count - 1), tabBar.count)
		}
	}
	
	Button {
		id: removeButton
		text: "-"
		flat: true
		onClicked: {
			tabBar.removeItem(tabBar.itemAt(tabBar.count - 1))
			console.log("remove:", tabBar.itemAt(tabBar.count - 1), tabBar.count)
		}
	}
	SwipeView {
		id: swipeView
		currentIndex: tabBar.currentIndex
	}

	Button {
		text: qsTr("Home")
		onClicked: swipeView.setCurrentIndex(0)
		enabled: swipeView.currentIndex > 0
	}

	Button {
		text: qsTr("Previous")
		onClicked: swipeView.decrementCurrentIndex()
		enabled: swipeView.currentIndex > 0
	}

	Button {
		text: qsTr("Next")
		onClicked: { swipeView.currentIndex += 1}//暂时还不知道为什么用这个函数不行swipeView.incrementCurrentIndex(); console.log("Next")}
		enabled: swipeView.currentIndex < tabBar.count - 1
	}
}
