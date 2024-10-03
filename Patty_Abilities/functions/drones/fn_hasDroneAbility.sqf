params[
    ["_man",  nil,[objNull]],
    ["_type", nil,     [""]]    
];
private _abilities = _man getVariable ["PSA_abilities", []];
if("drone" in _abilities)exitWith{true};

private _specialAbility = [_type, "_drone"]joinString"";
if(_specialAbility in _abilities)exitWith{true};

private _hasAbility = false;

if(_type isEqualTo "any")then{
    {
        _specialAbility = [_x, "_drone"]joinString"";
        systemChat str [_specialAbility, _abilities];
        if(_specialAbility in _abilities)
        exitWith{
            [[_specialAbility, " ability found"]] call p_dbg;
            _hasAbility = true;
        };
        
    } forEach ["recon","bomb","combat"];
};

_hasAbility;