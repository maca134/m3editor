private ['_nl', '_tab', '_data'];

_nl = toString [10];
_tab = '    ';
_data = "";

{
	private ['_position', '_direction', '_pitch', '_bank', '_followterrain'];
	_position = _x getVariable ['M3E_position', getPosATL _x];
	_direction = _x getVariable ['M3E_dir', getDir _x];
	_data = _data + _tab + format[
		'{"%1", {%2, %3, %4}, %5},',
		typeOf _x,
		_position select 0,
		_position select 1,
		_position select 2,
		_direction
	];
	_data = _data + _nl;
} foreach M3E_insertedObjects;

copyToClipboard _data;