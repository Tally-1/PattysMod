params["_groupData"];_groupData
params[
	"_groupName",
	"_roles",
	"_conditions",
	"",
	"_units"
];

private _treeIndex = _tree tvAdd [[],_groupName];

if(call compile _conditions) 
then{
	{
		[_x, _groupName, _roles] call PTG_fnc_addRoleEntry;
	} forEach _roles;
};
