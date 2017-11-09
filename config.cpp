#include "config.h"

configMainWindow::configMainWindow()
{

}

void configMainWindow::setWidth(int width)
{
    this->width = width;
}

int configMainWindow::getWidth()
{
    return this->width;
}

void configMainWindow::setHeight(int height)
{
    this->height = height;
}

int configMainWindow::getHeight()
{
    return this->height;
}

void configMainWindow::setFullscreen(bool fullscreen)
{
    this->fullscreen = fullscreen;
}

bool configMainWindow::getFullscreen()
{
    return this->fullscreen;
}

configGameModeText::configGameModeText()
{

}

void configGameModeText::setTopPadding(int topPadding)
{
    this->topPadding = topPadding;
}

int configGameModeText::getTopPadding()
{
    return this->topPadding;
}

void configGameModeText::setSidePadding(int sidePadding)
{
    this->sidePadding = sidePadding;
}

int configGameModeText::getSidePadding()
{
    return this->sidePadding;
}

void configGameModeText::setWidth(int width)
{
    this->width = width;
}

int configGameModeText::getWidth()
{
    return this->width;
}

void configGameModeText::setFontFamily(QString fontFamily)
{
    this->fontFamily = fontFamily;
}

QString configGameModeText::getFontFamily()
{
    return this->fontFamily;
}

void configGameModeText::setFontSize(int fontSize)
{
    this->fontSize = fontSize;
}

int configGameModeText::getFontSize()
{
    return this->fontSize;
}

void configGameModeText::setFontColor(QString fontColor)
{
    this->fontColor = fontColor;
}

QString configGameModeText::getFontColor()
{
    return this->fontColor;
}

void configGameModeText::setStyleBold(bool styleBold)
{
    this->styleBold = styleBold;
}

bool configGameModeText::getStyleBold()
{
    return this->styleBold;
}

void configGameModeText::setStyleItalic(bool styleItalic)
{
    this->styleItalic = styleItalic;
}

bool configGameModeText::getStyleItalic()
{
    return this->styleItalic;
}

configDartCounter::configDartCounter()
{

}

void configDartCounter::setWidth(int width)
{
    this->width = width;
}

int configDartCounter::getWidth()
{
    return this->width;
}

void configDartCounter::setHeight(int height)
{
    this->height = height;
}

int configDartCounter::getHeight()
{
    return this->height;
}

void configDartCounter::setImage(QString image)
{
    this->image = image;
}

QString configDartCounter::getImage()
{
    return this->image;
}

configMainRowLayout::configMainRowLayout()
{

}

void configMainRowLayout::setMargins(int margins)
{
    this->margins = margins;
}

int configMainRowLayout::getMargins()
{
    return this->margins;
}

void configMainRowLayout::setSpacing(int spacing)
{
    this->spacing = spacing;
}

int configMainRowLayout::getSpacing()
{
    return this->spacing;
}

configScoreBoard::configScoreBoard()
{

}

void configScoreBoard::setFrameWidth(int frameWidth)
{
    this->frameWidth = frameWidth;
}

int configScoreBoard::getFrameWidth()
{
    return this->frameWidth;
}

void configScoreBoard::setFrameImage(QString frameImage)
{
    this->frameImage = frameImage;
}

QString configScoreBoard::getFrameImage()
{
    return this->frameImage;
}

void configScoreBoard::setFrameOpacity(float frameOpacity)
{
    this->frameOpacity = frameOpacity;
}

float configScoreBoard::getFrameOpacity()
{
    return this->frameOpacity;
}

void configScoreBoard::setBackgroundColor(QString backgroundColor)
{
    this->backgroundColor = backgroundColor;
}

QString configScoreBoard::getBackgroundColor()
{
    return this->backgroundColor;
}

void configScoreBoard::setBackgroundOpacity(float backgroundOpacity)
{
    this->backgroundOpacity = backgroundOpacity;
}

