/// @description Debug && MouseBox

// Draw Box
if mousePress == 1
	draw_rectangle(mouseLeftPress_x, mouseLeftPress_y, mouse_x, mouse_y, true);
	
// Display placement of new building
if buildingPlacement != noone
{
	var _sprite = buildingPlacement.sprite_index;
	
	if buildingIntersect
		draw_sprite_ext(_sprite, 0, mouse_x, mouse_y, image_xscale, image_yscale, 0, c_red, 0.1);
	else
		draw_sprite_ext(_sprite, 0, mouse_x, mouse_y, image_xscale, image_yscale, 0, c_white, 0.1);
}

image_blend = hashColor;

#region Debug Monitoring

if keyboard_check_pressed(vk_f1)
{
	global.debugMenu = !global.debugMenu;
}

if global.debugMenu
{
	// Draw Pathfinding collision grid
	mp_grid_draw(global.grid);
	
	var _gap = 20;
	
	var _size = ds_grid_width(global.instGrid);
	
	draw_set_halign(fa_right);
	
	for(var i = 0; i < _size; i++)
	{
		var _value = ds_grid_get(global.instGrid, i, 0)
		
		if _value == 0
			draw_text(mouse_x - 20, mouse_y - (20 - _gap * i), "-");
		else
			draw_text(mouse_x - 20, mouse_y - (20 - _gap * i), "instance Found: "	+ string(_value));
	}
	
	draw_set_halign(fa_left);
	
	for(var i = 0; i < _size; i++)
	{
		var _value = ds_grid_get(global.instGrid, i, 0)

		draw_text(20,(20 - _gap * (i - _size)), "Inst_" + string(i) + ": "	+ string(_value));
	}
}

#endregion