params[
    ["_object", nil,  [objNull]],
    ["_local",  false,  [false]]
];
private _pos  = getPosASLVisual _object;
private _path = "A3\Sounds_F\arsenal\weapons_static\Static_HMG\reload_static_HMG.wss";
playSound3D [
    _path,        // filename
    _object,      // soundSource
    false,        // isInside
    _pos,         // soundPosition
    4,            // volume
    1,            // soundPitch
    50,           // distance
    0,            // offset
    _local        // local
];