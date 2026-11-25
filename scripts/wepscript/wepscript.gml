// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wepscript()
{

}
function wepscript_perspective(delete_self)
{
	//delete_self表示是否删除自身（格斗动画通常需要删除自身，射击则不用）
	var i,j,k,l;
	i=actors_now
	if(delete_self)actors_reset(i)
	else if(sprite_exists(actors_sprite[i]))//如果不删除自身，就会将自身定格在最后一帧
	{
		var a=sprite_get_number(actors_sprite[i])
		if(actors_skeleton_animation[i]!="")
		{
			var b=sprite_index
			sprite_index=actors_sprite[i]
			a=skeleton_animation_get_frames(actors_skeleton_animation[i])
			sprite_index=b
		}
		actors_image[i]=a-1
		actors_image_speed[i]=0
	}
	bks_set(global.mrobo_x[mrid[!i]],global.mrobo_y[mrid[!i]])
	//清理用不上的动画
	for(k=4;k<40;k++)
	{
		actors_reset(k)
	}
	//创造遮挡布
	j=50
	actors_reset(j)
	actors_sprite[j]=zdb_new
	actors_combo[j]=empty_sprite
	actors_image[j]=0
	actors_image_speed[j]=1
	actors_xs[j]=1
	if(i==1)actors_xs[j]=-1
	actors_x[j]=battlecam_x+640
	actors_y[j]=battlecam_y+360
	actors_alpha[j]=1
	actors_follow[j]=1
	//移动视角，改变
	battlecam_x=actors_x[!i+2]+(1-2*i)*640
	battlecam_y=actors_y[!i+2]
	battlecam_speed=16
	battlecam_direction=0
	bk_speed=2*(i*2-1)*-1
}

