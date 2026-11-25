///@description 宇佐见堇子对话内容
qname="宇佐见堇子"
qtext=@"博丽研究所曾属于弗拉那冈，艾美号的逃生系统就是博丽真香博士设计的。
#这个逃生系统运用了从夏亚·阿兹纳布尔身上取得的数据……你知道这意味着什么吗？
"
qhead=thh28_usami_sumireko
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=1;
	actor_sprite[j]=plo23_amuro_stand
	actor_combo[j]=noone
	
	j=0
	actor_sprite[j]=thca28_usami_talk
	actor_image_index[j]=0
	actor_combo[j]=thca28_usami_stand
	actor_combo_nj[j]=3
}