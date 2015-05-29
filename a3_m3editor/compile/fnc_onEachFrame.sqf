if (!isNull M3E_selectedObject) then {
	private ['_color', '_bb', '_pa', '_pb', '_p1', '_p2', '_p3', '_p4', '_p5', '_p6', '_p7', '_p8', '_p9', '_p10'];
	_color = switch (true) do {
		case (M3E_selectedObject in M3E_lockedObjs) : {[1,1,0,1]};
		case (M3E_selectedObject in M3E_insertedObjects) : {[0,1,0,1]};
		default {[1,0,0,1]};
	};
	_bb = boundingBoxReal M3E_selectedObject;
	_pa = _bb select 0;
	_pb = _bb select 1;

	_p1 = M3E_selectedObject modelToWorld [_pa select 0, _pa select 1, _pb select 2];
	_p2 = M3E_selectedObject modelToWorld [_pa select 0, _pb select 1, _pa select 2];
	_p3 = M3E_selectedObject modelToWorld [_pa select 0, _pb select 1, _pb select 2];
	_p4 = M3E_selectedObject modelToWorld [_pb select 0, _pa select 1, _pa select 2];
	_p5 = M3E_selectedObject modelToWorld [_pb select 0, _pa select 1, _pb select 2];
	_p6 = M3E_selectedObject modelToWorld [_pb select 0, _pb select 1, _pa select 2];
	_p7 = M3E_selectedObject modelToWorld [_pb select 0, _pb select 1, _pb select 2];
	_p8 = M3E_selectedObject modelToWorld [_pa select 0, _pa select 1, _pa select 2];

	drawLine3D [_p1, _p3, _color];
	drawLine3D [_p1, _p5, _color];
	drawLine3D [_p1, _p8, _color];
	drawLine3D [_p2, _p8, _color];
	drawLine3D [_p3, _p2, _color];
	drawLine3D [_p3, _p7, _color];
	drawLine3D [_p4, _p5, _color];
	drawLine3D [_p4, _p6, _color];
	drawLine3D [_p4, _p8, _color];
	drawLine3D [_p5, _p7, _color];
	drawLine3D [_p7, _p6, _color];
	drawLine3D [_p6, _p2, _color];

	_p9 = M3E_selectedObject modelToWorld [0,0,_pb select 2];
	_p10 = M3E_selectedObject modelToWorld [0,(_pb select 1) * 2, _pb select 2];
	drawLine3D [_p9, _p10, [0,1,0,1]];

	_p11 = M3E_selectedObject modelToWorld [0,0,_pa select 2];
	_p12 = M3E_selectedObject modelToWorld [0,(_pb select 1) * 2, _pa select 2];
	drawLine3D [_p11, _p12, [0,1,0,1]];
};