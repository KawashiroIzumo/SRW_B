///@description 动画始点2 
var i,j;
i=actors_now
actors_reset(4)
actors_reset(i)
actors_reset(7)

j=10
actors_sprite[j]=robo00s00_polandsword_in
actors_image[j]=0
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_x[j]=battlecam_x+640
actors_y[j]=battlecam_y+360
actors_alpha[j]=1
actors_follow[j]=1

audio_play_sound(sound39_gundam_dash,1,0)

