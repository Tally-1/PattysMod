params[
	["_id", nil, [0]]
];
private _index = PSA_serverPrMinuteTasks findIf {_x#2 isEqualTo _id};
if(_index isEqualTo -1)exitWith{false};

PSA_serverPrMinuteTasks deleteAt _index;

true;