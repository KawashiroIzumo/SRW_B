/// @description 移动镜头至敌方视角
var i,j,k,l;
i=actors_now
bks_set(global.mrobo_x[mrid[!i]],global.mrobo_y[mrid[!i]])
actors_sprite[4]=noone
battlecam_x=actors_x[!i+2]+(1-2*i)*640
battlecam_y=actors_y[!i+2]

battlecam_speed=16
actors_sprite[5]=zdb
actors_speed[5]=20
if(actors_x[!i+2]>1920)
{
    actors_x[5]=battlecam_x-640
    actors_y[5]=battlecam_y-360
    actors_xs[5]=1
    actors_direction[5]=180
    battlecam_direction=0
}
else
{
    actors_x[5]=battlecam_x+640
    actors_y[5]=battlecam_y-360
    actors_xs[5]=-1
    actors_direction[5]=0
    battlecam_direction=180
}

