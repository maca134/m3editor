if ((_this select 1) == 1) then {
	M3E_selectedObject setVariable ['M3E_followterrain', true, true];
} else {
	M3E_selectedObject setVariable ['M3E_followterrain', false, true];			
};
[M3E_selectedObject] call M3E_fnc_updateObject;
call M3E_fnc_loadProperties;