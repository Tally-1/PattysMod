private _data = cursorTarget getVariable "PSA_crateData";
if(isNil "_data")exitWith{PSA_cursorObject3D = objNull};

PSA_cursorObject3D = cursorTarget;

true;