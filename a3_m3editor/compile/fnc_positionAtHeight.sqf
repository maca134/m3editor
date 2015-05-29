private ['_origin', '_position', '_height', '_distance', '_direction', '_position'];
_origin = _this select 0;
_position = _this select 1;
_height = _this select 2;

_distance = (([_origin, _position] call BIS_fnc_distance2d) / ((_position select 2) - (_origin select 2))) * (_height - (_origin select 2));
_direction = [_origin, _position] call BIS_fnc_dirTo;
_position = [_origin, _distance, _direction] call BIS_fnc_relPos;
_position set [2, _height];
_position