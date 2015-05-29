private ['_key'];
_key = _this select 1;
switch (true) do {
	case (0x1D in M3E_pressedKeys && 0x2E in M3E_pressedKeys) : {
		if (!isNull M3E_selectedObject) then {
			private ['_dir', '_pitch', '_bank', '_followterrain'];
			_dir = M3E_selectedObject getVariable ['M3E_dir', getDir M3E_selectedObject];
			_pitch = M3E_selectedObject getVariable ['M3E_pitch', 0];
			_bank = M3E_selectedObject getVariable ['M3E_bank', 0];
			_followterrain = M3E_selectedObject getVariable ['M3E_followterrain', false];

			M3E_copiedObject = [
				typeOf M3E_selectedObject,
				_dir,
				_pitch,
				_bank,
				_followterrain,
				(getPosATL M3E_selectedObject) select 2
			];
		};
	};
	case (0x1D in M3E_pressedKeys && 0x2F in M3E_pressedKeys) : {
		if (!isNil 'M3E_copiedObject') then {
			M3E_dlbClickLocation = M3E_mousePosition;
			private ['_object', '_position'];
			_object = [M3E_copiedObject select 0] call M3E_fnc_spawnObject;
			_object setVariable ['M3E_dir', M3E_copiedObject select 1, true];
			_object setVariable ['M3E_pitch', M3E_copiedObject select 2, true];
			_object setVariable ['M3E_bank', M3E_copiedObject select 3, true];
			_object setVariable ['M3E_followterrain', M3E_copiedObject select 4, true];
			_position = _object getVariable ['M3E_position', [0,0,0]];
			_position set [2, M3E_copiedObject select 5];
			_object setVariable ['M3E_position', _position, true];
			[_object] call M3E_fnc_updateObject;
		};
	};
	case (0xD3 in M3E_pressedKeys) : {
		call M3E_fnc_deleteBtnClicked;
	};
};

if (_key in M3E_pressedKeys) then {
	M3E_pressedKeys = M3E_pressedKeys - [_key];
};