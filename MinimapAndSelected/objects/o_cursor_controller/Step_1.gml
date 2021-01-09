//
if(_num > 0){
	for (var i = 0; i < _num; i++){
		//var obj = _list[| i];
		//obj._isSelected = true;
		//show_debug_message(obj.id);
        with(_list[| i]){
        	//show_debug_message(id);
        	_isSelected = true;
        }
    }
    _num = 0;
}
//

var okRect = false;
if(mouse_check_button_pressed(mb_left)){
	
	_isRectangle = false;
	alarm[0] = -1;
	
	var tr = _targetObjectIndex;
	with(_targetObjectIndex){
		//_isAcceptSendRequest = true;
		var tx = bbox_left;
		var ty = bbox_top;
		var tx2 = bbox_right;
		var ty2 = bbox_bottom;
		var l = 2;
		
		var trObjectIndex = tr;
		if(rectangle_in_rectangle(tx, ty, tx2, ty2, mouse_x - l, mouse_y - l, mouse_x + l, mouse_y + l)){
			_isSelected = !_isSelected;
			//_isAcceptSendRequest = _isSelected;
			var _idd = id;
			with(trObjectIndex){
				if(_idd != id){
					_isSelected = false;
					//_isAcceptSendRequest = _isSelected;
				}
			}
		}
		else {
			okRect = true;
		}
	
	}
	if(okRect){
		_X = mouse_x;
		_Y = mouse_y;
		alarm[0] = 0.2 * room_speed;

	}
}