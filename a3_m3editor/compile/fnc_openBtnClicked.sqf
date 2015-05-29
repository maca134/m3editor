private ['_data', '_spawnedList'];
_data = call M3E_fnc_openFile;
_data = call compile _data;

_spawnedList = [1341] call M3E_fnc_getEditorControl;
{
	private ['_class', '_position', '_direction', '_pitch', '_bank', '_followterrain', '_object'];
	_class = _x select 0;
	_position = _x select 1;
	_direction = _x select 2;
	_pitch = _x select 3;
	_bank = _x select 4;
	_followterrain = _x select 5;

	_object = createVehicle [_class, [0,0,0], [], 0, "CAN_COLLIDE"];
	_object enableSimulation false;

	_object setVariable ['M3E_dir', _direction, true];
	_object setVariable ['M3E_pitch', _pitch, true];
	_object setVariable ['M3E_bank', _bank, true];
	_object setVariable ['M3E_followterrain', _followterrain, true];
	_object setVariable ['M3E_position', _position, true];

	[_object] call M3E_fnc_updateObject;

	M3E_insertedObjects pushBack _object;
} foreach _data;
call M3E_fnc_loadSpawnedList;
(findDisplay 1346) closeDisplay 1;