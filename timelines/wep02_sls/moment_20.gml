var i,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var k;
k=2
actors_dhk_head=global.pliot_wep_head[pid,k]
actors_dhk_face=global.pliot_wep_face[pid,k]
actors_dhk_text=global.pliot_wep_name[pid,k]+"：#"+global.pliot_wep_text[pid,k]
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