function wepscript_holdcamera()
{
	var i;
	i=actors_now
	battlecam_x=actors_x[!i+2]
	battlecam_y=actors_y[!i+2]
	battlecam_speed=0
}
function wepscript_hurt()
{
	var i;
	i=actors_now
	var rid=global.mrobo_id[mrid[!i]]
	if(sprite_exists(global.robo_spr_spine[rid]))
	{
		actors_sprite[!i]=global.robo_spr_spine[rid]
		actors_skeleton_animation[!i]="hurt"
		if(avl_special>=0)
		{
		    actors_skeleton_animation[!i]="defence"
		    info_add(global.special_name[avl_special],!i)
		}
	}
	else
	{
		actors_sprite[!i]=global.robo_spr_hurt[rid]
		if(avl_special>=0)
		{
		    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
		    info_add(global.special_name[avl_special],!i)
		}
	}
	actors_image[!i]=0
	actors_image_speed[!i]=1
	actors_speed[!i]=0
	actors_direction[!i]=180
	if(!i==0)actors_direction[!i]=00
	battlecam_speed=0
}
function wepscript_hurt_hold()
{
	var i;
	i=actors_now
	actors_image_speed[!i]=0
	battlecam_speed=0
	actors_speed[!i]=0
}
function wepscript_hurt_play()
{
	var i;
	i=actors_now
	actors_image_speed[!i]=1
	battlecam_speed=0
}
function wepscript_hurt_recall()
{
	var i;
	i=actors_now
	var rid=global.mrobo_id[mrid[!i]]
	if(sprite_exists(global.robo_spr_spine[rid]))
	{
		actors_sprite[!i]=global.robo_spr_spine[rid]
		actors_skeleton_animation[!i]="stand"
	}
	else
	{
		actors_sprite[!i]=global.robo_spr_stand[rid]
	}
	actors_image[!i]=9
	actors_image_speed[!i]=1
}
function wepscript_dodge()
{
	var i,rid;
	i=actors_now
	rid=global.mrobo_id[mrid[!i]]

	pid=global.mrobo_pliot[mrid[!i]]
	var k;
	k=irandom_range(0,global.pliot_dodge_num[pid]-1)
	actors_dhk_head=global.pliot_dodge_head[pid,k]
	actors_dhk_face=global.pliot_dodge_face[pid,k]
	actors_dhk_text=global.pliot_dodge_name[pid,k]+"：#"+global.pliot_dodge_text[pid,k]

	actors_sprite[!i]=noone
	j=4
	if(sprite_exists(global.robo_spr_spine[rid]))
	{
		actors_sprite[j]=global.robo_spr_spine[rid]
		actors_skeleton_animation[j]="rdash"
	}
	else
	{
		actors_sprite[j]=global.robo_spr_rdash[rid]
	}
	actors_blend[j]=bm_normal
	actors_disappear[j]=0
	actors_alpha[j]=1
	actors_image[j]=0
	actors_x[j]=actors_x[!i]
	actors_y[j]=actors_y[!i]
	actors_xs[j]=actors_xs[!i]
	actors_ys[j]=actors_ys[!i]
	actors_image_speed[j]=1
	actors_speed[j]=8
	actors_direction[j]=10
	if(i==1)
	{
	    actors_direction[j]=170
	}
	actors_grow[j]=-0.005
	audio_play_sound(sound39_gundam_dash,1,false)
	
	battlecam_x=actors_x[!i+2]
	battlecam_y=actors_y[!i+2]
	battlecam_speed=0
	battlecam_direction=0
}
function wepscript_dodge_hold()
{
	var i;
	i=actors_now
	actors_image_speed[4]=0
	actors_image[4]=9
	battlecam_speed=0
}
function wepscript_dodge_stand()
{
	var i,rid;
	i=actors_now
	rid=global.mrobo_id[mrid[!i]]
	j=4
	if(sprite_exists(global.robo_spr_spine[rid]))
	{
		actors_sprite[j]=global.robo_spr_spine[rid]
		actors_skeleton_animation[j]="stand"
	}
	else
	{
		actors_sprite[j]=global.robo_spr_stand[rid]
	}
	actors_image_speed[j]=1
	actors_speed[j]=0
	actors_grow[j]=0
}
function wepscript_dodge_return()
{
	var i,rid;
	i=actors_now
	rid=global.mrobo_id[mrid[!i]]
	j=4
	if(sprite_exists(global.robo_spr_spine[rid]))
	{
		actors_sprite[j]=global.robo_spr_spine[rid]
		actors_skeleton_animation[j]="ldash"
	}
	else
	{
		actors_sprite[j]=global.robo_spr_ldash[rid]
	}
	actors_image[j]=0
	actors_image_speed[j]=1
	actors_speed[j]=8
	actors_direction[j]=190
	if(i==1)
	{
	    actors_direction[j]=350
	}
	actors_grow[j]=0.005
	audio_play_sound(sound39_gundam_dash,1,false)
}
function wepscript_dodge_recall()
{
	var i,rid;
	i=actors_now
	rid=global.mrobo_id[mrid[!i]]
	if(sprite_exists(global.robo_spr_spine[rid]))
	{
		actors_sprite[!i]=global.robo_spr_spine[rid]
		actors_skeleton_animation[!i]="stand"
	}
	else
	{
		actors_sprite[!i]=global.robo_spr_stand[rid]
	}
	actors_sprite[4]=noone
	actors_image[!i]=actors_image[4]
	actors_speed[4]=0
	actors_grow[4]=0
}

function wepscript_end()
{
	battleground_reset()
	var i,rid;
	i=actors_now
	rid=global.mrobo_id[mrid[!i]]
	if(dmg>=global.mrobo_hp[mrid[!i]]&&find_buff(mrid[i],4)<0)
	{
	    global.mrobo_hp[mrid[!i]]=0
	    timeline_index=global.robo_death_tml[rid]
	    timeline_position=-1
	    timeline_speed=1
	    timeline_running=true
	}
	else
	alarm[2]=15
}