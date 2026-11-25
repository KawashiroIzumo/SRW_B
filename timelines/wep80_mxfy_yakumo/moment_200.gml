/// @description 动画终点 新动画起点
var i;
i=actors_now
actors_reset(i)
actors_reset(7)
j=7
actors_sprite[j]=robo18s00_mxfw_pose2
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
pid=global.mrobo_pliot[mrid[i]]
var k;
k=17
adhk_set(pid,k,id)
