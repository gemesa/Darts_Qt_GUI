#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSettings>
#include <QDir>
#include <QtWidgets>

#include "config.h"
#include "qmlhandlercppside.h"

#include <QDebug>

// Read the configurations and save them into an instantiation of config object
void getConfigurations(config &designConfig, QSettings &settings)
{
    settings.beginGroup("mainWindow");
    designConfig.mainWindow.setWidth(settings.value("width",1700).toInt());
    designConfig.mainWindow.setHeight(settings.value("height",1000).toInt());
    designConfig.mainWindow.setFullscreen(settings.value("fullscreen",false).toBool());
    designConfig.mainWindow.setBackgroundColor(settings.value("backgroundColor","black").toString());
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
    designConfig.dartCounter.setImage(settings.value("image","qrc:content/images/dartSilhouette.png").toString());
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
    designConfig.scoreBoard.setPlayerTextBackgroundOpacity(settings.value("playerTextBackgroundOpacity",1).toFloat());
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
}

// Set the config parameters
void setProperties(const QMLHandlerCppSide &mainWindowQMLObject, config &designConfig)
{
    //mainWindow properties
    mainWindowQMLObject.object->setProperty("mainWindowWidth",QVariant(designConfig.mainWindow.getWidth()));
    mainWindowQMLObject.object->setProperty("mainWindowHeight",QVariant(designConfig.mainWindow.getHeight()));
    mainWindowQMLObject.object->setProperty("mainWindowFullscreen",QVariant(designConfig.mainWindow.getFullscreen()));
    mainWindowQMLObject.object->setProperty("mainWindowBackgroundColor",QVariant(designConfig.mainWindow.getBackgroundColor()));

    // gameModeText properties
    mainWindowQMLObject.object->setProperty("gameModeTextTopPadding",QVariant(designConfig.gameModeText.getTopPadding()));
    mainWindowQMLObject.object->setProperty("gameModeTextSidePadding",QVariant(designConfig.gameModeText.getSidePadding()));
    mainWindowQMLObject.object->setProperty("gameModeTextWidth",QVariant(designConfig.gameModeText.getWidth()));
    mainWindowQMLObject.object->setProperty("gameModeTextFontFamily",QVariant(designConfig.gameModeText.getFontFamily()));
    mainWindowQMLObject.object->setProperty("gameModeTextFontSize",QVariant(designConfig.gameModeText.getFontSize()));
    mainWindowQMLObject.object->setProperty("gameModeTextFontColor",QVariant(designConfig.gameModeText.getFontColor()));
    mainWindowQMLObject.object->setProperty("gameModeTextStyleBold",QVariant(designConfig.gameModeText.getStyleBold()));
    mainWindowQMLObject.object->setProperty("gameModeTextStyleItalic",QVariant(designConfig.gameModeText.getStyleItalic()));

    // dartCounter properties
    mainWindowQMLObject.object->setProperty("dartCounterWidth",QVariant(designConfig.dartCounter.getWidth()));
    mainWindowQMLObject.object->setProperty("dartCounterHeight",QVariant(designConfig.dartCounter.getHeight()));
    mainWindowQMLObject.object->setProperty("dartCounterImage",QVariant(designConfig.dartCounter.getImage()));

    // mainRowLayout properties
    mainWindowQMLObject.object->setProperty("mainRowLayoutMargins",QVariant(designConfig.mainRowLayout.getMargins()));
    mainWindowQMLObject.object->setProperty("mainRowLayoutSpacing",QVariant(designConfig.mainRowLayout.getSpacing()));

    // scoreBoard properties
    mainWindowQMLObject.object->setProperty("scoreBoardFrameWidth",QVariant(designConfig.scoreBoard.getFrameWidth()));
    mainWindowQMLObject.object->setProperty("scoreBoardFrameImage",QVariant(designConfig.scoreBoard.getFrameImage()));
    mainWindowQMLObject.object->setProperty("scoreBoardFrameOpacity",QVariant(designConfig.scoreBoard.getFrameOpacity()));
    mainWindowQMLObject.object->setProperty("scoreBoardBackgroundColor",QVariant(designConfig.scoreBoard.getBackgroundColor()));
    mainWindowQMLObject.object->setProperty("scoreBoardBackgroundOpacity",QVariant(designConfig.scoreBoard.getBackgroundOpacity()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreSpacing",QVariant(designConfig.scoreBoard.getScoreSpacing()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextWidth",QVariant(designConfig.scoreBoard.getPlayerTextWidth()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextHeight",QVariant(designConfig.scoreBoard.getPlayerTextHeight()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextBackgroundColor",QVariant(designConfig.scoreBoard.getPlayerTextBackgroundColor()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextBackgroundOpacity",QVariant(designConfig.scoreBoard.getPlayerTextBackgroundOpacity()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextFontFamily",QVariant(designConfig.scoreBoard.getPlayerTextFontFamily()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextFontSize",QVariant(designConfig.scoreBoard.getPlayerTextFontSize()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerTextFontColor",QVariant(designConfig.scoreBoard.getPlayerTextFontColor()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerFillerWidth",QVariant(designConfig.scoreBoard.getPlayerFillerWidth()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerFillerBackgroundColor",QVariant(designConfig.scoreBoard.getPlayerFillerBackgroundColor()));
    mainWindowQMLObject.object->setProperty("scoreBoardPlayerFillerBackgroundOpacity",QVariant(designConfig.scoreBoard.getPlayerFillerBackgroundOpacity()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextHeight",QVariant(designConfig.scoreBoard.getScoreTextHeight()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextBorderWidth",QVariant(designConfig.scoreBoard.getScoreTextBorderWidth()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextBorderColor",QVariant(designConfig.scoreBoard.getScoreTextBorderColor()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextBackgroundColor",QVariant(designConfig.scoreBoard.getScoreTextBackgroundColor()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextBackgroundOpacity",QVariant(designConfig.scoreBoard.getScoreTextBackgroundOpacity()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextFontFamily",QVariant(designConfig.scoreBoard.getScoreTextFontFamily()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextFontSize",QVariant(designConfig.scoreBoard.getScoreTextFontSize()));
    mainWindowQMLObject.object->setProperty("scoreBoardScoreTextFontColor",QVariant(designConfig.scoreBoard.getScoreTextFontColor()));


    // dartsTable properties
//    mainWindowQMLObject.object->setProperty("dartsTableWidth",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableFrameColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableFontFamily",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableFontColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableDoubleBullsEyeColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableBullsEyeColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableWireFrameColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableFirstMultiplierColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableSecondMultiplierColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableFirstSimpleColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTableSecondSimpleColor",QVariant());
//    mainWindowQMLObject.object->setProperty("dartsTablePattern",QVariant());
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    app.setWindowIcon(QIcon(":/content/images/dartsIcon.png"));

    QSettings settings(QDir::currentPath() + "/config/config.ini",QSettings::IniFormat);

    config designConfig;
    QMLHandlerCppSide mainWindowQMLObject(engine.rootObjects()[0], "mainWindow");

    getConfigurations(designConfig, settings);
    setProperties(mainWindowQMLObject, designConfig);

    return app.exec();
}
