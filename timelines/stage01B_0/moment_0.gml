/// @description 标准开头
a=mrobo_find_pliot(2)
if(a>=0)timeline_position=timeline_max_moment(timeline_index)-1
init_stagescene()
global.bgm=BGMsrw00_Aspire_byfreePD
global.roombgm=global.bgm
with(DND_player)cold=true
with(camera)follow=false

