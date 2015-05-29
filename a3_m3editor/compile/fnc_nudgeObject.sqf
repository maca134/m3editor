private ['_dis', '_dir', '_oldposition', '_position'];
_dis = 0.25;
_dir = switch (_this) do {
	case 72: {0};
	case 75: {270};
	case 77: {90};
	case 80: {180};
};
_dir = (getDir M3E_selectedObject) + _dir;
while {_dir >= 360} do {_dir = _dir - 360;};
_oldposition = getPosATL M3E_selectedObject;
_position = [_oldposition, _dis, _dir] call BIS_fnc_relPos;
_position set [2, _oldposition select 2];
M3E_selectedObject setPosATL _position;