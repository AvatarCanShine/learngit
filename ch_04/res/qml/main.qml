import QtQuick
import Qt.labs.platform 1.1 as Platform
import QtQuick.Controls 

ApplicationWindow {
	id: window
	visible: true
	width: 640; height: 480
	title: qsTr("Image Viewer")	

	function openFileDialog() { fileOpenDialog.open(); }
	function openAboutDialog() { aboutDialog.open(); }

	background: Rectangle {
		color: "darkGray"
	}	

	Image {
		id: image
		anchors.fill: parent
		fillMode: Image.PreserveAspectFit
		asynchronous: true
	}	
	
	Drawer {
		id: drawer
		
		width: Math.min(window.width, window.height) / 3 * 2
		height: window.height

		ListView {
			focus: true
			currentIndex: -1
			anchors.fill: parent

			delegate: ItemDelegate {
				width: parent.width
				text: model.text
				highlighted: ListView.isCurrentItem
				onClicked: {
					drawer.close()
					model.triggered()
				}
			}
			
			model: ListModel {
				ListElement {
					text: qsTr("Open...")
					triggered: function() { fileOpenDialog.open(); }
				}
				ListElement {
					text: qsTr("About...")
					triggered: function() { aboutDialog.open(); }
				}
			}	
			
			ScrollIndicator.vertical: ScrollIndicator {}
		}
	}
	
	header: ToolBar {
		Flow {
			anchors.fill: parent
			ToolButton {
				text: qsTr("Open")
				icon.name: "document-open"
				onClicked: fileOpenDialog.open()
			}
		}
	}
	Platform.FileDialog {
		id: fileOpenDialog
		title: "Select an image file"
		folder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
		nameFilters: [
			"Image file (*.png *.jpeg *.jpg)",
		]	
		onAccepted: {
			image.source = fileOpenDialog.file
		}
	}
	menuBar: MenuBar {
		Menu {
			title: qsTr("&File")
			MenuItem {
				text: qsTr("&Open...")
				icon.name: "document-open"
				onTriggered: fileOpenDialog.open()
			}
		}
		Menu {
			title: qsTr("&Help")
			MenuItem {
				text: qsTr("&About...")
				onTriggered: aboutDialog.open()
			}
		}
	}
	
	Dialog {
		id: aboutDialog
		title: qsTr("About")
		Label {
			anchors.fill: parent
			text: qsTr("QML Image Viewer\nA part of the QmlBook\nhttp://qmlbook.org")
			horizontalAlignment: Text.AlignHCenter
		}
		standardButtons: StandardButton.Ok
	}
}
