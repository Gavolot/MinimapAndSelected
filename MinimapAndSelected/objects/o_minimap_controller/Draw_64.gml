/// ??
var vc = view_camera[0];
var w = camera_get_view_width(vc);
var h = camera_get_view_height(vc);
var spr = spr_minimap;

var sW = sprite_get_width(spr);
var sH = sprite_get_height(spr);

var _xPos = w - sW - 1;
var _yPos = 1;

draw_sprite_ext(spr, 0, _xPos, _yPos, 1, 1, 0, c_white, 1);


MiniMap_draw_objects_circle(p_entity, sW, sH, w - sW, 0, 3);


draw_set_color(c_white);

var cx = camera_get_view_x(vc);
var cy = camera_get_view_y(vc);
//var MinimapX = window_get_width() - sW;
//var MinimapY = window_get_height() - sH;

draw_rectangle(
(_xPos+((sW / room_width) * cx)),
(_yPos+((sH / room_height) * cy)),
(_xPos+((sW / room_width) * (cx+w))),
(_yPos+((sH / room_height) * (cy+h))), true);

var MouseX = window_mouse_get_x();
var MouseY = window_mouse_get_y();

if(point_in_rectangle(MouseX, MouseY, _xPos, _yPos, _xPos + w, _yPos + h)){
    if(mouse_check_button_pressed(mb_left)){
        var map_x = room_width * (MouseX - _xPos) / sW;
        var map_y = room_height * (MouseY - _yPos) / sH;
        
        camera_set_view_pos(vc, map_x - w / 2, map_y - h / 2);
        //======================================================================
        var cx = camera_get_view_x(vc);
        var cy = camera_get_view_y(vc);
        camera_set_view_pos(vc, 
        clamp(cx, 0, room_width - w - 1),
        clamp(cy, 0, room_height - h));
        with(o_cursor_controller){
            _isRectangle = false;
        }
    }
}