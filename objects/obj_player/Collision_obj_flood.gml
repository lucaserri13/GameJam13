audio_play_sound(snd_death, 30, 0, 1, 0, random_range(0.9, 1.1))
global.temporarypoints = 0
global.deaths++
global.totaldeaths++
global.killobjective = 0

if global.collapse
global.collapse = 0


room_restart()