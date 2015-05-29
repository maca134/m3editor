private ['_display', '_positionATL', '_positionATL', '_direction'];
if (isNull M3E_selectedObject) exitWith {
	M3E_dlbClickLocation = M3E_mousePosition;
	call M3E_fnc_showSpawnDialog;
};
if !(M3E_selectedObject in M3E_insertedObjects) exitWith {};
if (M3E_selectedObject in M3E_lockedObjs) exitWith {};

disableSerialization;
createDialog 'M3EPropertiesDialog';
call M3E_fnc_loadProperties;

_display = findDisplay 1345;

(_display displayCtrl 1900) ctrlAddEventHandler ["SliderPosChanged", "['M3E_dir', _this select 1] call M3E_fnc_updatePropSlider"];
(_display displayCtrl 1901) ctrlAddEventHandler ["SliderPosChanged", "['M3E_bank', _this select 1] call M3E_fnc_updatePropSlider"];
(_display displayCtrl 1902) ctrlAddEventHandler ["SliderPosChanged", "['M3E_pitch', _this select 1] call M3E_fnc_updatePropSlider"];
(_display displayCtrl 2800) ctrlAddEventHandler ["CheckedChanged", "_this call M3E_fnc_updatePropCheck"];
(_display displayCtrl 1601) ctrlAddEventHandler ["MouseButtonClick", "_this call M3E_fnc_updatePropBtn"];