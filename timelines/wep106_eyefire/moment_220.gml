/// @description 动画始点2 
var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo50s00_eyeslash_in
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=1
pid=global.mrobo_pliot[mrid[i]]
var k;
k=3
adhk_set(pid,k,id)
audio_play_sound(SE19_magical14,1,0)