float configScoreBoard::getBackgroundOpacity()
{
    return this->backgroundOpacity;
}

void configScoreBoard::setScoreSpacing(int scoreSpacing)
{
    this->scoreSpacing = scoreSpacing;
}

int configScoreBoard::getScoreSpacing()
{
    return this->scoreSpacing;
}

void configScoreBoard::setPlayerTextWidth(int playerTextWidth)
{
    this->playerTextWidth = playerTextWidth;
}

int configScoreBoard::getPlayerTextWidth()
{
    return this->playerTextWidth;
}

void configScoreBoard::setPlayerTextHeight(int playerTextHeight)
{
    this->playerTextHeight = playerTextHeight;
}

int configScoreBoard::getPlayerTextHeight()
{
    return this->playerTextHeight;
}

void configScoreBoard::setPlayerTextBackgroundColor(QString playerTextBackgroundColor)
{
    this->playerFillerBackgroundColor = playerTextBackgroundColor;
}

QString configScoreBoard::getPlayerTextBackgroundColor()
{
    return this->playerFillerBackgroundColor;
}

void configScoreBoard::setPlayerTextBackgroundOpacity(float playerTextBackgroundOpacity)
{
    this->playerTextBackgroundOpacity = playerTextBackgroundOpacity;
}

float configScoreBoard::getPlayerTextBackgroundOpacity()
{
    return this->playerFillerBackgroundOpacity;
}

void configScoreBoard::setPlayerTextFontFamily(QString playerTextFontFamily)
{
    this->playerTextFontFamily = playerTextFontFamily;
}

QString configScoreBoard::getPlayerTextFontFamily()
{
    return this->playerTextFontFamily;
}

void configScoreBoard::setPlayerTextFontSize(int playerTextFontSize)
{
    this->playerTextFontSize = playerTextFontSize;
}

int configScoreBoard::getPlayerTextFontSize()
{
    return this->playerTextFontSize;
}

void configScoreBoard::setPlayerTextFontColor(QString playerTextFontColor)
{
    this->playerTextFontColor = playerTextFontColor;
}

QString configScoreBoard::getPlayerTextFontColor()
{
    return this->playerTextFontColor;
}

void configScoreBoard::setPlayerFillerWidth(int playerFillerWidth)
{
    this->playerFillerWidth = playerFillerWidth;
}

int configScoreBoard::getPlayerFillerWidth()
{
    return this->playerFillerWidth;
}

void configScoreBoard::setPlayerFillerBackgroundColor(QString playerFillerBackgroundColor)
{
    this->playerFillerBackgroundColor = playerFillerBackgroundColor;
}

QString configScoreBoard::getPlayerFillerBackgroundColor()
{
    return this->playerFillerBackgroundColor;
}

void configScoreBoard::setPlayerFillerBackgroundOpacity(float playerFillerBackgroundOpacity)
{
    this->playerFillerBackgroundOpacity = playerFillerBackgroundOpacity;
}

float configScoreBoard::getPlayerFillerBackgroundOpacity()
{
    return this->playerFillerBackgroundOpacity;
}

void configScoreBoard::setScoreTextHeight(int scoreTextHeight)
{
    this->scoreTextHeight = scoreTextHeight;
}

int configScoreBoard::getScoreTextHeight()
{
    return this->scoreTextHeight;
}

void configScoreBoard::setScoreTextBorderWidth(int scoreTextBorderWidth)
{
    this->scoreTextBorderWidth = scoreTextBorderWidth;
}

int configScoreBoard::getScoreTextBorderWidth()
{
    return this->scoreTextBorderWidth;
}

void configScoreBoard::setScoreTextBorderColor(QString scoreTextBorderColor)
{
    this->scoreTextBorderColor = scoreTextBorderColor;
}

QString configScoreBoard::getScoreTextBorderColor()
{
    return this->scoreTextBorderColor;
}

