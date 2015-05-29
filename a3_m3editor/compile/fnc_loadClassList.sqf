private ['_typeSelect', '_classList', '_type', '_classes'];
disableSerialization;

_typeSelect = [1340] call M3E_fnc_getSpawnControl;
_classList = [1341] call M3E_fnc_getSpawnControl;
_type = _typeSelect lbData (lbCurSel _typeSelect);

M3E_LastSelectedClassType = lbCurSel _typeSelect;

_classes = (M3EcfgVehicles select 1) select ((M3EcfgVehicles select 0) find _type);
lbClear _classList;
{
	private ['_name'];
	_name = getText (configFile >> 'CfgVehicles' >> _x >> 'displayName');
	_classList lbAdd format['%1 (%2)', _name, _x];
	_classList lbSetData [_foreachindex, _x];
} foreach _classes;
lbSort _classList;
_classList lbSetCurSel 0;