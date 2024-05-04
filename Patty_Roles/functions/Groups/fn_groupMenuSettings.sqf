private _settings = missionConfigFile >> "PTG_MenuSettings";
// hint str _settings;
if(isNull _settings)exitWith{
	[
		[0.1,0.1,0.1,0.5],
		[0.68,0.75,0.51,1],
		"Role Manager"
	];
};

private _backColor  = getArray (_settings >> "BackgroundColor");
private _titleColor = getArray (_settings >> "titleColor");
private _title      = getText  (_settings >> "menuTitle");

[
	_backColor,
	_titleColor,
	_title
];