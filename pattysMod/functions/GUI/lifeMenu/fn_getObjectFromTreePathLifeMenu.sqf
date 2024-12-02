params [
	["_ctrl", nil, [controlNull]],
	["_path", nil,          [[]]]
];
private _dataKey  = _ctrl tvData _path;
private _ctrlData = _ctrl getVariable "PTTY_treeData";
private _object   = _ctrlData get _dataKey;

_object;