private ['_nl', '_tab', '_data'];

_nl = toString [10];
_tab = '	';
_data = "private [""_objs""];" + _nl;
_data = _data + "_objs = [" + _nl;

{
	private ['_position', '_direction', '_vectorDirAndUp', '_followterrain'];
	_position = _x getVariable ['M3E_position', getPosATL _x];
	_direction = _x getVariable ['M3E_dir', getDir _x];
	_followterrain = _x getVariable ['M3E_followterrain', false];
	_vectorDirAndUp = if (!_followterrain) then {[_x] call M3E_fnc_vectorDirAndUp} else {[0,1,0],[0,0,1]};
	_data = _data + _tab + str ([typeOf _x, _position, _direction, _vectorDirAndUp, _followterrain]);
	if ((_foreachindex + 1) != count M3E_insertedObjects) then {
		_data = _data + ',';
	};
	_data = _data + _nl;
} foreach M3E_insertedObjects;

_data = _data + '];' + _nl + _nl;

_data = _data + ("{
	private [""_obj""];
	_obj = createVehicle [_x select 0, [0,0,0], [], 0, ""CAN_COLLIDE""];
	if (_x select 4) then {
		_obj setDir (_x select 2);
		_obj setPos (_x select 1);
	} else {
		_obj setPosATL (_x select 1);
		_obj setVectorDirAndUp (_x select 3);
	};
} foreach _objs;");
copyToClipboard _data;
(findDisplay 1346) closeDisplay 1;
[_data] call M3E_fnc_saveFile;