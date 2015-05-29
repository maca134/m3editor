private ['_key'];
_key = _this select 1;
if (!(_key in M3E_pressedKeys)) then {
	M3E_pressedKeys = M3E_pressedKeys + [_key];
};

switch (true) do {
	case (_key in [72,75,77,80]) : {
		_key call M3E_fnc_nudgeObject;
	};
	default {
		_key call M3E_fnc_cam_onKeyDown;
	};
};