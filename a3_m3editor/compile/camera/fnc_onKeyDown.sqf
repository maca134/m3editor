private ['_incre', '_cp', '_cax', '_caz'];
if !(_this in [17, 30, 31, 32, 16, 44]) exitWith {};
_incre = switch (true) do {
	case (42 in M3E_pressedKeys): {10};
	case (29 in M3E_pressedKeys): {0.25};
	default {1};
};
_cp = M3E_cameraWorldspace select 0;
_cax = M3E_cameraWorldspace select 1;
_caz = M3E_cameraWorldspace select 2;
_position = (switch (_this) do {
	case 17: {[_cp, _cax, 0, _incre]};
	case 31: {[_cp, _cax - 180, 0, _incre]};
	case 32: {[_cp, _cax + 90, 0, _incre]};
	case 30: {[_cp, _cax + 270, 0, _incre]};
	case 16: {[_cp, _cax, 90, _incre]};
	case 44: {[_cp, _cax, -90, _incre]};
}) call M3E_fnc_transformPosition;
M3E_cameraWorldspace set [0, _position];
call M3E_fnc_cam_position;