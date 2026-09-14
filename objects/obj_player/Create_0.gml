var _music = choose(snd_music1, snd_music2, snd_music3, snd_music4, snd_music5)

if room = rm_finale
_music = choose(snd_music_finale1, snd_music_finale2)

var _musicplaying = audio_is_playing(snd_music1) or audio_is_playing(snd_music2) or audio_is_playing(snd_music3) or audio_is_playing(snd_music4) or audio_is_playing(snd_music5) or audio_is_playing(snd_music_finale1) or audio_is_playing(snd_music_finale2)

if room != rm_main_menu and room != rm_intermission and room != rm_good_end and room != rm_neutral_end and room != rm_bad_end
{	
if !_musicplaying
audio_play_sound(_music, 100, 1, 1)
}
else audio_stop_sound(_music)

if (room == rm_finale) and (global.checkpointy != 0)
{
y = global.checkpointy
x = global.checkpointx 
}

charging = 0
cancharge = 1
alarmcheck = 0
cangethit = 1
cancel = 0

