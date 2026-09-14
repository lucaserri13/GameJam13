camera_set_view_target(view_camera[0], obj_player);


if obj_player.cancel
{
	instance_destroy(obj_camerafollow)
	exit
}

	
audio_play_sound(snd_dash, 40, 0, 1, 0, random_range(0.9, 1.1))

var _fx_screenshake = fx_create("_filter_screenshake");
fx_set_parameter(_fx_screenshake, "Magnitude", [2]);
fx_set_parameter(_fx_screenshake, "Shake_Speed", [0.2]);
layer_set_fx("Flood", _fx_screenshake);
