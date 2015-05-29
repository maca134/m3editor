private ['_filename', '_loop', '_file', '_part'];
_filename = call compile ("Arma2Net.Unmanaged" callExtension "M3DE [OpenFileDialog]");
//diag_log _filename;
if (_filename == '') exitWith {};
_loop = true;
_file = '';
_part = 0;
while {_loop} do {
	private ['_content'];
	_content = call compile ("Arma2Net.Unmanaged" callExtension format["M3DE [ReadFile, ""%1"", ""%2""]", _filename, _part]);
	//diag_log _content;
	if (_content == "") exitWith {
		_loop = false;
	};
	_file = _file + _content;
	_part = _part + 1;
};
_file