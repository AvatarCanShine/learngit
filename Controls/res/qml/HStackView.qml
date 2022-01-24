import QtQuick
import QtQuick.Controls

Item {
	StackView {
		id: stackView
		initialItem: mainView
		anchors.fill: parent
	}
	
	Component {
		id: mainView
		
		Row {
			spacing: 10
			
			Button {
				text: "Push"
				onClicked: stackView.push(mainView);
			}
			Button {
				text: "Pop"
				enabled: stackView.depth > 1
				onClicked: stackView.pop();
			}
			Text { text: stackView.depth }
		}
	}
}
