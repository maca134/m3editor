M3E_selectedObject setVariable [_this select 0, _this select 1, true];
[M3E_selectedObject] call M3E_fnc_updateObject;
call M3E_fnc_loadProperties;