params[
	["_count", nil, [0]]
];
private _icon = "";

if(_count >=  PTTY_woundedGreen)  then {_icon = "\pattysMod\images\Wounded_green.paa";};
if(_count <=  PTTY_woundedYellow) then {_icon = "\pattysMod\images\Wounded_Yellow.paa";};
if(_count <=  PTTY_woundedOrange) then {_icon = "\pattysMod\images\Wounded_Orange.paa";};
if(_count <=  PTTY_woundedRed)    then {_icon = "\pattysMod\images\Wounded_red.paa";};

_icon;