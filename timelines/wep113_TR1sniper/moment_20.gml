var i,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var j,k;
k=6
adhk_set(pid,k,id)
ls_spr1=robo57s00_kar999k_pose

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