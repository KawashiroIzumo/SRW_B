/// @description 标准开头
init_stagescene()
global.bgm=BGMsrw18_Horror_Suspense
global.roombgm=global.bgm
with(DND_player)cold=true
with(camera)follow=false
var mrid,i;
mrid=mrobo_find_pliot(0+global.ls_variable[0]*2)
if(global.mrobo_onship[mrid])
{
	a=mrobo_find_robo(2)
	b=create_mrobo(0,global.mrobo_x[a],global.mrobo_y[a],0,0)
	
	global.mrobo_onship[mrid]=false
	global.mrobo_x[mrid]=global.mrobo_x[b]
	global.mrobo_y[mrid]=global.mrobo_y[b]
	
	mrobo_reset_single(b)
}
