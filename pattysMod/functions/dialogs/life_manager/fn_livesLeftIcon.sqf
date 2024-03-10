params[
	["_count", nil, [0]]
];
private _icon = "";

if(_count <  6) then {_icon = "\pattysMod\images\Wounded1.paa";};
if(_count <  5) then {_icon = "\pattysMod\images\Wounded2.paa";};
if(_count <  3) then {_icon = "\pattysMod\images\Wounded3.paa";};
if(_count <  1) then {_icon = "\pattysMod\images\Wounded4.paa";};

_icon;