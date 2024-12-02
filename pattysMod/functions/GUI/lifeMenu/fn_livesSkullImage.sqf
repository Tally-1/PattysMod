params[
	["_count",nil,[0]]
];
if(true)exitWith{"\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa"};

// Keeping this portion just in case Patty wants the icons used in notifications.
private _path = "\pattysMod\images\";
private _icon = "Dead1";
private _file = ".paa";

if(_count >=  PTTY_woundedYellow) 
then{_icon = "Dead2"};

if(_count >=  PTTY_woundedOrange) 
then{_icon = "Dead3"};

if(_count <=  PTTY_woundedRed
||{_count <  PTTY_woundedOrange}) 
then{_icon = "Dead4"};

if(_count isEqualTo 0)
then{_icon = "Dead5"};

private _image = [_path, _icon, _file]joinString"";

_image;