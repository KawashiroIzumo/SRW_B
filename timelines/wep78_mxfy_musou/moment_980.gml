/// @description 假人屁股上插火箭
var i,j;
i=actors_now
j=5
actors_x[j]=battlecam_x
actors_y[j]=battlecam_y// 550
actors_speed[j]=12
actors_direction[j]=0
if(!i==0)actors_direction[j]=180
audio_play_sound(sound144_gunpower00,1,0)

