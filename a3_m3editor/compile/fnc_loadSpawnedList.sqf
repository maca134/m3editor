private ['_spawnedList'];
_spawnedList = [1341] call M3E_fnc_getEditorControl;
lbClear _spawnedList;
{
	_spawnedList lbAdd (getText (configFile >> 'CfgVehicles' >> typeOf _x >> 'displayName'));
	if (_x in M3E_lockedObjs) then {
		_spawnedList lbSetColor [_foreachindex, [1,1,0,1]];
	};
	true
} foreach M3E_insertedObjects;