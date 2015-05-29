while {M3E_rmbDown} do {
	private ['_diff', '_ax', '_az'];
	_diff = [M3E_startMousePosition, M3E_mousePosition] call M3E_fnc_subArr;
	_ax = (M3E_cameraWorldspace select 1) - ((_diff select 0) * 0.25);
	while {_ax > 360} do {_ax = _ax - 360;};
	while {_ax < 0} do {_ax = _ax + 360;};
	M3E_cameraWorldspace set [1, _ax];

	_az = (M3E_cameraWorldspace select 2) - ((_diff select 1) * 0.25);
	if (_az < -89) then {_az = -89;};
	if (_az > 89) then {_az = 89;};

	M3E_cameraWorldspace set [2, _az];
	call M3E_fnc_cam_position;
};