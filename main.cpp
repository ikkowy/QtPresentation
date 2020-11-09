#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <cstdio>
#include <cmath>
#include <iostream>

#include "Julia.h"

int main(int argc, char * argv[]) {
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    app.setOrganizationName("BA Leipzig");
    app.setOrganizationDomain("org.ikkowy");

    QQmlApplicationEngine engine;

    engine.addImageProvider("julia", new JuliaImageProvider);

    engine.load("qrc:/MainWindow.qml");

    return app.exec();
}
