private ['_isNullOrLocked'];
disableSerialization;
M3E_mousePosition = [_this select 1, _this select 2];
_isNullOrLocked = (isNull M3E_selectedObject || {M3E_selectedObject in M3E_lockedObjs});

private ['_position'];
try {
	if (M3E_lmbDown && !_isNullOrLocked && (0x38 in M3E_pressedKeys)) then {
		if (isNil'M3E_objectStartPosition') then {
			M3E_objectStartPosition = getPosASL M3E_selectedObject;
		};
		_position = M3E_selectedObject getVariable ['M3E_position', getPosATL M3E_selectedObject];
		_position set [2, (M3E_objectStartPosition select 2) + ((((M3E_startMousePosition select 1) - (_this select 2)) / safeZoneH) * (M3E_selectedObject distance M3E_cameraObj))];
		M3E_selectedObject setVariable ['M3E_position', ASLToATL _position, true];
		[M3E_selectedObject] call M3E_fnc_updateObject;
		throw 'exit';
	} else {
		M3E_objectStartPosition = nil;
	};
	
	if (M3E_lmbDown && !_isNullOrLocked && (0x2A in M3E_pressedKeys)) then {
		private ['_diff', '_direction'];
		if (isNil 'M3E_startPosition') then {
			M3E_startPosition = _this select 1;
			M3E_startDir = M3E_selectedObject getVariable ['M3E_dir', 0];
		};

		_direction = (M3E_startDir + (360 * ((_this select 1) - M3E_startPosition)));
		_direction = [_direction] call M3E_fnc_fixAngle;
		M3E_selectedObject setVariable ['M3E_dir', _direction, true];
		[M3E_selectedObject] call M3E_fnc_updateObject;
		throw 'exit';
	} else {
		M3E_startPosition = nil;
		M3E_startDir = nil;
	};

	if (M3E_lmbDown && !_isNullOrLocked && M3E_selectedObject in M3E_insertedObjects) then {
		private ['_origin', '_camera', '_height', '_position'];
		if (isNil 'M3E_startHeight') then {
			M3E_startHeight = (M3E_selectedObject getVariable ['M3E_position', getPosATL M3E_selectedObject]) select 2;
		};
		_origin =  screenToWorld [(_this select 1) - (M3E_startDragOffset select 0), (_this select 2) - (M3E_startDragOffset select 1)];
		_position = [_origin, getPosATL M3E_cameraObj, M3E_startHeight] call M3E_fnc_positionAtHeight;
		if (M3E_cameraObj distance _position < 1000) then {
			M3E_selectedObject setVariable ['M3E_position', _position, true];
			[M3E_selectedObject] call M3E_fnc_updateObject;
		};
		throw 'exit';
	} else {
		M3E_startHeight = nil;
	};

} catch {};