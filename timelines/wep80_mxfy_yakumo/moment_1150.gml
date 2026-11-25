/// @description 木偶缩小
var i;
i=actors_now
j=5
actors_direction[j]=180

actors_speed[j]=0
actors_grow[j]=0
actors_xs[j]=-0.5
actors_ys[j]=0.5
actors_x[j]=battlecam_x-1280
if(!i==0)
{
    actors_direction[j]=0
    actors_xs[j]=0.5
}

