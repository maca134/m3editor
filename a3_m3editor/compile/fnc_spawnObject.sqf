private ['_class', '_position', '_object'];
_class = _this select 0;
_position = screenToWorld (if (!isNil 'M3E_dlbClickLocation') then {M3E_dlbClickLocation} else {[0.5,0.5]});
M3E_dlbClickLocation = nil;
_object = createVehicle [_class, [0,0,0], [], 0, "CAN_COLLIDE"];
_object enableSimulation false;
_position set [2, 0];

_object setVariable ['M3E_dir', 0, true];
_object setVariable ['M3E_pitch', 0, true];
_object setVariable ['M3E_bank', 0, true];
_object setVariable ['M3E_followterrain', false, true];
_object setVariable ['M3E_position', _position, true];

M3E_insertedObjects pushBack _object;
[_object] call M3E_fnc_updateObject;
call M3E_fnc_loadSpawnedList;
_object