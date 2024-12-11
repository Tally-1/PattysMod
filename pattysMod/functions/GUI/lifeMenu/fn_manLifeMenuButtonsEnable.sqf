params[
	["_buttons",     nil,   [[]]],
	["_canTransfer", nil, [true]],
	["_canRemove",   nil, [true]],
	["_isAdmin",     nil, [true]],
	["_wait",        nil, [true]]
];
_buttons params [
	"_transferBtn",
	"_removeBtn",
	"_giveBtn",
	"_resetBtn",
	"_resetAllBtn"
];

systemChat str _wait;
if(_wait)then{sleep 1};

_transferBtn call ["enable", [_canTransfer]];
_removeBtn   call ["enable",   [_canRemove]];
_giveBtn     call ["enable",     [_isAdmin]];
_resetBtn    call ["enable",     [_isAdmin]];
_resetAllBtn call ["enable",     [_isAdmin]];

true;