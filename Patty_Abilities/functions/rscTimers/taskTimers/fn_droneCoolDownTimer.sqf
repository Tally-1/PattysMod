params[
    ["_drone",nil,[objNull,""]],
	["_owner",nil,[objNull]]
];
private _type      = if(typeName _drone == "OBJECT")then{_drone getVariable "PSA_droneType"}else{_drone};
private _typeName  = [_type] call PSA_fnc_capFirstLetter;
private _text      = [_typeName," Drone avaliable in: "]joinString"";
private _icon      = "\Patty_Abilities\textures\icons\DroneAbility.paa";
private _data      = _owner getVariable "PSA_droneOwnerData";
private _endTime   = _data get "timeLimits" get _type;
private _while     = {};
private _endCode   = { ["Recon Drone"] call PSA_fnc_droneAvailableNotification};
private _txtColor  = [1,1,1,1];
private _bckColor  = [0,0,0,0.1];

if(_type isEqualTo "bomb")   then{_endCode = {["Bomb Drone"] call PSA_fnc_droneAvailableNotification}};
if(_type isEqualTo "combat") then{_endCode = {["Combat Drone"] call PSA_fnc_droneAvailableNotification}};

[_endTime, _text, _icon, _while,_endCode, _txtColor, _bckColor] call PSA_fnc_addRscTimer;

true;