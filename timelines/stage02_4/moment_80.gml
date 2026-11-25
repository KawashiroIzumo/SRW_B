/// @description 臭天使掉血
var mrid,pid,rid,i;
global.worinima=true
mrid=mrobo_find_robo(31)
rid=global.mrobo_id[mrid]
pid=global.mrobo_pliot[mrid]
a=instance_create(2,2,ability_change_con)
a.mode=0
a.dcold=false
a.mrid=mrid
a.dmg=-1919
a.xs_fx=true
a.xs_fx_ind=fx03_baozha
audio_play_sound(sound34_hkdrum,1,0)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])
return true;

