private ['_input', '_chr', '_sArr'];
_input = [_this, 0, '', ['']] call BIS_fnc_param;
_chr = [_this, 1, '', ['']] call BIS_fnc_param;
if (_input == '' || {_chr == ''} || {count _chr > 1}) exitWith {-1};
_sArr = toArray _input;
_position = -1;
{
	if (_chr == toString [_x]) then {
		_position = _foreachindex;
	};
} foreach _sArr;
_position