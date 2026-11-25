var i;
i=actors_now
var rid=global.mrobo_id[mrid[i]]
actors_sprite[i]=noone
j=4
actors_sprite[j]=fx02_jitps
actors_x[j]=actors_x[i]
actors_y[j]=actors_y[i]
actors_xs[j]=actors_xs[i]
actors_ys[j]=actors_ys[i]
actors_image[j]=0
actors_image_speed[j]=1
actors_alpha[j]=1
actors_grow[j]=0
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_blend[j]=bm_add
actors_speed[j]=30

j=7
actors_sprite[j]=robo01s00_badaocf
if(rid==18)actors_sprite[j]=robo18s00_badaocf
actors_x[j]=actors_x[i]
actors_y[j]=actors_y[i]
actors_xs[j]=actors_xs[i]
actors_ys[j]=actors_ys[i]
actors_grow[j]=0
actors_image[j]=0
actors_image_speed[j]=0.5
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_blend[j]=bm_normal
actors_speed[j]=30

battlecam_speed=10
battlecam_direction=0
actors_direction[4]=0
actors_direction[7]=0
if(i==0)
{
    battlecam_direction=180
    actors_direction[4]=180
    actors_direction[7]=180
}
audio_play_sound(sound39_gundam_dash,1,false)

