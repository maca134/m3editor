private ['_classList', '_index', '_class'];

_classList = [1341] call M3E_fnc_getSpawnControl;
_index = lbCurSel _classList;
M3E_LastSelectedClass = _index;

if (_index == -1) exitWith {};
//_class = ((M3EcfgVehicles select 1) select ((M3EcfgVehicles select 0) find _type)) select _indexC;
_class = _classList lbData _index;

if !(isNull M3E_classPreview) then {
	deleteVehicle M3E_classPreview;
	M3E_classPreview = objNull;
};

M3E_classPreview = _class createVehicleLocal [0,0,0];
M3E_classPreview enableSimulation false;
M3E_classPreview setPos (screenToWorld (if (!isNil 'M3E_dlbClickLocation') then {M3E_dlbClickLocation} else {[0.5,0.5]}));

