var i,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
rid=global.mrobo_id[mrid[i]]
var k;
k=global.wep_extra_talk[wid[i]]
adhk_set(pid,k,id)
ls_spr1=global.robo_spr_swep_shoot_pose[rid]
ls_spr2=noone
ls_spr3=noone
ls_wspr1=global.wep_extra_spr_pose[wid[i]]
ls_wspr2=global.wep_extra_spr_in[wid[i]]
ls_wspr3=global.wep_extra_spr_miss[wid[i]]
ls_tspr1=global.wep_extra_spr_toppose[wid[i]]
ls_tspr2=global.wep_extra_spr_topin[wid[i]]
ls_tspr3=global.wep_extra_spr_topmiss[wid[i]]
ls_sound1=global.wep_extra_sound_lauch[wid[i]]
ls_sound2=global.wep_extra_sound_hit[wid[i]]
j=15
actors_reset(j)
actors_sprite[j]=global.pliot_cutin[pid]
actors_xs[j]=1
actors_image_speed[j]=0.5
actors_follow[j]=true
actors_alpha[j]=1
actors_x[j]=battlecam_x+(1-i*2)*(640+384)
actors_y[j]=battlecam_y+360
actors_speed[j]=0
if(i==1)
{
    actors_xs[j]=-1
}
flag_UI=false

