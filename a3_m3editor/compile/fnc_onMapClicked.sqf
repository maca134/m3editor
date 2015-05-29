private ['_pos'];
if !((_this select 1) == 0) exitWith {};
                
_pos = (_this select 0) posScreenToWorld [_this select 2, _this select 3];
player setPos _pos;
M3E_cameraWorldspace set [0, [_pos select 0, _pos select 1, (M3E_cameraWorldspace select 0) select 2]];
call M3E_fnc_cam_position;