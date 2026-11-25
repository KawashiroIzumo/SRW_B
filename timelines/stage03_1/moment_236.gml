/// @description 对话内容
if(global.ls_variable[0]==1)
{
    qname="射命丸文"
    qtext=@"不，那是pt（独行轻骑兵），是我们这一代ms（机动战士）的祖宗。
#这一型号的名字，叫做亡灵，是吉翁从机动工兵改良而来的机体，就是从它衍生出了MS03-瓦夫。
#之后才是MS-04布古和MS-05旧扎古。
    "
    qhead=thh07_aya
    create_dhk(qname,qtext,qhead)
    a=mrobo_find_pliot(2)
    if(global.mrobo_id[a]==1||global.mrobo_id[a]==16)
        view_do_center_find_pliot(2)
    else 
        view_do_center_find_pliot(3)
}
else
{
    qname="波澜哥"
    qtext=@"对了，PTX-001 亡灵！吉翁最初从MW-01 机动工兵改良而来的机体，
#之后是YMS-03 瓦夫，然后是MS-04 布古，然后是MS-05 旧扎古，啊，这么说来，亡灵是其他MS的祖宗？
"
    qhead=po00_bolan
    create_dhk(qname,qtext,qhead)
    view_do_center_find_pliot(0)
}

