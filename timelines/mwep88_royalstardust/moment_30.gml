///@description 动画始点
a=instance_create(0,0,talk_scene)
with(talk_scene)
{
    i=0
    actor_reset(i)
    actor_active[i]=1
    actor_play[i]=1
    actor_enable[i]=1
    actor_sprite[i]=robo20s00_royalstar_pose2
	actor_image_speed[i]=0.5
    actor_x[i]=640
    actor_y[i]=360
}


