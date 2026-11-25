/// @description 主角掉血
var mrid,pid,rid,i;
mrid=mrobo_find_pliot(0+global.ls_variable[0]*2)
rid=global.mrobo_id[mrid]
pid=global.mrobo_pliot[mrid]
a=instance_create(2,2,ability_change_con)
a.mode=0
a.dcold=false
a.mrid=mrid
a.dmg=-1000
if(global.mrobo_hp[mrid]<1000)a.dmg=(global.mrobo_hp[mrid]-1)*-1
a.xs_fx=true
a.xs_fx_ind=fx03_baozha
audio_play_sound(sound144_gunpower00,1,0)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

