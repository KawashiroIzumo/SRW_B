/// @description 移动镜头至敌方视角
var i,j,k,l;
i=actors_now
bks_set(global.mrobo_x[mrid[!i]],global.mrobo_y[mrid[!i]])
for(j=100;j<205;j++)
    actors_reset(j)
j=380
battlecam_x=actors_x[!i+2]+(1-2*i)*640
battlecam_y=actors_y[!i+2]
battlecam_speed=16
actors_sprite[j]=zdb
actors_speed[j]=20
if(actors_x[!i+2]>1920)
{
    actors_x[j]=battlecam_x-640
    actors_y[j]=battlecam_y-360
    actors_xs[j]=1
    actors_direction[j]=180
    battlecam_direction=0
}
else
{
    actors_x[j]=battlecam_x+640
    actors_y[j]=battlecam_y-360
    actors_xs[j]=-1
    actors_direction[j]=0
    battlecam_direction=180
}

