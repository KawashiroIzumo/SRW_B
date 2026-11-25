/// @description 受击
var i;
i=actors_now
audio_play_sound(sound5_Earth6,1,false)

actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=0
actors_image_speed[!i]=1
battlecam_speed=0

playdh_mbdmg=0.5

var i,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var k;
k=7
adhk_set(pid,k,id)

