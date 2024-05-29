private _display    = findDisplay 9702;
private _playerList = _display displayCtrl 1002;
private _frame      = _display displayCtrl 1003;
private _backGround = _display displayCtrl 1004;
if(isNull _playerList)exitWith{};

ctrlDelete _playerList;
ctrlDelete _frame;
ctrlDelete _backGround;

true;