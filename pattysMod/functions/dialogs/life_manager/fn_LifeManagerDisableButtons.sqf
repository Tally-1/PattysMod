params[
	["_frame",       nil, [controlNull]],
	["_list",        nil, [controlNull]],
	["_giveBtn",     nil, [controlNull]],
	["_transferBtn", nil, [controlNull]],
	["_removeBtn",   nil, [controlNull]],
	["_resetBtn",    nil, [controlNull]],
	["_resetAllBtn", nil, [controlNull]],
	["_closeBtn",    nil, [controlNull]]
	
];
private _isMedic = [player] call PTTY_fnc_isMedic;

_giveBtn   ctrlEnable false;
_removeBtn ctrlEnable false;
_resetBtn  ctrlEnable false;
_closeBtn  ctrlEnable false;

if!(_isMedic)then{_transferBtn ctrlEnable false;};


true;