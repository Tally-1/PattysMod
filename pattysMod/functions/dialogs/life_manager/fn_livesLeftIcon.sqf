params[
	["_count", nil, [0]]
];
private _icon = "\a3\ui_f\data\igui\cfg\simpletasks\types\Heal_ca.paa";

if(_count <  5) then {_icon = "\pattysMod\images\Wounded_Icon.paa";};
if(_count <  3) then {_icon = "\a3\Ui_F_Curator\Data\CfgMarkers\minefieldAP_ca.paa";};
if(_count <  1) then {_icon = "\pattysMod\images\SkullBones_Icon.paa";};

_icon;