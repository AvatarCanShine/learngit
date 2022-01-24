import QtQuick
import QtQuick.Controls

Item {
	Dialog {
		id: dialog
		x: ( parent.width - width ) / 2
		y: ( parent.height - height ) / 2
		implicitWidth: 500
		implicitHeight: 300
		title: "Title"
		modal: true
		standardButtons: Dialog.Ok | Dialog.Cancel // | Dialog.Open | Dialog.Close | Dialog.Apply | Dialog.Reset | Dialog.Retry | Dialog.About | Dialog.Ignore

		onAccepted: console.log("Ok clicked");
		onRejected: console.log("Cancel clicked");
	}
	
	Button {
		text: "open"
		onClicked: dialog.open();
	}
}
