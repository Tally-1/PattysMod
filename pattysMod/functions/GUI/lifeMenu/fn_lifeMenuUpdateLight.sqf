private _actionMenu  = _self get "actionMenu";
private _selectedMan = _actionMenu get "currentMan";

"Light menu update" call p_dbg;

_self call ["updateTVList"];

if(isNil "currentMan")exitWith{};

_actionMenu call ["updateManMenu"];

true;