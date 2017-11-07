#ifndef CONFIG_H
#define CONFIG_H
#include <QString>

class configMainWindow
{
public:
    configMainWindow();

    void setWidth(int width);
    int getWidth();

    void setHeight(int height);
    int getHeight();

private:
    int width;
    int height;
};

class configGameModeText
{
public:
    configGameModeText();

    void setTopPadding(int topPadding);
    int getTopPadding();

    void setSidePadding(int sidePadding);
    int getSidePadding();

    void setWidth(int width);
    int getWidth();

    void setFontFamily(QString fontFamily);
    QString getFontFamily();

    void setFontSize(int fontSize);
    int getFontSize();

    void setFontColor(QString fontColor);
    QString getFontColor();

    void setStyleBold(bool styleBold);
    bool getStyleBold();

    void setStyleItalic(bool styleItalic);
    bool getStyleItalic();

private:
    int topPadding;
    int sidePadding;
    int width;
    QString fontFamily;
    int fontSize;
    QString fontColor;
    bool styleBold;
    bool styleItalic;
};

class configDartCounter
{
public:
    configDartCounter();

    void setWidth(int width);
    int getWidth();

    void setHeight(int height);
    int getHeight();

    void setImage(QString image);
    QString getImage();

private:
    int width;
    int height;
    QString image;
};

class configMainRowLayout
{
public:
    configMainRowLayout();

    void setMargins(int margins);
    int getMargins();

    void setSpacing(int spacing);
    int getSpacing();

private:
    int margins;
    int spacing;
};

class configScoreBoard
{
public:
    configScoreBoard();

    void setFrameWidth(int frameWidth);
    int getFrameWidth();

    void setFrameImage(QString frameImage);
    QString getFrameImage();

    void setFrameOpacity(float frameOpacity);
    float getFrameOpacity();

    void setBackgroundColor(QString backgroundColor);
    QString getBackgroundColor();

    void setBackgroundOpacity(float backgroundOpacity);
    float getBackgroundOpacity();

    void setScoreSpacing(int scoreSpacing);
    int getScoreSpacing();

    void setPlayerTextWidth(int playerTextWidth);
    int getPlayerTextWidth();

    void setPlayerTextHeight(int playerTextHeight);
    int getPlayerTextHeight();

    void setPlayerTextBackgroundColor(QString playerTextBackgroundColor);
    QString getPlayerTextBackgroundColor();

    void setPlayerTextBackgroundOpacity(float playerTextBackgroundOpacity);
    float getPlayerTextBackgroundOpacity();

    void setPlayerTextFontFamily(QString playerTextFontFamily);
    QString getPlayerTextFontFamily();

    void setPlayerTextFontSize(int playerTextFontSize);
    int getPlayerTextFontSize();

    void setPlayerTextFontColor(QString playerTextFontColor);
    QString getPlayerTextFontColor();

    void setPlayerFillerWidth(int playerFillerWidth);
    int getPlayerFillerWidth();

    void setPlayerFillerBackgroundColor(QString playerFillerBackgroundColor);
    QString getPlayerFillerBackgroundColor();

    void setPlayerFillerBackgroundOpacity(float playerFillerBackgroundOpacity);
    float getPlayerFillerBackgroundOpacity();

    void setScoreTextHeight(int scoreTextHeight);
    int getScoreTextHeight();

    void setScoreTextBorderWidth(int scoreTextBorderWidth);
    int getScoreTextBorderWidth();

    void setScoreTextBorderColor(QString scoreTextBorderColor);
    QString getScoreTextBorderColor();

    void setScoreTextBackgroundColor(QString scoreTextBackgroundColor);
    QString getScoreTextBackgroundColor();

    void setScoreTextBackgroundOpacity(float scoreTextBackgroundOpacity);
    float getScoreTextBackgroundOpacity();

    void setScoreTextFontFamily(QString scoreTextFontFamily);
    QString getScoreTextFontFamily();

    void setScoreTextFontSize(int scoreTextFontSize);
    int getScoreTextFontSize();

    void setScoreTextFontColor(QString scoreTextFontColor);
    QString getScoreTextFontColor();

private:
    int frameWidth;
    QString frameImage;
    float frameOpacity;
    QString backgroundColor;
    float backgroundOpacity;
    int scoreSpacing;
    int playerTextWidth;
    int playerTextHeight;
    QString playerTextBackgroundColor;
    float playerTextBackgroundOpacity;
    QString playerTextFontFamily;
    int playerTextFontSize;
    QString playerTextFontColor;
    int playerFillerWidth;
    QString playerFillerBackgroundColor;
    float playerFillerBackgroundOpacity;
    int scoreTextHeight;
    int scoreTextBorderWidth;
    QString scoreTextBorderColor;
    QString scoreTextBackgroundColor;
    float scoreTextBackgroundOpacity;
    QString scoreTextFontFamily;
    int scoreTextFontSize;
    QString scoreTextFontColor;
};

class configDartsTable
{
public:
    configDartsTable();

    void setFrameColor(QString frameColor);
    QString getFrameColor();

    void setFontFamily(QString fontFamily);
    QString getFontFamily();

    void setFontColor(QString fontColor);
    QString getFontColor();

    void setDoubleBullsEyeColor(QString doubleBullsEyeColor);
    QString getDoubleBullsEyeColor();

    void setBullsEyeColor(QString bullsEyeColor);
    QString getBullsEyeColor();

    void setFirstMultiplierColor(QString firstMultiplierColor);
    QString getFirstMultiplierColor();

    void setSecondMultiplierColor(QString secondMultiplierColor);
    QString getSecondMultiplierColor();

    void setFirstSimpleColor(QString firstSimpleColor);
    QString getFirstSimpleColor();

    void setSecondSimpleColor(QString secondSimpleColor);
    QString getSecondSimpleColor();

    void setWireFrameColor(QString wireFrameColor);
    QString getWireFrameColor();

private:
    QString frameColor;
    QString fontFamily;
    QString fontColor;
    QString doubleBullsEyeColor;
    QString bullsEyeColor;
    QString firstMultiplierColor;
    QString secondMultiplierColor;
    QString firstSimpleColor;
    QString secondSimpleColor;
    QString wireFrameColor;
};

class config
{
public:
    config();

    configMainWindow mainWindow;
    configGameModeText gameModeText;
    configDartCounter dartCounter;
    configMainRowLayout mainRowLayout;
    configScoreBoard scoreBoard;
    configDartsTable dartsTable;
};

#endif // CONFIG_H
