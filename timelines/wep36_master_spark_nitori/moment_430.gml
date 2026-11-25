/// @description 受击
var i;
i=actors_now

j=6
actors_sprite[j]=fx01_soundlight
actors_colora[j]=c_red
actors_x[j]=actors_x[!i]+irandom(256)-128
actors_y[j]=actors_y[!i]+irandom(128)-64
actors_xs[j]=0.5
actors_ys[j]=0.5
actors_disappear[j]=0.05
actors_rotate_speed[j]=6
actors_grow[j]=0.1
audio_play_sound(sound34_hkdrum,0,0)
audio_play_sound(sound13_shiled003,1,false)

j=5
actors_sprite[j]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[j]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[j]=0
actors_image_speed[j]=1
actors_speed[j]=0
battlecam_speed=1
if(!i==1)battlecam_direction=0
else battlecam_direction=180

actors_reset(7)
j=7
actors_sprite[j]=robo24s00_masterspark_in
actors_image[j]=0
actors_image_speed[j]=0.5
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(SE13_master_spark,1,0)
pid=global.mrobo_pliot[mrid[!i]]

actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])
playdh_mbdmg=1

