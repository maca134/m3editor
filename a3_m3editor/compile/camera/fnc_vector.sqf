private ['_camera', '_direction', '_angle', '_vdir', '_vup'];
_camera 	= [_this, 0, objNull, [objNull]] call BIS_fnc_param; 
_direction 	= [_this, 1, 0, [0]] call BIS_fnc_param; 
_angle 		= ([_this, 2, 0, [0]] call BIS_fnc_param) * -1; 
_vdir = [sin(_direction) * cos(_angle), cos(_direction) * cos(_angle), sin(_angle)];
_vup = [0, 0, cos(_angle)];
_camera setVectorDirAndUp [_vdir, _vup];