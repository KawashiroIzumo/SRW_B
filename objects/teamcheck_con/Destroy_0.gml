/// @description Insert description here
// You can write your code in this editor
ds_list_destroy(ls_list_ally)
ds_list_destroy(ls_list_enemy)
if(onchoose==-1)
{
	with(trun_end_con)cold=0
}
else
{
	with(trun_end_con)instance_destroy()
	with(DND_player)
    {        
		onchoose=other.onchoose;
        b_page=0
        camera.follow=false
        inchoose=true
		view_do_center_puz(0,global.mrobo_x[onchoose],global.mrobo_y[onchoose])
        cold=1
		alarm[0]=2
    }
		
}