#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include <QObject>

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/vwallet/main.qml"));
    viewer.showExpanded();
        return app->exec();

}
