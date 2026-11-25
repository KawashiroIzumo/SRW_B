with(talk_scene)
{
    i=3
    actor_sprite[i]=plo09_warwolf_stand
}
var qtext;
if(global.ls_variable[0]==1)qtext="博丽神社城管大队"
else qtext="Super面筋人战队"
global.ls_string[0]=get_string("请输入部队名",qtext)
if(global.ls_string[0]="")global.ls_string[0]=qtext

