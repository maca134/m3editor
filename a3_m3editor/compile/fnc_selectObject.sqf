private ['_objects', '_object', '_spawnedList'];
M3E_selectedObject = objNull;

_objects = lineIntersectsWith [getPosASL M3E_cameraObj, ATLtoASL (screenToWorld _this), objNull, objNull, true];
if (count _objects == 0) exitWith {false};
_object = _objects select ((count _objects) - 1);
if (typeOf _object == "") exitWith {false};
	
M3E_selectedObject = _object;
if !(local _object) then {
	M3E_setowner = [_object, player];
	publicVariableServer "M3E_setowner";
};
M3E_selectedObject enableSimulation false;

_spawnedList = [1341] call M3E_fnc_getEditorControl;
_spawnedList lbSetCurSel (M3E_insertedObjects find M3E_selectedObject);
true