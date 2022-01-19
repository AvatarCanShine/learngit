//! [0]
#include <QtQuick/QQuickView>
#include <QGuiApplication>

int main(int argc, char* argv[])
{
	QGuiApplication app(argc, argv);

	QQuickView view;
	view.setResizeMode(QQuickView::SizeRootObjectToView);
	view.setSource(QUrl("qrc:///res/qml/main.qml"));
	view.show();
	return app.exec();
}
