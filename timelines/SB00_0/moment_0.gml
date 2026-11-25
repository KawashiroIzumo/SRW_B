/// @description 标准开头
init_stagescene()
global.bgm=BGMsrw11_maoudamashii_ethnic30
global.roombgm=global.bgm
with(DND_player)cold=true
with(camera)follow=false
with(stage01_GM_check)instance_destroy()
view_do_center_puz(0,15,15)
create_fx_puz(fx_robo_coming,15,15)

