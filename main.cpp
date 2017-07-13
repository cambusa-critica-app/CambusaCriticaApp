#include <sys/types.h>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>
#include <QtWidgets>
#include <QApplication>
#include <QtDebug>
#include <QPrinter>
#include <QtPrintSupport>
#include "my_printer_new.h"
#include "write_file.h"
//#include "customsplashscreen.h"
#include <QtPlugin>
#include <QSplashScreen>
#include <QWidget>
#include <QBitmap>
#include <QDesktopWidget>
#include <QMainWindow>
#include <QUrl>


int main(int argc, char *argv[])
{
    //QGuiApplication app(argc, argv);
    QApplication app(argc, argv);
    //Q_CLEANUP_RESOURCE("cambusa_critica.qrc");

    QDesktopWidget* desktopWidget = qApp->desktop();
    QRect screenGeometry = desktopWidget->screenGeometry();
    int screenWidth = screenGeometry.width();
    int screenHeight = screenGeometry.height();

    QPixmap pixmap_background(screenWidth, screenHeight);
    pixmap_background.fill("#eee5d0");

    QPixmap pix_icon(":/qml/CambusaCritica/images/logo_motto.png");
    //QPixmap pix_icon(":/qml/CambusaCritica/images/logo.png");

    QPixmap result(pixmap_background.width(), pixmap_background.height());
    result.fill(Qt::transparent); // force alpha channel
    {
        QPainter painter(&result);
        painter.drawPixmap(0, 0, pixmap_background);
        pix_icon = pix_icon.scaledToWidth( pixmap_background.width()/2 );
        float x_icon = pixmap_background.width()/2 - pix_icon.width()/2;
        float y_icon = pixmap_background.height()/2 - pix_icon.height()/2;
        painter.drawPixmap(x_icon, y_icon, pix_icon);
    }

    //pix_icon = pix_icon.scaled(QSize(20,20),Qt::KeepAspectRatio, Qt::SmoothTransformation);
    //QPainter painter(&pixmap_background);
    //painter.drawPixmap(0,pixmap_background.height()-pix_icon.height(),pix_icon);

    //QFont splashFont;
    //splashFont.setFamily("Arial");
    //splashFont.setBold(true);
    //splashFont.setPixelSize(15);
    //splashFont.setStretch(125);

    QSplashScreen * splash = new QSplashScreen(result);
    //customSplashScreen *splash = new customSplashScreen(pix_icon);
    //customSplashScreen *splash = new customSplashScreen(pixmap_background);
    //splash->setFont(splashFont);
    //splash->setAttribute(Qt::WA_TranslucentBackground);
    //splash->setWindowFlags( Qt::WindowStaysOnTopHint | Qt::SplashScreen | Qt::FramelessWindowHint );
    //splash->setMask(pixmap.mask());
    //splash->setMessageRect(QRect(40, 40, 415, 140), Qt::AlignCenter);
    //splash->showMessage("Menù sani, menù etici\nUna sfida per capi e campi scout", Qt::AlignCenter);
    //splash->drawContents();
    splash->show();
    //for (long int i = 0; i< 1000000000; i++) {}

    qApp->processEvents(QEventLoop::AllEvents);

    QQmlApplicationEngine engine;

    //defining printer
    MyPrinter printer;
    engine.rootContext()->setContextProperty("printer", &printer);

    //defining html file
    MyFile my_file;
    engine.rootContext()->setContextProperty("my_file", &my_file);

    //loading main qml file
    engine.load(QUrl("qrc:///qml/CambusaCritica/mainWindow.qml"));

    app.processEvents();

    QObject *topLevel = engine.rootObjects().value(0);
    //QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);
    QMainWindow *window = qobject_cast<QMainWindow *>(topLevel);

    splash->finish(window);
    app.processEvents();

    return app.exec();

}




