params[
    ["_side", nil,[west]]
];

if(_side isEqualTo east)        exitWith{"ColorEAST"};
if(_side isEqualTo independent) exitWith{"ColorGUER"};
if(_side isEqualTo west)        exitWith{"ColorWEST"};
if(_side isEqualTo civilian)    exitWith{"ColorCIV"};


"colorWhite";