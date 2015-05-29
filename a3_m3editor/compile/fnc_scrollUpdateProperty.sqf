private ['_ctrl', '_prop', '_incre', '_val'];
_ctrl = [_this, 0, [], [[]]] call BIS_fnc_param;
_prop = [_this, 1, '', ['']] call BIS_fnc_param;
_incre = switch (true) do {
	case (42 in M3E_pressedKeys): {10};
	case (29 in M3E_pressedKeys): {0.25};
	default {1};
};
_val = parseNumber (ctrlText (_ctrl select 0));
_val = if ((_ctrl select 1) > 0) then {_val + _incre} else {_val - _incre};
(_ctrl select 0) ctrlSetText (str _val);
[_prop, 1] call M3E_fnc_updateProperty