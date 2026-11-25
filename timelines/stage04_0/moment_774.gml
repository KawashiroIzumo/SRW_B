///@description 真香爆炸
var a=mrobo_find_pliot_name("博丽真香"),b;
j=global.mrobo_x[a]
i=global.mrobo_y[a]
b=create_fx_puz(fx_con,j,i)
b.sprite_index=fx00_bomb
audio_play_sound(sound144_gunpower00,1,0)
mrobo_reset_single(a)