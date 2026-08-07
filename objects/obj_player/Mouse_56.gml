if cancharge
{
global.chargeslowdown = 0

// Charge Recover.
alarm[0] = 60
if global.recoverfaster
alarm[0] = 30
}

charging = 0
cancharge = 0

