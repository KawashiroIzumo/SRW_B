/// @description 受击
var i;
i=actors_now
j=4
actors_sprite[j]=fx01_soundlight
actors_colora[j]=c_red
actors_x[j]=actors_x[!i]+irandom(256)-128
actors_y[j]=actors_y[!i]+irandom(128)-64
actors_xs[j]=0.5
actors_ys[j]=0.5
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.1
audio_play_sound(sound40_beamsaber,1,false)
audio_play_sound(sound13_shiled003,1,false)

actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=0
actors_image_speed[!i]=1
actors_speed[!i]=8
actors_direction[!i]=180
if(i==1)actors_direction[!i]=0
battlecam_speed=0

pid=global.mrobo_pliot[mrid[!i]]
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
playdh_mbdmg=0.25

