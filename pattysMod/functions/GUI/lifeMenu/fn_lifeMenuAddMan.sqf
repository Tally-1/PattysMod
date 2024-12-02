params[
    ["_ctrl",  nil, [controlNull]],
    ["_man",   nil,     [objNull]],
    ["_path",  nil,          [[]]]
];
private _textMan   = name _man;
private _indexMan  = _ctrl tvAdd [[_indexGrp], _textMan];
private _dataIdMan = ["man: ",_groupI,":",_manI]joinString"";
private _path      = [_indexGrp, _indexMan];
private _lives     = [_man]            call PTTY_fnc_getLives;
private _rankIcon  = [rankId _man]     call PTTY_fnc_getRankIcon;
private _lifeIcon  = [str _lives, 1.2] call PTTY_fnc_textTexture;;
private _lifeColor = [_lives]          call PTTY_fnc_livesLeftColor;
private _toolTip   = [_lives, " Lives"]joinString""; // rank _man;

if(!alive _man)
then{
    _rankIcon = "\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa";
    _ctrl tvSetColor [_path, [1,1,1,0.5]];
};

// Store the man to the hashmap, and the key for the hashmap as data to the "list-item"
_dataMap set                 [_dataIdMan,       _man];
_ctrl tvSetData              [_path,      _dataIdMan];
_ctrl tvSetTooltip           [_path,        _toolTip];
_ctrl tvSetPicture           [_path,       _rankIcon];
_ctrl tvSetPictureRight      [_path,       _lifeIcon];
_ctrl tvSetPictureRightColor [_path,      _lifeColor];

true;