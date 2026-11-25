for(i=0;i<100;i++)
{
	//show_message("i="+string(i))
    actor_reset(i)//拥有100个小人偶的位置
	
}
eff=0//当前对话场景的特效id号
eff_shock=0//当前对话场景的震颤剩余时间
scene_bak=noone//当前对话场景的背景图片
scene_surface=surface_create(1280,720)//绘制缓冲区
scene_mov=0//背景图片的运动速度
scene_vx=0//背景图片的左上点坐标
type=0//对话场景的作用类型
alarm[1]=15//计时器

