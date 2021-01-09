//
if(mouse_check_button_released(mb_left)){
	alarm[0] = -1;
	_isRectangle = false;
	_checkRect = false;
	if(_num == 0){
		_X1 = _X;
		_Y1 = _Y;
		_X2 = mouse_x;
		_Y2 = mouse_y;
		ds_list_clear(_list);
		_num = collision_rectangle_list(_X1, _Y1, _X2, _Y2, _targetObjectIndex, true, true, _list, false);
		//alarm[1] = 0.1 * room_speed;
	}
}
//

if(mouse_check_button_pressed(mb_right)){
	with(_targetObjectIndex){
		_isSelected = false;
		//_isAcceptSendRequest = _isSelected;
	}
}


_okRect = false;