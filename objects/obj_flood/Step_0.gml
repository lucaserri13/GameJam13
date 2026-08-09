var _floodspeed = 1
if room = rm_finale
_floodspeed = 1.5

if global.chargeslowdown
_floodspeed = _floodspeed/2
if global.collapse or room = rm_finale
vspeed = _floodspeed

