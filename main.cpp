#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSettings>
#include <QDir>

#include "config.h"

#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QSettings settings(QDir::currentPath() + "/config/config.ini",QSettings::IniFormat);
    config designConfig;

    settings.beginGroup("mainWindow");
    designConfig.mainWindow.setWidth(settings.value("width",1700).toInt());
    designConfig.mainWindow.setHeight(settings.value("height",1000).toInt());
    settings.endGroup();

    settings.beginGroup("gameModeText");
    designConfig.gameModeText.setTopPadding(settings.value("topPadding",40).toInt());
    designConfig.gameModeText.setSidePadding(settings.value("sidePadding",450).toInt());
    designConfig.gameModeText.setWidth(settings.value("width",400).toInt());
    designConfig.gameModeText.setFontFamily(settings.value("fontFamily","Solid Edge Stencil").toString());
    designConfig.gameModeText.setFontSize(settings.value("fontSize",40).toInt());
    designConfig.gameModeText.setFontColor(settings.value("fontColor","silver").toString());
    designConfig.gameModeText.setStyleBold(settings.value("styleBold",true).toBool());
    designConfig.gameModeText.setStyleItalic(settings.value("styleItalic",false).toBool());
    settings.endGroup();

    settings.beginGroup("dartCounter");
    designConfig.dartCounter.setWidth(settings.value("width", 50).toInt());
    designConfig.dartCounter.setHeight(settings.value("height", 150).toInt());
    designConfig.dartCounter.setImage(settings.value("image","qrc:content/images/dart_silhouette_transparent_invert.png").toString());
    settings.endGroup();

    settings.beginGroup("mainRowLayout");
    designConfig.mainRowLayout.setMargins(settings.value("margins", 40).toInt());
    designConfig.mainRowLayout.setSpacing(settings.value("spacing", 20).toInt());
    settings.endGroup();

    settings.beginGroup("scoreBoard");
    designConfig.scoreBoard.setFrameWidth(settings.value("frameWidth",20).toInt());
    designConfig.scoreBoard.setFrameImage(settings.value("frameImage","qrc:content/images/scoreBoardFrame.png").toString());
    designConfig.scoreBoard.setFrameOpacity(settings.value("frameOpacity",1).toFloat());
    designConfig.scoreBoard.setBackgroundColor(settings.value("backgroundColor","transparent").toString());
    designConfig.scoreBoard.setBackgroundOpacity(settings.value("backgroundOpacity",1).toFloat());
    designConfig.scoreBoard.setScoreSpacing(settings.value("scoreSpacing",0).toInt());
    designConfig.scoreBoard.setPlayerTextWidth(settings.value("playerTextWidth",150).toInt());
    designConfig.scoreBoard.setPlayerTextHeight(settings.value("playerTextHeight",70).toInt());
    designConfig.scoreBoard.setPlayerTextBackgroundColor(settings.value("playerTextBackgroundColor","transparent").toString());
    designConfig.scoreBoard.setPlayerFillerBackgroundOpacity(settings.value("playerTextBackgorundOpacity",1).toFloat());
    designConfig.scoreBoard.setPlayerTextFontFamily(settings.value("playerTextFontFamily","Solid Edge Stencil").toString());
    designConfig.scoreBoard.setPlayerTextFontSize(settings.value("playerTextFontSize",24).toInt());
    designConfig.scoreBoard.setPlayerTextFontColor(settings.value("playerTextFontColor","white").toString());
    designConfig.scoreBoard.setPlayerFillerWidth(settings.value("playerFillerWidth",70).toInt());
    designConfig.scoreBoard.setPlayerFillerBackgroundColor(settings.value("playerFillerBackgroundColor","transparent").toString());
    designConfig.scoreBoard.setPlayerFillerBackgroundOpacity(settings.value("playerFillerBackgroundOpacity",1).toFloat());
    designConfig.scoreBoard.setScoreTextHeight(settings.value("scoreTextHeight",50).toInt());
    designConfig.scoreBoard.setScoreTextBorderWidth(settings.value("scoreTextBorderWidth",1).toInt());
    designConfig.scoreBoard.setScoreTextBorderColor(settings.value("scoreTextBorderColor","white").toString());
    designConfig.scoreBoard.setScoreTextBackgroundColor(settings.value("scoreTextBackroundColor","transparent").toString());
    designConfig.scoreBoard.setScoreTextBackgroundOpacity(settings.value("scoreTextBackgoundOpacity",1).toFloat());
    designConfig.scoreBoard.setScoreTextFontFamily(settings.value("scoreTextFontFamily","Solid Edge Stencil").toString());
    designConfig.scoreBoard.setScoreTextFontSize(settings.value("scoreTextFontSize",24).toInt());
    designConfig.scoreBoard.setScoreTextFontColor(settings.value("scoreTextFontColor","white").toString());
    settings.endGroup();

    settings.beginGroup("dartsTable");
    designConfig.dartsTable.setFrameColor(settings.value("frameColor","black").toString());
    designConfig.dartsTable.setFontFamily(settings.value("fontFamily","Solid Edge Stencil").toString());
    designConfig.dartsTable.setFontColor(settings.value("fontColor","grey").toString());
    designConfig.dartsTable.setDoubleBullsEyeColor(settings.value("doubleBullsEyeColor","#D63A22").toString());
    designConfig.dartsTable.setBullsEyeColor(settings.value("bullsEyeColor","#31994E").toString());
    designConfig.dartsTable.setFirstMultiplierColor(settings.value("firstMultiplierColor","#D63A22").toString());
    designConfig.dartsTable.setSecondMultiplierColor(settings.value("secondMultiplierColor","#31994E").toString());
    designConfig.dartsTable.setFirstSimpleColor(settings.value("firstSimpleColor","black").toString());
    designConfig.dartsTable.setSecondSimpleColor(settings.value("secondSimpleColor","#F2F0B7").toString());
    designConfig.dartsTable.setWireFrameColor(settings.value("wireFrameColor","grey").toString());
    designConfig.dartsTable.setPattern(settings.value("pattern","qrc:content/images/dartsTablePattern.png").toString());
    settings.endGroup();

    return app.exec();
}
