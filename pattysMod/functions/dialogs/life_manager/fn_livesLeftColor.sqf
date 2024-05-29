params[
	["_count", nil, [0]]
];

if(_count >=  PTTY_woundedGreen)  exitWith {[0,1,0.1,1]};
if(_count >=  PTTY_woundedYellow) exitWith {[1,1,0,1]};
if(_count >=  PTTY_woundedOrange) exitWith {[1,0.5,0,1]};
if(_count <=  PTTY_woundedRed
||{_count <  PTTY_woundedOrange}) exitWith {[1,0,0,1]};


[1,1,1,1];