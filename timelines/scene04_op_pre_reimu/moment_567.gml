///@description 八云紫对话内容
qname="八云紫"
qtext=@"嗯……呵呵，谁知道呢。
#我和她的雇主有点过节，你最好不要在她这样的人面前提博丽研究所或者关于我的事情。
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