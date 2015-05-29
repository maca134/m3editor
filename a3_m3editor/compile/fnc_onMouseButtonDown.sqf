disableSerialization;
M3E_startMousePosition = [_this select 2, _this select 3];
if ((_this select 1) == 0) then {
	switch (true) do {
		case ([_this select 2, _this select 3] call M3E_fnc_selectObject): {
			private ['_objectPosition'];
			_objectPosition = worldToScreen getPos M3E_selectedObject;
			M3E_startDragOffset = [
				(_this select 2) - (_objectPosition select 0),
				(_this select 3) - (_objectPosition select 1)
			];
			M3E_objectStartPosition = getPosASL M3E_selectedObject;
		};
		/*default {
			private ['_frame'];
			_frame = (findDisplay 1340) ctrlCreate ["RscText", 9999];
			_frame ctrlSetBackgroundColor [0,0,0,0.25];
			_frame ctrlSetPosition [M3E_startMousePosition select 0, M3E_startMousePosition select 1, 0, 0];
			_frame ctrlCommit 0;
		};*/
	};
	call M3E_fnc_loadObjectInfo;
	M3E_lmbDown = true;
} else {
	if (isNil "M3E_rmbDown" || {!M3E_rmbDown}) then {
		M3E_rmbDown = true;
		if (!isNil "M3E_fnc_cam_rcmovingThread") then {terminate M3E_fnc_cam_rcmovingThread;};
		M3E_fnc_cam_rcmovingThread = [] spawn M3E_fnc_cam_rcmoving;
	};
};