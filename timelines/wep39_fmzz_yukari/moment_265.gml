/// @description 受击
var i;
i=actors_now
j=50
actors_sprite[j]=zdb
actors_speed[j]=0
actors_disappear[j]=0
actors_rotate[j]=0
actors_rotate_speed[j]=0
actors_grow[j]=0
actors_x[j]=battlecam_x-640
actors_y[j]=battlecam_y-360
actors_xs[j]=1
audio_play_sound(sound40_beamsaber,1,false)

actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=0
actors_image_speed[!i]=1
battlecam_speed=0
actors_change_dmg_text(pid,(global.mrobo_hp[mrid[!i]]-nowdmg)/global.robo_hp[global.mrobo_id[mrid[!i]]])

playdh_mbdmg=1

