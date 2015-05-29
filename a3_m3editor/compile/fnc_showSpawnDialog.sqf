private ['_typeSelect', '_classList', '_insertBtn'];
disableSerialization;

createDialog 'M3ESpawnDialog';
_typeSelect = [1340] call M3E_fnc_getSpawnControl;
_typeSelect lbAdd 'Loading...';
_typeSelect lbSetCurSel 0;

_classList = [1341] call M3E_fnc_getSpawnControl;
_classList lbAdd 'Loading...';

M3EcfgVehicles = nil;
if (isNil 'M3EcfgVehicles') then {
	M3EcfgVehicles = call M3E_fnc_getAllVehicles;
};

lbClear _typeSelect;
{
	private ['_name'];
	_typeSelect lbSetData [_typeSelect lbAdd _x, _x];
} forEach (M3EcfgVehicles select 0);
lbSort _typeSelect;

if (!isNil 'M3E_LastSelectedClassType') then {
	_typeSelect lbSetCurSel M3E_LastSelectedClassType;
} else {
	_typeSelect lbSetCurSel 0;
};

call M3E_fnc_loadClassList;

_insertBtn = [1342] call M3E_fnc_getSpawnControl;

_insertBtn ctrlAddEventHandler ["MouseButtonDown", {_this call M3E_fnc_spawnInsertBtn}];
_typeSelect ctrlAddEventHandler ["LBSelChanged", {_this call M3E_fnc_loadClassList}];
_classList ctrlAddEventHandler ["LBSelChanged", {_this call M3E_fnc_loadClassPreview}];

if (!isNil 'M3E_LastSelectedClass') then {
	_classList lbSetCurSel M3E_LastSelectedClass;
};

[] spawn {
	waitUntil {isNull (findDisplay 1341)};
	if !(isNull M3E_classPreview) then {
		deleteVehicle M3E_classPreview;
		M3E_classPreview = objNull;
	};
};