/// @description 敌方增援
var lsx,lsy;
lsx=17+12*(floor(sl/3))
lsy=2+(sl mod 3)*2
view_do_center_puz(0,lsx,lsy)
a=create_fx_puz(fx_robo_coming,lsx,lsy)
a.ppliot=1
a.probo=3
a.pteam=1
sl+=1

