params[["_infoArr", nil, []]];
_infoArr
params[
	["_names",  nil, []],
	["_images", nil, []],
	["_models", nil, []]
];
_names
params[
	["_rifleName",    nil, [""]],
	["_launcherName", nil, [""]],
	["_pistolName",   nil, [""]],
	["_uniformName",  nil, [""]],
	["_vestName",     nil, [""]],
	["_backPackName", nil, [""]],
	["_helmetName",   nil, [""]]
];
_images
params[
	["_rifleImage",    nil, [""]],
	["_launcherImage", nil, [""]],
	["_pistolImage",   nil, [""]],
	["_uniformImage",  nil, [""]],
	["_vestImage",     nil, [""]],
	["_backPackImage", nil, [""]],
	["_helmetImage",   nil, [""]]
];

private _end       = "</t>";
private _NL        = "<br/>";
private _H1        = "<t align='center' size='1.6'>";
private _H2        = "<t size='1.2'>";
private _cLight    = "<t align='center' >";
private _blLight   = "<t valign='bottom' align='left'>";
private _brBold    = "<t align='Right' valign='bottom'>";

private _loadOut   = localize "DEFAULT LOADOUT";
private _primary   = localize "STR_A3_RSCDISPLAYGEAR_FILTERS_PRIMARY0";
private _launcher  = localize "STR_A3_RSCDISPLAYARSENAL_TAB_SECONDARYWEAPON";
private _secondary = localize "STR_A3_RSCDISPLAYGEAR_FILTERS_SECONDARY0";
private _uniform   = localize "STR_A3_RSCDISPLAYARSENAL_TAB_UNIFORM";
private _vest      = localize "STR_A3_RSCDISPLAYARSENAL_TAB_VEST";
private _backpack  = localize "STR_A3_RSCDISPLAYARSENAL_TAB_BACKPACK";
private _headgear  = localize "STR_A3_RSCDISPLAYARSENAL_TAB_HEADGEAR";

private _rifleVisual    = ["<t size='3'>", "<img image='",_rifleImage,    "'></img>", "</t>"]joinString "";
private _launcherVisual = ["<t size='3'>", "<img image='",_launcherImage, "'></img>", "</t>"]joinString "";
private _pistolVisual   = ["<t size='3'>", "<img image='",_pistolImage,   "'></img>", "</t>"]joinString "";

private _helmetVisual   = ["<t size='3'>", "<img image='",_helmetImage,   "'></img>", "</t>"]joinString "";
private _vestVisual     = ["<t size='3'>", "<img image='",_vestImage,     "'></img>", "</t>"]joinString "";
private _backPackVisual = ["<t size='3'>", "<img image='",_backPackImage, "'></img>", "</t>"]joinString "";

private _textArr = [
	_H1,_roleName,_end,
	_NL,
	_cLight,_roleDesc,_end, 
	_H2,_loadOut,_end, 

	_NL,
	_blLight,_primary,_end,       _brBold,_rifleName,_end,

	_NL,
	_blLight,_launcher,_end,      _brBold,_launcherName,_end,

	_NL,
	_blLight,_secondary, _end,    _brBold,_pistolName,_end,
	
	_NL,_NL,
	_blLight, _uniform, _end,     _brBold,_uniformName,_end,

	_NL,
	_blLight, _vest, _end,        _brBold,_vestName,_end,

	_NL,
	_blLight, _backpack, _end,    _brBold,_backPackName,_end,

	_NL,
	_blLight, _headgear, _end,    _brBold,_helmetName,_end,
	_NL

];

if(_rifleImage isNotEqualTo "-")    then {_textArr pushBack _rifleVisual;};
if(_launcherImage isNotEqualTo "-") then {_textArr pushBack _launcherVisual;};
if(_pistolImage isNotEqualTo "-")   then {_textArr pushBack _pistolVisual;};

_textArr append [_NL,_NL];

if(_helmetImage isNotEqualTo "-")   then {_textArr pushBack _helmetVisual;};
if(_vestImage isNotEqualTo "-")     then {_textArr pushBack _vestVisual;};
if(_backPackImage isNotEqualTo "-") then {_textArr pushBack _backPackVisual;};



private _text = parseText(_textArr joinString "");

_text;