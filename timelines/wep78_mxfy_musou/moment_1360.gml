/// @description 假人屁股上插火箭
var i,j;
i=actors_now
j=5
actors_x[j]=battlecam_x
actors_y[j]=battlecam_y// 550
actors_speed[j]=5
actors_rotate_spd[j]=-12
actors_direction[j]=180
if(!i==0)
{
    actors_direction[j]=0
}
audio_play_sound(sound16_glass_break,1,0)