void configScoreBoard::setScoreTextBackgroundColor(QString scoreTextBackgroundColor)
{
    this->scoreTextBackgroundColor = scoreTextBackgroundColor;
}

QString configScoreBoard::getScoreTextBackgroundColor()
{
    return this->scoreTextBackgroundColor;
}

void configScoreBoard::setScoreTextBackgroundOpacity(float scoreTextBackgroundOpacity)
{
    this->scoreTextBackgroundOpacity = scoreTextBackgroundOpacity;
}

float configScoreBoard::getScoreTextBackgroundOpacity()
{
    return this->scoreTextBackgroundOpacity;
}

void configScoreBoard::setScoreTextFontFamily(QString scoreTextFontFamily)
{
    this->scoreTextFontFamily = scoreTextFontFamily;
}

QString configScoreBoard::getScoreTextFontFamily()
{
    return this->scoreTextFontFamily;
}

void configScoreBoard::setScoreTextFontSize(int scoreTextFontSize)
{
    this->scoreTextFontSize = scoreTextFontSize;
}

int configScoreBoard::getScoreTextFontSize()
{
    return this->scoreTextFontSize;
}

void configScoreBoard::setScoreTextFontColor(QString scoreTextFontColor)
{
    this->scoreTextFontColor = scoreTextFontColor;
}

QString configScoreBoard::getScoreTextFontColor()
{
    return this->scoreTextFontColor;
}

configDartsTable::configDartsTable()
{

}

void configDartsTable::setWidth(int width)
{
    this->width = width;
}

int configDartsTable::getWidth()
{
    return this->width;
}

void configDartsTable::setFrameColor(QString frameColor)
{
    this->frameColor = frameColor;
}

QString configDartsTable::getFrameColor()
{
    return this->frameColor;
}

void configDartsTable::setFontFamily(QString fontFamily)
{
    this->fontFamily = fontFamily;
}

QString configDartsTable::getFontFamily()
{
    return this->fontFamily;
}

void configDartsTable::setFontColor(QString fontColor)
{
    this->fontColor = fontColor;
}

QString configDartsTable::getFontColor()
{
    return this->fontColor;
}

void configDartsTable::setDoubleBullsEyeColor(QString doubleBullsEyeColor)
{
    this->doubleBullsEyeColor = doubleBullsEyeColor;
}

QString configDartsTable::getDoubleBullsEyeColor()
{
    return this->doubleBullsEyeColor;
}

void configDartsTable::setBullsEyeColor(QString bullsEyeColor)
{
    this->bullsEyeColor = bullsEyeColor;
}

QString configDartsTable::getBullsEyeColor()
{
    return this->bullsEyeColor;
}

void configDartsTable::setFirstMultiplierColor(QString firstMultiplierColor)
{
    this->firstMultiplierColor = firstMultiplierColor;
}

QString configDartsTable::getFirstMultiplierColor()
{
    return this->firstMultiplierColor;
}

void configDartsTable::setSecondMultiplierColor(QString secondMultiplierColor)
{
    this->secondMultiplierColor = secondMultiplierColor;
}

QString configDartsTable::getSecondMultiplierColor()
{
    return this->secondMultiplierColor;
}

void configDartsTable::setFirstSimpleColor(QString firstSimpleColor)
{
    this->firstSimpleColor = firstSimpleColor;
}

QString configDartsTable::getFirstSimpleColor()
{
    return this->firstSimpleColor;
}

void configDartsTable::setSecondSimpleColor(QString secondSimpleColor)
{
    this->secondSimpleColor = secondSimpleColor;
}

QString configDartsTable::getSecondSimpleColor()
{
    return this->secondSimpleColor;
}

void configDartsTable::setWireFrameColor(QString wireFrameColor)
{
    this->wireFrameColor = wireFrameColor;
}

QString configDartsTable::getWireFrameColor()
{
    return this->wireFrameColor;
}

config::config()
{

}
