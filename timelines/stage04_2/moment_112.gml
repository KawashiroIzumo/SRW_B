/// @description 创建铃瑚音效
var mrid,i;
mrid=mrobo_find_pliot(3)
a=create_mrobo(0,global.mrobo_x[mrid],global.mrobo_y[mrid],0,0)
lsx=global.mrobo_x[a]
lsy=global.mrobo_y[a]
mrobo_reset_single(a)
create_fx_puz(fx_robo_coming,lsx,lsy)