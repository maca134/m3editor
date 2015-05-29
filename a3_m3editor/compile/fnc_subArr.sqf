private ['_a1', '_a2', '_a3'];
_a1 = [_this, 0, [], [[]]] call BIS_fnc_param;
_a2 = [_this, 1, [], [[]]] call BIS_fnc_param;
if (count _a1 == 0 || {count _a2 == 0}) exitWith {[]};
if (count _a1 != count _a2) exitWith {[]};
_a3 = [];
{
	_a3 pushBack ((_a1 select _foreachindex) - (_a2 select _foreachindex));
} foreach _a1;
_a3