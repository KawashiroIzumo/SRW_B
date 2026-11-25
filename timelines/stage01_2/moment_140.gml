/// @description 敌方增援
var lsx,lsy;
lsx=16
lsy=12
view_do_center_puz(0,lsx-1,lsy)
a=create_fx_puz(fx_robo_coming,lsx-1,lsy)
a.ppliot=1
a.probo=5
a.pteam=1

view_do_center_puz(0,lsx+1,lsy)
a=create_fx_puz(fx_robo_coming,lsx+1,lsy)
a.ppliot=1
a.probo=5
a.pteam=1

view_do_center_puz(0,lsx,lsy-1)
a=create_fx_puz(fx_robo_coming,lsx,lsy-1)
a.ppliot=1
a.probo=7
a.pteam=1


