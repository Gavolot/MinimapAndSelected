if(_checkRect){
	if(not mouse_check_button_released(mb_left)){
		_isRectangle = true;
		with(_targetObjectIndex){
			_isSelected = false;
			//_isAcceptSendRequest = _isSelected;
		}
	}
}

//

if not _isRectangle //>>>
if(mouse_check_button_released(mb_left)){
	//
	_isRectangle = false;
	_checkRect = false;
	alarm[0] = -1;
	//
	
	with(_targetObjectIndex){
		//selected_accept_send(mouse_x, mouse_y);
	}
}
//