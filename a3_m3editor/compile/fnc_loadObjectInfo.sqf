private ['_infoBox', '_resetBtn', '_deleteBtn', '_info', '_lockBtn', '_repeatBtn', '_title'];
disableSerialization;
_infoBox = [1342] call M3E_fnc_getEditorControl;
_resetBtn = [1344] call M3E_fnc_getEditorControl;
_deleteBtn = [1345] call M3E_fnc_getEditorControl;
_lockBtn = [1353] call M3E_fnc_getEditorControl;
_repeatBtn = [1352] call M3E_fnc_getEditorControl;
_title = [1339] call M3E_fnc_getEditorControl;

if !(isNull M3E_selectedObject) then {
	_info = format[
		('<t size="1.25">%1</t><br/>%2<br/>Position:<br/>%3'),
		getText (configFile >> 'CfgVehicles' >> typeOf M3E_selectedObject >> 'displayName'),
		typeOf M3E_selectedObject,
		getPos M3E_selectedObject
	];
	_infoBox ctrlSetStructuredText parseText _info;
	_title ctrlSetText (format["Macca's 3D Editor - Objects: %1 - Pos: %2", count M3E_insertedObjects, mapGridPosition M3E_cameraObj]);

	if (M3E_selectedObject in M3E_insertedObjects) then {
		_resetBtn ctrlEnable true;
		_deleteBtn ctrlEnable true;
		_lockBtn ctrlEnable true;
		_repeatBtn ctrlEnable true;
	} else {
		_resetBtn ctrlEnable false;
		_deleteBtn ctrlEnable false;
		_lockBtn ctrlEnable false;
		_repeatBtn ctrlEnable true;
	};
} else {
	_infoBox ctrlSetStructuredText parseText '';
	_resetBtn ctrlEnable false;
	_deleteBtn ctrlEnable false;
	_lockBtn ctrlEnable false;
	_repeatBtn ctrlEnable false;
};