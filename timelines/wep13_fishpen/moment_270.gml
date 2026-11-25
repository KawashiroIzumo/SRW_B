var i,j;
i=actors_now
actors_reset(4)
actors_reset(7)
j=7
actors_sprite[j]=robo03s00_bulletin
actors_image[j]=0
actors_image_speed[j]=1
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
audio_play_sound(sound42_laser,1,0)

