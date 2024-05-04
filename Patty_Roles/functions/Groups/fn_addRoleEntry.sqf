params[
	"_role",
	"_groupName",
	"_roles"
];
private _rolesArray   = missionConfigFile >> "Dynamic_Roles";
private _roleInfo     = _rolesArray >> _role;
private _roleName     = getText(_roleInfo >> "name");
private _roleIcon     = getText(_roleInfo >> "icon");
private _rankIcon     = getText(_roleInfo >> "iconR");
private _roleRank     = getText(_roleInfo >> "rank");
private _roleLimit    = getNumber(_roleInfo >> "maxCount");
private _defaultLimit = getNumber(_rolesArray >> "defaultRoleLimit");

if(_roleLimit isEqualTo 0)then{_roleLimit = _defaultLimit};
if(_roleLimit isEqualTo 0)then{_roleLimit = 3};

if(_rankIcon isEqualTo "")
then{_rankIcon = ["a3\ui_f\data\GUI\Cfg\Ranks\",_roleRank,"_gs.paa"]joinString""};

private _roleHolders  = [_role] call PTG_fnc_getPlayersByRole;
private _count        = count _roleHolders;
private _roleText     = [_roleName,": ", "(",_count,"/",_roleLimit,")"]joinString"";
private _alpha        = 1;

if(_count >= _roleLimit
||{player in _roleHolders})
then{_alpha = 0.4};

if(player in _roleHolders)
then{_rankIcon = "\A3\ui_f\data\map\markers\military\warning_CA.paa";};

private _unitIndex = _tree tvAdd [[_treeIndex],_roleText];
_tree tvSetColor [[_treeIndex,_unitIndex],[1,1,1,_alpha]];

private _data = str[_role, _roleLimit];
_tree tvSetData [[_treeIndex,_unitIndex], _data];

_tree tvSetPicture [[_treeIndex,_unitIndex],_roleIcon];
_tree tvSetPictureColor [[_treeIndex,_unitIndex],[1,1,1,_alpha]];
_tree tvSetPictureRight [[_treeIndex,_unitIndex],_rankIcon];
_tree tvSetPictureRightColor [[_treeIndex,_unitIndex],[1,1,1,_alpha]];

if(player in _roleHolders)then {_myPath=[_treeIndex,_unitIndex]};