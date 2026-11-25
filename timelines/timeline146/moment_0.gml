/// @description 封弊者掉血
var mrid,pid,rid,i;
mrid=mrobo_find_pliot(9)
rid=global.mrobo_id[mrid]
pid=global.mrobo_pliot[mrid]
a=instance_create(2,2,ability_change_con)
a.mode=0
a.dcold=false
a.mrid=mrid
a.dmg=-2000
a.xs_fx=true
a.xs_fx_ind=fx03_baozha
audio_play_sound(sound34_hkdrum,1,0)
return true;

