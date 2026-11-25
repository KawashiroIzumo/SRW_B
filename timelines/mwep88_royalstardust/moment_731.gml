/// @description 标准结尾
with(DND_player)
{
    onchoose=-1
    inchoose=0
    cold=false
    moved=false
}
global.mrobo_E[mrid]=true
a=instance_create(0,0,battle_end_con)
a.mrid[0]=mrid
a.exp_get=sum_exp
a.money_get=sum_money
for(i=0;i<ls_equip_sum;i++)
{
    a.equip_get[i]=ls_equip_get[i]
}
instance_destroy()


