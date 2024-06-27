params[ 
	["_object",    nil, [objNull]],
	["_namesOnly", false,  [true]]
];
private _actions    = (_object getVariable ["ace_interact_menu_actions", []])#0;
private _PSAActions = [];
private _names      = [];

if(isNil "_actions")exitWith{[]};

{
	private _actionName = _x#0;
	if("PSA_ACE_MainActions" in _actionName)then{
		_PSAActions pushBack _x;
		_names pushBackUnique _actionName;
	};
	
} forEach _actions;

if(_namesOnly)exitWith{_names};

_PSAActions;