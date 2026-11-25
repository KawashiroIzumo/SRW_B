/// @description 假人屁股上插火箭
var i,j;
i=actors_now
j=5
actors_x[j]=battlecam_x-200
actors_y[j]=battlecam_y// 550
actors_speed[j]=3.5
actors_rotate_spd[j]=-12
actors_direction[j]=225
if(!i==0)
{
    actors_direction[j]=315
}
audio_play_sound(sound145_machinegun00,1,0)

