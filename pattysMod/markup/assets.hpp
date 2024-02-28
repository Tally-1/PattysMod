// import RscStructuredText;
// import RscTree;
// import RscDisplayTeamSwitch;
// import RscControlsGroup;

class RscFrame
{
    type = 0;
    idc = -1;
    deletable = 0;
    style = 64;
    shadow = 2;
    colorBackground[] = 
    {
        0,
        0,
        0,
        0
    };
    colorText[] = 
    {
        1,
        1,
        1,
        1
    };
    font = "RobotoCondensed";
    sizeEx = 0.02;
    text = "";
    x = 0;
    y = 0;
    w = 0.3;
    h = 0.3;
};

class RscListBox
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = 5;
    rowHeight = 0;
    colorText[] = 
    {
        1,
        1,
        1,
        1
    };
    colorDisabled[] = 
    {
        1,
        1,
        1,
        0.25
    };
    colorScrollbar[] = 
    {
        1,
        0,
        0,
        0
    };
    colorSelect[] = 
    {
        0,
        0,
        0,
        1
    };
    colorSelect2[] = 
    {
        0,
        0,
        0,
        1
    };
    colorSelectBackground[] = 
    {
        0.95,
        0.95,
        0.95,
        1
    };
    colorSelectBackground2[] = 
    {
        1,
        1,
        1,
        0.5
    };
    colorBackground[] = 
    {
        0,
        0,
        0,
        0.3
    };
    soundSelect[] = 
    {
        "\A3\ui_f\data\sound\RscListbox\soundSelect",
        0.09,
        1
    };
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
    arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
    arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
    colorPicture[] = 
    {
        1,
        1,
        1,
        1
    };
    colorPictureSelected[] = 
    {
        1,
        1,
        1,
        1
    };
    colorPictureDisabled[] = 
    {
        1,
        1,
        1,
        0.25
    };
    colorPictureRight[] = 
    {
        1,
        1,
        1,
        1
    };
    colorPictureRightSelected[] = 
    {
        1,
        1,
        1,
        1
    };
    colorPictureRightDisabled[] = 
    {
        1,
        1,
        1,
        0.25
    };
    colorTextRight[] = 
    {
        1,
        1,
        1,
        1
    };
    colorSelectRight[] = 
    {
        0,
        0,
        0,
        1
    };
    colorSelect2Right[] = 
    {
        0,
        0,
        0,
        1
    };
    tooltipColorText[] = 
    {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = 
    {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = 
    {
        0,
        0,
        0,
        0.65
    };
    class ListScrollBar
    {
        color[] = 
        {
            1,
            1,
            1,
            1
        };
        autoScrollEnabled = 1;
    };
    x = 0;
    y = 0;
    w = 0.3;
    h = 0.3;
    style = 16;
    font = "RobotoCondensed";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    shadow = 0;
    colorShadow[] = 
    {
        0,
        0,
        0,
        0.5
    };
    period = 1.2;
    maxHistoryDelay = 1;
};

class RscButton
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = 1;
    text = "";
    colorText[] = 
    {
        1,
        1,
        1,
        1
    };
    colorDisabled[] = 
    {
        1,
        1,
        1,
        0.25
    };
    colorBackground[] = 
    {
        0,
        0,
        0,
        0.7
    };
    colorBackgroundDisabled[] = 
    {
        0,
        0,
        0,
        0.5
    };
    colorBackgroundActive[] = 
    {
        0,
        0,
        0,
        1
    };
    colorFocused[] = 
    {
        0,
        0,
        0,
        1
    };
    colorShadow[] = 
    {
        0,
        0,
        0,
        0
    };
    colorBorder[] = 
    {
        0,
        0,
        0,
        1
    };
    soundEnter[] = 
    {
        "\A3\ui_f\data\sound\RscButton\soundEnter",
        0.09,
        1
    };
    soundPush[] = 
    {
        "\A3\ui_f\data\sound\RscButton\soundPush",
        0.09,
        1
    };
    soundClick[] = 
    {
        "\A3\ui_f\data\sound\RscButton\soundClick",
        0.09,
        1
    };
    soundEscape[] = 
    {
        "\A3\ui_f\data\sound\RscButton\soundEscape",
        0.09,
        1
    };
    idc = -1;
    style = 2;
    x = 0;
    y = 0;
    w = 0.095589;
    h = 0.039216;
    shadow = 2;
    font = "RobotoCondensed";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    url = "";
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
    borderSize = 0;
};