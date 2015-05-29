private ['_data'];
_data = "";
{
	private ['_model', '_position', '_direction', '_pitch', '_bank', '_line'];
	_model = [typeOf _x] call M3E_fnc_getModel;
	_position = _x getVariable ['M3E_position', getPosATL _x];
	_direction = _x getVariable ['M3E_dir', getDir _x];
	_pitch = _x getVariable ['M3E_pitch', 0];
	_bank = _x getVariable ['M3E_bank', 0];
	_line = format[
		'"%1";%2;%3;%4;%5;%6;1;%7;%8', 
		_model, 
		(_position select 0) + 200000, 
		_position select 1, 
		_direction, 
		_pitch, 
		_bank, 
		_position select 2, 
		toString [10]
	];
	_data = _data + _line;
} foreach M3E_InsertedObjects;

copyToClipboard _data;
(findDisplay 1346) closeDisplay 1;
[_data] call M3E_fnc_saveFile;