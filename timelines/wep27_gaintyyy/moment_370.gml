/// @description 移动镜头至敌方视角
var i,j,k,l;
i=actors_now
bks_set(global.mrobo_x[mrid[!i]],global.mrobo_y[mrid[!i]])
actors_reset(7)
actors_reset(50)
battlecam_x=actors_x[!i+2]+(1-2*i)*640
battlecam_y=actors_y[!i+2]
battlecam_direction=0
if(i==0)
{
    battlecam_direction=180
}
battlecam_speed=16


