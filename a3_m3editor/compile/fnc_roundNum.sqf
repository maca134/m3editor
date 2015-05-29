private ['_n'];
_n = [_this, 0, 0, [0]] call BIS_fnc_param;
_dp = [_this, 1, 0, [0]] call BIS_fnc_param;
_n = _n * (10 ^ _dp);
_n = round _n;
_n = _n / (10 ^ _dp);
_n