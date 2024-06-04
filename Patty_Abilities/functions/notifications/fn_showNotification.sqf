params[
    ["_title",    nil,           [""]],
    ["_text",     nil,           [""]],
    ["_icon",     "",            [""]],
    ["_iconText", "",            [""]],
    ["_template", "PSA_default", [""]]
];

[
    _template, 
    [
        _title, 
        _text, 
        _icon,
        _iconText
    ]
] call BIS_fnc_showNotification;

true;