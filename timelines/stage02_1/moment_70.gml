/// @description 添加机体 55号，卡缪，梅萨（幕间）
a=create_mrobo_kai(33,12,1,1,9,1)//55号
if(a>=0)
{
    global.mrobo_pliot_c_name[a]="职业选手55号"
    global.mrobo_ab[a]=999//超级瞄准已启动
    mrobo_refrish(a)
}
b=create_mrobo_kai(33,13,1,1,9,1)//卡缪
if(b>=0)
{
    global.mrobo_pliot_c_name[b]="职业选手zeta"
    global.mrobo_ac[b]=90
    global.mrobo_ab[b]=115
    global.mrobo_hpm[b]=10000
    mrobo_refrish(b)
    global.mrobo_hp[b]=8000
}
c=create_mrobo_kai(33,13,2,1,9,1)//梅萨
if(c>=0)
{
    global.mrobo_pliot_c_name[c]="职业选手梅萨"
    global.mrobo_money_blv[c]=3
    mrobo_refrish(c)
    global.mrobo_hp[c]=3000
    global.mrobo_death_jq[c]=stage02_lost_money
}

