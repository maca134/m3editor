private ['_classname', '_modelCfg', '_model', '_sfrom', '_sto'];
_classname = [_this, 0, '', ['']] call BIS_fnc_param;
if (_classname == '') exitWith {''};
_modelCfg = (configFile >> 'CfgVehicles' >> _classname);
if (!isClass _modelCfg)  exitWith {''};
_model = getText (_modelCfg >> 'model');
_sfrom = [_model, '\'] call M3E_fnc_strFindLast;
_sto = [_model, '.'] call M3E_fnc_strFindLast;
_model = _model select [_sfrom + 1, _sto - _sfrom - 1];
_model