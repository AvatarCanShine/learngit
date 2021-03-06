import QtQuick 2.0
Item {
	id: root
	property int duration: 3000
	width: 480
	height: 300

	Rectangle {
		id: sky
		width: parent.width
		height: 200
		gradient: Gradient {
			GradientStop { position: 0.0; color: "#0080FF" }
			GradientStop { position: 1.0; color: "#66CCFF" }	
		}	
	}
	Rectangle {
		id: ground
		anchors.top: sky.bottom
		anchors.bottom: root.bottom
		width: parent.width	
		gradient: Gradient {
			GradientStop { position: 0.0; color: "#00ff00" }
			GradientStop { position: 1.0; color: "#00803F" }	
		}
	}
	Image {
		id: ball
		x: 0; y: root.height - height
		source: "qrc:/res/Images/soccer_ball.png"
		
		MouseArea {
			anchors.fill: parent
			onClicked: {
				ball.x = 0
				ball.y = root.height - ball.height * 0.1
				ball.rotation = 0
				anim.restart()	
			}	
		}
	}
 
	//平行动画
	ParallelAnimation {
		id: anim
		//连续动画
		SequentialAnimation {
			//y属性动画
			NumberAnimation {
				target: ball
				properties: "y"
				to: 20
				duration: root.duration * 0.4
				easing.type: Easing.OutCirc
			}
			//y属性动画
			NumberAnimation {
				target: ball
				properties: "y"
				to: root.height - ball.height
				duration: root.duration * 0.6
				easing.type: Easing.OutBounce
			}
		}
		//x属性动画
		NumberAnimation {
			target: ball
			properties: "x"
			to: root.width - ball.width
			duration: root.duration
		}
		//旋转属性动画
		RotationAnimation {
			target: ball
			properties: "rotation"
			to: 720
			duration: root.duration
		}
	}
}



	
