private ['_position', '_direction', '_angle', '_distance', '_vector'];
_position 	= [_this, 0, [0,0,0], [[]], 3] call BIS_fnc_param; 
_direction 	= [_this, 1, 0, [0]] call BIS_fnc_param; 
_angle 		= [_this, 2, 0, [0]] call BIS_fnc_param; 
_distance 	= [_this, 3, 0, [0]] call BIS_fnc_param;
_vector 	= [(sin(_direction) * cos(_angle)),(cos(_direction) * cos(_angle)),sin(_angle)];
_position 	= _position vectorAdd (_vector vectorMultiply _distance);
_position