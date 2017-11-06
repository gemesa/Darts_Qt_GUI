#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSettings>
#include <QDir>

#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QSettings settings(QDir::currentPath() + "/config/config.ini",QSettings::IniFormat);

//    settings.beginGroup("mainWindow");
//    qDebug() << settings.value("width",1700);
//    qDebug() << settings.value("height",1000);
//    settings.endGroup();

//    settings.beginGroup("gameModeText");
//    qDebug() << settings.value("topPadding",40);
//    qDebug() << settings.value("sidePadding",450);
//    qDebug() << settings.value("width",400);
//    qDebug() << settings.value("fontFamily","Solid Edge Stencil");
//    qDebug() << settings.value("fontSize",40);
//    qDebug() << settings.value("fontColor","silver");
//    qDebug() << settings.value("styleBold",true);
//    qDebug() << settings.value("styleItalic",false);
//    settings.endGroup();

//    settings.beginGroup("mainRowLayout");
//    qDebug() << settings.value("margins", 40);
//    qDebug() << settings.value("spacing", 20);
//    settings.endGroup();

//    settings.beginGroup("scoreBoard");
//    qDebug() << settings.value("frameWidth",20);
//    qDebug() << settings.value("frameImage","images/scorBoardFrame.png");
//    qDebug() << settings.value("frameOpacity",1);
//    qDebug() << settings.value("backgroundColor","transparent");
//    qDebug() << settings.value("backgroundOpacity",1);
//    qDebug() << settings.value("scoreSpacing",0);
//    qDebug() << settings.value("playerTextWidth",150);
//    qDebug() << settings.value("playerTextHeight",70);
//    qDebug() << settings.value("playerTextBackgroundColor","transparent");
//    qDebug() << settings.value("playerTextBackgorundOpacity",1);
//    qDebug() << settings.value("playerTextFontFamily","Solid Edge Stencil");
//    qDebug() << settings.value("playerTextFontSize",24);
//    qDebug() << settings.value("playerTextFontColor","white");
//    qDebug() << settings.value("playerFillerWidth",70);
//    qDebug() << settings.value("playerFillerBackgroundColor","transparent");
//    qDebug() << settings.value("playerFillerBackgorundOpacity",1);
//    qDebug() << settings.value("scoreTextHeight",50);
//    qDebug() << settings.value("scoreTextBorderWidth",1);
//    qDebug() << settings.value("scoreTextBorderColor","white");
//    qDebug() << settings.value("scoreTextBackroundColor","transparent");
//    qDebug() << settings.value("scoreTextBackgoundOpacity",1);
//    qDebug() << settings.value("scoreTextFontFamily","Solid Edge Stencil");
//    qDebug() << settings.value("scoreTextFontSize",24);
//    qDebug() << settings.value("scoreTextFontColor","white");
//    settings.endGroup();

//    settings.beginGroup("dartsTable");
//    qDebug() << settings.value("frameColor","black");
//    qDebug() << settings.value("fontFamily","Solid Edge Stencil");
//    qDebug() << settings.value("fontColor","grey");
//    qDebug() << settings.value("doubleBullsEyeColor","#D63A22");
//    qDebug() << settings.value("bullsEyeColor","#31994E");
//    qDebug() << settings.value("firstMultiplierColor","#D63A22");
//    qDebug() << settings.value("secondMultiplierColor","#31994E");
//    qDebug() << settings.value("firstSimpleColor","black");
//    qDebug() << settings.value("secondSimpleColor","#F2F0B7");
//    qDebug() << settings.value("wireFrameColor","grey");
//    settings.endGroup();

    return app.exec();
}
