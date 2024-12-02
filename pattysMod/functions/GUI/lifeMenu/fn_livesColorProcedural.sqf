params[
	["_count", nil, [0]]
];
#include "\pattysMod\functions\GUI\textIncludes.sqf";
if(_count >=  PTTY_woundedGreen)  exitWith {"<t color='#00ff1e'>"};
if(_count >=  PTTY_woundedYellow) exitWith {_yellow};
if(_count >=  PTTY_woundedOrange) exitWith {_orange};
if(_count <=  PTTY_woundedRed
||{_count <  PTTY_woundedOrange}) exitWith {_red};


_white;