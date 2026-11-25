/// @description 假人屁股上插火箭
var i,j;
i=actors_now
j=5
actors_x[j]=battlecam_x
actors_y[j]=battlecam_y// 550
actors_speed[j]=20
actors_rotate_spd[j]=12
actors_direction[j]=45
if(!i==0)actors_direction[j]=135
audio_play_sound(sound147_robotstep,1,0)


