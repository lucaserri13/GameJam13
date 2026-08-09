instance_destroy(self)
audio_play_sound(snd_strongbounce, 10, 0, 0.8, 0, random_range(0.9, 1.1))
instance_create_layer(x, y, "Enemies", obj_bullet_explosion)