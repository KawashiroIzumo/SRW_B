///@description 伏兵爆炸
var a=mrobo_find_pliot_name("撤硕教伏兵"),b;
j=global.mrobo_x[a]
i=global.mrobo_y[a]
b=create_fx_puz(fx_con,j,i)
b.sprite_index=fx00_bomb
audio_play_sound(sound144_gunpower00,1,0)
mrobo_reset_single(a)