private ['_display', '_positionATL', '_positionASL', '_direction', '_pitch', '_bank', '_followterrain', '_position'];

_direction = M3E_selectedObject getVariable ['M3E_dir', getDir M3E_selectedObject];
_pitch = M3E_selectedObject getVariable ['M3E_pitch', 0];
_bank = M3E_selectedObject getVariable ['M3E_bank', 0];
_followterrain = M3E_selectedObject getVariable ['M3E_followterrain', false];
_position = M3E_selectedObject getVariable ['M3E_position', [0,0,0]];


_display = findDisplay 1345;
(_display displayCtrl 1003) ctrlSetText (getText(configFile >> 'CfgVehicles' >> (typeOf M3E_selectedObject) >> 'displayName'));
(_display displayCtrl 1005) ctrlSetText (typeOf M3E_selectedObject);

_positionATL = _position;
_positionASL = ATLToASL _position;

(_display displayCtrl 1400) ctrlSetText (str ([(_positionATL select 0), 5] call M3E_fnc_roundNum));
(_display displayCtrl 1401) ctrlSetText (str ([(_positionATL select 1), 5] call M3E_fnc_roundNum));
(_display displayCtrl 1402) ctrlSetText (str ([(_positionATL select 2), 5] call M3E_fnc_roundNum));
(_display displayCtrl 1403) ctrlSetText (str ([(_positionASL select 2), 5] call M3E_fnc_roundNum));

_direction = [_direction, 5] call M3E_fnc_roundNum;
(_display displayCtrl 1406) ctrlSetText (str _direction);
(_display displayCtrl 1900) sliderSetRange [0, 359];
(_display displayCtrl 1900) sliderSetPosition _direction;

_pitch = [_pitch, 5] call M3E_fnc_roundNum;
(_display displayCtrl 1408) ctrlSetText (str _pitch);
(_display displayCtrl 1902) sliderSetRange [0, 359];
(_display displayCtrl 1902) sliderSetPosition _pitch;

_bank = [_bank, 5] call M3E_fnc_roundNum;
(_display displayCtrl 1407) ctrlSetText (str _bank);
(_display displayCtrl 1901) sliderSetRange [0, 359];
(_display displayCtrl 1901) sliderSetPosition _bank;

if (typeName _followterrain != "BOOL") then {
	_followterrain = false;
};
(_display displayCtrl 2800) cbSetChecked _followterrain;