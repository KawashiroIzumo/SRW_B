/// @description 旁白
qname="旁白"
qtext=@"阿姆罗的气力上升
"
qhead=po01_japanese
a=create_dhk(qname,qtext,qhead)
a.eff=2
a=mrobo_find_pliot(4)
if(a>=0)
{
    global.mrobo_pliot_ql[a]=130
}

