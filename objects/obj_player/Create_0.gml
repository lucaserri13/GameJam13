if room != rm_main_menu and room != rm_intermission and room != rm_good_end and room != rm_neutral_end and room != rm_bad_end
{
if !audio_is_playing(snd_music)
audio_play_sound(snd_music, 100, 1, 1)
}
else audio_stop_sound(snd_music)
charging = 0
cancharge = 1
alarmcheck = 0
cangethit = 1