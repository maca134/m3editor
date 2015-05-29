private ['_display', '_nBtn', '_eBtn', '_sBtn', '_wBtn', '_undoBtn', '_uBtn', '_dBtn', '_heightSelect'];
disableSerialization;
if (isNull M3E_selectedObject) exitWith {};
createDialog 'M3ERepeaterDialog';
_display = findDisplay 1343;
_nBtn = _display displayCtrl 1340;
_eBtn = _display displayCtrl 1341;
_sBtn = _display displayCtrl 1342;
_wBtn = _display displayCtrl 1343;
_undoBtn = _display displayCtrl 1344;
_uBtn = _display displayCtrl 1348;
_dBtn = _display displayCtrl 1349;
_heightSelect = _display displayCtrl 1347;

_heightSelect lbAdd "ATL";
_heightSelect lbAdd "ASL";
_heightSelect lbSetCurSel 0;

_nBtn ctrlAddEventHandler ["MouseButtonDown", {[0] call M3E_fnc_repeatObject}];
_eBtn ctrlAddEventHandler ["MouseButtonDown", {[90] call M3E_fnc_repeatObject}];
_sBtn ctrlAddEventHandler ["MouseButtonDown", {[180] call M3E_fnc_repeatObject}];
_wBtn ctrlAddEventHandler ["MouseButtonDown", {[270] call M3E_fnc_repeatObject}];

_uBtn ctrlAddEventHandler ["MouseButtonDown", {[-1] call M3E_fnc_repeatObject}];
_dBtn ctrlAddEventHandler ["MouseButtonDown", {[-2] call M3E_fnc_repeatObject}];

_undoBtn ctrlAddEventHandler ["MouseButtonDown", {_this call M3E_fnc_repeatUndo}]; 
M3E_originObj = M3E_selectedObject;
M3E_objList = [];
true