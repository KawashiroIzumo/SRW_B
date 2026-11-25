///@description 声音&销毁木偶
var i,pid,k;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
k=choose(21,22,23)
adhk_set(pid,k,id)
audio_play_sound(SE01_explosion06,1,0)
var i=actors_now;
var j=5;
actors_reset(j)
