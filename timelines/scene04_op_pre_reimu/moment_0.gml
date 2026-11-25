///@description 初始化
add_instance_deactive(1)
instance_create(0,0,talk_scene)
global.bgm=BGMsrw27_maoudamashii_6_dangeon22
with(talk_scene)
{
    scene_bak=BK41_earthwx
        
    i=56
    actor_reset(i)
	actor_useing(i)
    actor_sprite[i]=pcC_black
    actor_alpha[i]=1
    actor_disappear[i]=0.1
    actor_image_index[i]=0
    actor_mirror[i]=false
    actor_x[i]=0
    actor_y[i]=0
}
