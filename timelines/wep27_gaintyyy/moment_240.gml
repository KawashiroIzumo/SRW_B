var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[i]]
j=50
actors_disappear[j]=0.05
j=7
actors_reset(i)
actors_sprite[j]=robo17s00_yyy_go
actors_image[j]=0
actors_x[j]=0
actors_y[j]=00
actors_image_speed[j]=0.5
actors_xs[j]=1
actors_ys[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(sound147_robotstep,1,0)

