///@description 声音&放下木偶
audio_play_sound(SE14_dragon,1,0)
var i=actors_now;
var j=5;
actors_copy(!i,j)
actors_x[j]=battlecam_x
actors_y[j]=battlecam_y// 550
actors_xs[j]=0.1
actors_ys[j]=0.1
actors_grow[j]=0.005