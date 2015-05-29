waitUntil{!isNull (findDisplay 46)};
while {1==1} do {
	waitUntil{player == player && {alive player}};
	_player = player;
	_action = _player addAction ["3D Editor", "\x\addons\a3_m3editor\init\startEditor.sqf"];
	waitUntil {player != _player};
	_player removeAction _action;
};