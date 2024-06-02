params[
	["_id", nil, [0]]
];
private _index = PSA_serverPrSecondTasks findIf {_x#2 isEqualTo _id};
if(_index isEqualTo -1)exitWith{false};

PSA_serverPrSecondTasks deleteAt _index;

true;