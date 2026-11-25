init_room()
a=create_mrobo(101,7,7,0,0)
global.mrobo_pliot_ql[a]=125
a=create_mrobo(12,6,7,0,0)
global.mrobo_pliot_ql[a]=100
global.mrobo_hp[a]=100
a=create_mrobo(17,7,6,0,2)
global.mrobo_pliot_ql[a]=125
a=create_mrobo(2,7,5,0,0)
global.mrobo_pliot_ql[a]=125
for(sl=0;sl<6;sl++)
{
    var lsx,lsy;
    lsx=1+12*(floor(sl/3))
    lsy=5+(sl mod 3)*2
    view_do_center_puz(0,lsx,lsy)
    a=create_fx_puz(fx_robo_coming,lsx,lsy)
    a.ppliot=1
    a.probo=3
    a.pteam=1
    a.php=2500
    a.pevent=noone
}