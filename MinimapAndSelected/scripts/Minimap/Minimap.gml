function MiniMap_draw_objects_circle(OBJECT_INDEX, MINIMAP_WIDTH, MINIMAP_HEIGHT, MINIMAP_X, MINIMAP_Y, OBJECT_RADIUS){
    with(OBJECT_INDEX){
        var X = MINIMAP_WIDTH / room_width * x;
        var Y = MINIMAP_HEIGHT / room_height * y;
        
        draw_circle(X + MINIMAP_X, Y + MINIMAP_Y, OBJECT_RADIUS, false);
    }
}