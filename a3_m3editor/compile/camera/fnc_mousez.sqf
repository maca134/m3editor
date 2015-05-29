private ['_incre', '_position'];
_incre = switch (true) do {
	case (42 in M3E_pressedKeys): {10};
	case (29 in M3E_pressedKeys): {0.25};
	default {1};
};
_position = [M3E_cameraWorldspace select 0, M3E_cameraWorldspace select 1, -(M3E_cameraWorldspace select 2), -_incre * _this] call M3E_fnc_transformPosition;
M3E_cameraWorldspace set [0, _position];
call M3E_fnc_cam_position;