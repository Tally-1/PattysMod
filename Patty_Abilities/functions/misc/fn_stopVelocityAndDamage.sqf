params[
    ["_object", nil,[objNull]]
];
_object allowDamage false;

sleep 0.1; 

_object setVelocityModelSpace [0,0,0];

sleep 0.5;

_object setVelocityModelSpace [0,0,0];
_object allowDamage true;

getPos _object;

true;