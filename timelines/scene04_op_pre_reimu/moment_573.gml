///@description 八云紫对话内容
qname="八云紫"
qtext=@"没事，我出手有分寸，刚才已经打到她失忆了。
#你以后说话之前先想一想吧。我就不打扰你做梦喽。
"
qhead=thh18_yukari
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=0;
	actor_sprite[j]=thca00_reimu_stand
	actor_combo_nj[j]=-1
	actor_combo[j]=noone
	
	j=7
	actor_sprite[j]=thca18_yukari_talk
	actor_image_index[j]=0
	actor_combo[j]=thca18_yukari_stand
	actor_combo_nj[j]=1
}