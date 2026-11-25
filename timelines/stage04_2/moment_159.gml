///@description 装饰战
a=instance_create(0,0,battle_qr)
a.mode=2
a.stand=0
//show_message("stand="+string(stand))
a.battle_dh=1
a.wid[1]=-1
a.wid[0]=52
a.mrid[1]=mrobo_find_pliot(37)
a.mrid[0]=mrobo_find_pliot(2)
a.wep_forcehit[0]=1
a.wep_forcedmg[0]=25000