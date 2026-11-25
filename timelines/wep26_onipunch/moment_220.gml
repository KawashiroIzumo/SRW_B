/// @description 移动镜头至敌方视角
var i,j,k,l;
i=actors_now
bks_set(global.mrobo_x[mrid[!i]],global.mrobo_y[mrid[!i]])
actors_sprite[4]=noone
battlecam_x=actors_x[!i+2]+(1-2*i)*640
battlecam_y=actors_y[!i+2]

j=5
actors_sprite[j]=fx02_jitps
actors_x[j]=battlecam_x+(1-2*i)*256
actors_y[j]=battlecam_y
actors_xs[j]=actors_xs[i]
actors_ys[j]=actors_ys[i]
actors_image[j]=0
actors_image_speed[j]=1
actors_grow[j]=0
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_blend[j]=bm_add
actors_speed[j]=20

j=7
actors_sprite[j]=robo17s00_badaocf
actors_x[j]=battlecam_x+(1-2*i)*256
actors_y[j]=battlecam_y
actors_xs[j]=actors_xs[i]
actors_ys[j]=actors_ys[i]
actors_grow[j]=0
actors_image[j]=9
actors_image_speed[j]=0
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_blend[j]=bm_normal
actors_speed[j]=20

battlecam_speed=16
battlecam_direction=0
actors_direction[4]=0
actors_direction[7]=0
if(i==0)
{
    battlecam_direction=180
    actors_direction[4]=180
    actors_direction[7]=180
}
battlecam_speed=16
if(actors_miss==false)
{
    actors_reset(4)
    actors_reset(7)
}

j=50
actors_sprite[j]=zdb
actors_speed[j]=20
actors_disappear[j]=0
actors_rotate[j]=0
actors_rotate_speed[j]=0
actors_grow[j]=0
if(i==1)
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

