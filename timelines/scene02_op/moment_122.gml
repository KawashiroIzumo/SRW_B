/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"这里是宇佐见，上校，新上海市外
发生第三次冲击，使徒正在靠近市区，请求
让卡拉巴电竞战队出动抵抗使徒。在他们抵抗
的时候，对量产兵器——flagEVA机进行充能。
"
qhead=thh28_usami_sumireko
a=create_dhk(qname,qtext,qhead)
a.eff=1
with(talk_scene)
{
     i=0
     actor_sprite[i]=plo14_zjh_stand

}


