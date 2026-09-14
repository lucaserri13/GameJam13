if !cangethit exit

audio_play_sound(snd_death, 30, 0, 1, 0, random_range(0.9, 1.1))
global.temporarypoints = 0
global.deaths += 2
global.totaldeaths++
global.killobjective = global.objectivesaved

if global.collapse
global.collapse = 0

room_restart()