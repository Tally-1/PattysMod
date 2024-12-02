#include "\pattysMod\functions\GUI\textIncludes.sqf";
private _man      = _self get "currentMan";
private _rank     = [rank _man] call PTTY_fnc_capFirst;
private _lives    = [_man] call PTTY_fnc_getLives;
private _admin    = [_man] call PTTY_fnc_isAdmin;
private _medic    = [_man] call PTTY_fnc_isMedic;
private _engineer = [_man] call PTTY_fnc_isEngineer;
private _curator  = [_man] call PTTY_fnc_isCurator;

private _nameTxt   = ["Name: ",name _man]joinString"";
private _rankTxt   = ["Rank: ",_rank]joinString"";
private _lifeColor = [_lives] call PTTY_fnc_livesColorProcedural;
private _lifeTxt   = ["Lives: ",_lifeColor,_lives,_end]joinString"";

private _adminIcon = "<img image='a3\ui_f\data\GUI\Cfg\Ranks\general_gs.paa'/>";
private _medicIcon = "<img image='a3\ui_f\data\map\vehicleicons\pictureHeal_ca.paa'/>";
private _enginIcon = "<img image='\a3\ui_f\data\igui\cfg\simpletasks\types\repair_ca.paa'/>";

private _adminColor = "<t color='#0022ff'>";
private _medicColor = "<t color='#00ff1e'>";
private _enginColor = _yellow;

private _adminTxt = [_newLine,_adminIcon, _adminColor,"Admin",    _end]joinString"";
private _medicTxt = [_newLine,_medicIcon, _medicColor,"Medic",    _end]joinString"";
private _enginTxt = [_newLine,_enginIcon, _enginColor,"Engineer", _end]joinString"";
private _roleText = [_man] call PTTY_fnc_lifeMenuRoleText;

private _textArr = [
	_newLine,
	_nameTxt,_newLine,
	_rankTxt,_newLine,
	_roleText//,
	// _lifeTxt

];

if(_admin)    then{_textArr pushBack _adminTxt};
if(_medic)    then{_textArr pushBack _medicTxt};
if(_engineer) then{_textArr pushBack _enginTxt};

private _text = _textArr joinString "";

_text;