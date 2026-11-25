///@description 受击
var i;
i=actors_now
flag_UI=false
actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=0
actors_image_speed[!i]=1
actors_speed[!i]=0
battlecam_speed=0

var i;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var k;
k=1
adhk_set(pid,k,id)

audio_play_sound(SE22_sword,0,0)
playdh_mbdmg=1

