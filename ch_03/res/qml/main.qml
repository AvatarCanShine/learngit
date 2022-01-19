import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
	id: root
	width: 160
	height: 300
	state: "stop"
	states: [
		State {
			name: "stop"
			PropertyChanges { target: light1; color: "red" }	
			PropertyChanges { target: light2; color: "black" }	
		},
		State { 
			name: "go"
			PropertyChanges { target: light1; color: "black" }	
			PropertyChanges { target: light2; color: "green" }	
		}
	]
	Button {
		id: goButton
		anchors.top: light2.bottom
		anchors.topMargin: 20
		anchors.left: light2.left
		anchors.leftMargin: 20
		onClicked: root.state = "go"
		text: "切换"
	}	
	Rectangle {
		id: light1
		x: 25; y: 15
		width: 100; height: width
		radius: width / 2
		color: "black"
		border.color: Qt.lighter(color, 1.1)
	}
	Rectangle {
		id: light2
		x: 25; y: 135
		width: 100; height: width
		radius: width / 2
		color: "black"
		border.color: Qt.lighter(color, 1.1)
	}
	MouseArea {
		anchors.fill: parent
		onClicked: parent.state = (parent.state == "stop" ? "go" : "stop")
	}
	transitions: [
		Transition {
			from: "stop"; to: "go"
			ColorAnimation { target: light1; properties: "color"; duration: 1000 }
			ColorAnimation { target: light2; properties: "color"; duration: 1000 }	
		},
		Transition {
			from: "go"; to: "stop"
			ColorAnimation { target: light1; properties: "color"; duration: 1000 }
			ColorAnimation { target: light2; properties: "color"; duration: 1000 }	
		}
	]
}
