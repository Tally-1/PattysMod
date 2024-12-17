params[
    ["_ctrlPos",nil,[[]]]
];
private _ctrlY = (_ctrlPos#1)+0.025;
_ctrlPos set [1, _ctrlY];

private _treeView   = _self call ["addCtrl", ["RscTree",_ctrlPos]];
private _ctrl       = _treeView get "ctrl";
private _playerGrps = call PTTY_fnc_getPlayerGroups;
private _dataMap    = createHashMapObject [[]];
private _groupI     = 0;
private _manI       = 0;

{
    isNil{// forced unscheduled execution for speed improvement
        private _groupName = groupId _x;
        private _players   = [_x] call PTTY_fnc_getPlayersInGroup;
        private _myGroup   = player in _players;
        private _indexGrp  = _ctrl tvAdd [[], _groupName];
        private _path      = [_indexGrp];
        private _dataIdGrp = ["group: ",_groupI]joinString"";

        {
            [_ctrl,_x,_path,_manI] call PTTY_fnc_lifeMenuAddMan;
            _manI=_manI+1;
        } forEach _players;

        // Store the Group to the hashmap, and the key for the hashmap as data to the "list-item"
        private _toolTip = [count _players, " players"]joinString"";
        _dataMap set       [_dataIdGrp,             _x];
        _ctrl tvSetData    [_path,          _dataIdGrp];
        _ctrl tvSetTooltip [_path,            _toolTip];

        if(_myGroup)then{_ctrl tvExpand _path};
        
        _groupI=_groupI+1;
    };
} forEach _playerGrps;

_ctrl setVariable ["PTTY_treeData", _dataMap];
_ctrl ctrlAddEventHandler ["TreeSelChanged", PTTY_fnc_onTreeSelChangedLifeMenu];

_treeView;