/// @description 标准开头 杂兵
init_stagescene()
global.bgm=BGMsrw00_Aspire_byfreePD
global.roombgm=global.bgm
with(DND_player)cold=true
with(camera)follow=false

view_do_center_puz(0,15,19)
create_mrobo_kai(8,13,18,1,1,2)
create_mrobo_kai(7,13,17,1,1,2)
create_mrobo_kai(7,12,17,1,1,2)
create_mrobo_kai(7,11,17,1,1,2)
create_mrobo_kai(7,10,17,1,1,2)

create_mrobo_kai(6,15,18,1,1,2)
create_mrobo_kai(5,15,17,1,1,2)
create_mrobo_kai(5,16,17,1,1,2)
create_mrobo_kai(5,17,17,1,1,2)
create_mrobo_kai(5,18,17,1,1,2)

vx=4
vy=14
for(i=0;i<8;i++)
{
	create_mrobo_kai(4-i mod 2,vx,vy,1,1,2)
	vy++
	vx++
}
vx=24
vy=14
for(i=0;i<8;i++)
{
	create_mrobo_kai(4-i mod 2,vx,vy,1,1,2)
	vx--
	vy++
}
a=workout_enemy_lv()
while(global.pliot_lv[1]<a)
{
    pliot_lvup(16)
}
while(global.pliot_lv[17]<a+2)
{
    pliot_lvup(17)
}