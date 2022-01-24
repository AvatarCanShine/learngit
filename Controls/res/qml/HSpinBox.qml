import QtQuick
import QtQuick.Controls

SpinBox {
	id: spinBox
	from: 110
	value: 110
	to: 100 * 100
	stepSize: 100
	anchors.centerIn: parent

	property int decimals: 2
	property real realValue: value / 100

	//DoubleValidator 为随机数生成的
	validator: DoubleValidator {
		bottom: Math.min(spinBox.from, spinBox.to)
		top: Math.max(spinBox.from, spinBox.to)
	}
	
	textFromValue: function(value, locale) {
		return Number(value / 100).toLocaleString(locale, 'f', spinBox.decimals);
	}
	
	valueFromText: function(text, locale) {
		return Number.fromLocaleString(locale, text) * 100;
	}
}
