params[
    ["_man",nil,[objNull]]
];
private _deleted = false;

{
    if(typeOf _x == "DummyWeapon_Wbk")then{
        detach _x; 
		deleteVehicle _x;
		_deleted = true;
    };

} forEach attachedObjects _man;

if(_deleted)then{"Deleted second weapon" call p_dbg};

true;