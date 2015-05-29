private ['_filename', '_content', '_packet', '_cmd', '_result', '_name'];
_filename = call compile ("Arma2Net.Unmanaged" callExtension "M3DE [SaveFileDialog]");
_content = [_this, 0, '', ['']] call BIS_fnc_param;
_project = [_this, 1, false, [false]] call BIS_fnc_param;
if (_project) then {
	_name = _filename select [0, _filename find '.sqf'];
	_filename = _name + '_project.sqf';
};
_packet = toArray _filename;
_packet pushBack 10;
_packet = [_packet, toArray _content] call BIS_fnc_arrayPushStack;
_cmd = 'M3DE [SaveFile,"' + (str _packet) + '"]';
_result = call compile ("Arma2Net.Unmanaged" callExtension _cmd);