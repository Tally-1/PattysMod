private _display    = findDisplay 9702;
private _playerList = _display displayCtrl 1002;
if(isNull _playerList)exitWith{};

ctrlDelete _playerList;

true;