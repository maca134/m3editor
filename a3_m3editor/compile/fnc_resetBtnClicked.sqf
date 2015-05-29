private ['_position'];
_position = M3E_selectedObject getVariable ['M3E_position', getPosATL M3E_selectedObject];
_position set [2, 0];
M3E_selectedObject setVariable ['M3E_pitch', 0, true];
M3E_selectedObject setVariable ['M3E_bank', 0, true];
M3E_selectedObject setVariable ['M3E_followterrain', false, true];
M3E_selectedObject setVariable ['M3E_position', _position, true];
[M3E_selectedObject] call M3E_fnc_updateObject;