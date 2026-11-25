/// @description 初始化
add_instance_deactive(1)
instance_create(0,0,talk_scene)
with(talk_scene)
{
    scene_bak=BK41_earthwx
        
    i=56
    actor_reset(i)
    actor_sprite[i]=pcC_black
    actor_alpha[i]=1
    actor_disappear[i]=0.05
    actor_image_index[i]=0
    actor_mirror[i]=false
    actor_x[i]=0
    actor_y[i]=0
    actor_active[i]=1//显示为灰色
    actor_enable[i]=1//使用这个actor
}
global.bgm=BGMsrw09_village09

