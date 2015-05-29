private ['_object', '_dir', '_pitch', '_bank', '_followterrain', '_position'];
_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

_dir = _object getVariable ['M3E_dir', 0];
_pitch = _object getVariable ['M3E_pitch', 0];
_bank = _object getVariable ['M3E_bank', 0];
_followterrain = _object getVariable ['M3E_followterrain', false];
_position = _object getVariable ['M3E_position', [0,0,0]];
_object setPos [0,0,0];

if (_followterrain) then {
	_object setDir _dir;
	_object setPos _position;
} else {
	_object setPosATL _position;
	[_object] call M3E_fnc_setPitchBank;
};