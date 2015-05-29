private ['_nl', '_tab', '_data'];

_nl = toString [10];
_tab = '    ';
_data = "[" + _nl;

{
	private ['_position', '_direction', '_pitch', '_bank', '_followterrain'];
	_position = _x getVariable ['M3E_position', getPosATL _x];
	_direction = _x getVariable ['M3E_dir', getDir _x];
	_pitch = _x getVariable ['M3E_pitch', 0];
	_bank = _x getVariable ['M3E_bank', 0];
	_followterrain = _x getVariable ['M3E_followterrain', false];
	_data = _data + _tab + str ([typeOf _x, _position, _direction, _pitch, _bank, _followterrain]);
	if ((_foreachindex + 1) != count M3E_insertedObjects) then {
		_data = _data + ',';
	};
	_data = _data + _nl;
} foreach M3E_insertedObjects;

_data = _data + ']';
copyToClipboard _data;
(findDisplay 1346) closeDisplay 1;
[_data, true] call M3E_fnc_saveFile;