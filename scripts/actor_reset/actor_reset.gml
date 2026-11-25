/// @description actor_reset(i)
/// @param i
function actor_reset(argument0) {
	var usi=argument0;
	actor_sprite[argument0]=noone//小人偶的动画
	actor_image_index[argument0]=0//小人偶当前的动画帧
	actor_image_speed[argument0]=1//小人偶的动画播放速度

	actor_mirror[argument0]=false//小人偶是否镜像翻转

	actor_active[argument0]=false//小人偶是否暗置显示
	actor_enable[argument0]=false//小人偶是否启用
	actor_play[argument0]=true//小人偶的动画是否播放

	actor_combo[argument0]=noone//小人偶当前动画播放结束后衔接的动画
	actor_combo_nj[argument0]=0//combo触发前剩余的动画循环次数

	actor_rotate[argument0]=0//小人偶的旋转角度
	actor_rotate_speed[argument0]=0//小人偶的旋转速度
	actor_speed[argument0]=0//小人偶的移动速度
	actor_direction[argument0]=0//小人偶的移动方向

	actor_alpha[argument0]=1//小人偶的不透明度（1~0）
	actor_disappear[argument0]=0//小人偶不透明度的每帧变化量

	//小人偶的坐标
	actor_x[argument0]=128
	actor_y[argument0]=384

	//小人偶的尺寸
	actor_xs[argument0]=1
	actor_ys[argument0]=1

	actor_grow[argument0]=0//小人偶每一帧的尺寸变化量

	actor_loop_x[argument0]=0//小人偶是否左右循环（用于布景）
	actor_loop_y[argument0]=0//小人偶是否上下循环



}
