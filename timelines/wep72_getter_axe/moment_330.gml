/// @description 动画始点2
var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo25s00_axe_in
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
k=1
adhk_set(pid,k,id)