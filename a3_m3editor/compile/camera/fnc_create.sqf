private ['_position'];
M3E_cameraWorldspace = [[0,0,0], getDir player, 45];
M3E_cameraObj = 'camera' camCreate [0,0,0];
showCinemaBorder false;
_position = [getPosASL player, M3E_cameraWorldspace select 1, -(M3E_cameraWorldspace select 2), -20] call M3E_fnc_transformPosition;
M3E_cameraWorldspace set [0, _position];
call M3E_fnc_cam_position;
M3E_cameraObj cameraEffect ["INTERNAL", "BACK"];