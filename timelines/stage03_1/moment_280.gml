mrid=mrobo_find_pliot(13)
a=create_fx_puz(fx_con,global.mrobo_x[mrid]+dcos(90),global.mrobo_y[mrid]-dsin(90))
a.sprite_index=robo11s00_dtp_fx
a.image_angle=90

audio_play_sound(SE10_retro27,1,0)

