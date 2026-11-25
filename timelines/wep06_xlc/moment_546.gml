/// @description 受击
var i;
i=actors_now


j=5
actors_reset(j)
actors_sprite[j]=robo02s00_beam
actors_image_speed[j]=0.5
actors_rotate[j]=irandom(60)-30
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]+256
audio_play_sound(sound42_laser,1,0)


