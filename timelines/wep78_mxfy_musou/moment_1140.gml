/// @description cutin
var i,j;
i=actors_now
actors_reset(8)
j=8
actors_sprite[j]=robo01s00_mxfw_hit_cutin
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
var i,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var k;
k=31
adhk_set(pid,k,id)
