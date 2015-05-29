private ['_prop', '_key', '_positionATL', '_positionASL', '_display', '_val'];
_prop = [_this, 0, '', ['']] call BIS_fnc_param;
_key = [_this, 1, 0, [0]] call BIS_fnc_param;
//if (_key in [1,2,3,4,5,6,7,8,9,10,11]) then {
	_positionATL = getPosATL M3E_selectedObject;
	_positionASL = getPosASL M3E_selectedObject;
	_display = findDisplay 1345;
	switch (_prop) do {
		case 'x': {
			_val = ctrlText (_display displayCtrl 1400);
			_val = [parseNumber _val, 5] call M3E_fnc_roundNum;
			_positionATL set [0, _val];
			M3E_selectedObject setPosATL _positionATL;
		};
		case 'y': {
			_val = ctrlText (_display displayCtrl 1401);
			_val = [parseNumber _val, 5] call M3E_fnc_roundNum;
			_positionATL set [1, _val];
			M3E_selectedObject setPosATL _positionATL;
		};
		case 'z1': {
			_val = ctrlText (_display displayCtrl 1402);
			_val = [parseNumber _val, 5] call M3E_fnc_roundNum;
			_positionATL set [2, _val];
			M3E_selectedObject setPosATL _positionATL;
		};
		case 'z2': {
			_val = ctrlText (_display displayCtrl 1403);
			_val = [parseNumber _val, 5] call M3E_fnc_roundNum;
			_positionASL set [2, _val];
			M3E_selectedObject setPosASL _positionASL;
		};
		case 'd': {
			_val = ctrlText (_display displayCtrl 1406);
			_val = [parseNumber _val, 5] call M3E_fnc_roundNum;
			M3E_selectedObject setDir _val;
		};
	};
	call M3E_fnc_loadProperties;
//};
false