private ['_direction'];
_direction = [_this, 0, 0, [0]] call BIS_fnc_param;
while {_direction >= 360} do {_direction = _direction - 360;};
while {_direction < 0} do {_direction = _direction + 360;};
_direction