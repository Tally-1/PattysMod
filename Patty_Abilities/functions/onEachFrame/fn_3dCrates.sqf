private _camPos     = (positionCameraToWorld [0,0,0]);
private _allCrates  = missionNamespace getVariable ["PSA_specialCrates",[]];
private _nearCrates = _allCrates select {_camPos distance2D _x < PSA_3dCrateMarkerDistance};

{
    private _data  = _x getVariable "PSA_crateData";
    private _pos   = getPosATLVisual _x;
	private _icon  = "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa";
	private _color = _data get "color";
	private _txt   = "Supplies";
    drawIcon3D 
    [
        _icon,    // texture (icon type)
        _color,   // color
        _pos,     // position
        1,        // size X
        1,        // size Y
        0,        // angle
        _txt,     // text
        2,        // shadow
        0.04      // textSize
    ];
    
} forEach _nearCrates;