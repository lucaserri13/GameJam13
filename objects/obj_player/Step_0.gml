#region Movimento.

var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;

var _spd = 4;
if global.runfaster
_spd = 5

if charging
	_spd = (_spd/2) - 1;

if (_hspd != 0 || _vspd != 0)
{

	
	// Caso o player esteja carregando um dash, ele fica parado
	
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);	
	move_and_collide(_xadd, _yadd, obj_wall)
}

	

	#region Bounds.

	var _bounds = 32
	if x >= room_width - _bounds 
	x = room_width - _bounds 

	if x <= _bounds
	x = _bounds


	if y >= room_height - _bounds
	y = room_height - _bounds

	if y <= _bounds
	y = _bounds

	#endregion

#endregion

if alarmcheck
if !mouse_check_button(mb_left)
{
	cancharge = 1
	alarmcheck = 0
}

