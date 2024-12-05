class RscFrame;
class RscListBox;
class RscButton;

#include "dialogs\life_GUI.hpp"

class PTTY_LifeMenuDisplay 
{
    idd              = -1;
    name             = "PTTY_LifeMenuDisplay";
    onLoad           = "with uiNameSpace do { PTTY_LifeMenuDisplay = _this select 0 }";
    onUnLoad         = "with uiNameSpace do { PTTY_LifeMenuDisplay = displayNull }";

    class Controls{};
};