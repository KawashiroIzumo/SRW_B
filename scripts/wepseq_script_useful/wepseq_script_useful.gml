// Auto-generated stubs for each available event.
function soundplay_dash()
{
	audio_play_sound(sound39_gundam_dash,1,0)
}
function hiter_reset()
{
	with(hiter)
	{
		visible=false
		var lsspr=noone;
		with(battle_qr)
		{
			lsspr=seq_hiter_stand
		}
		sprite_index=lsspr
		image_index=0
		image_speed=0.5
	}
}
function hiter_hurt()
{
	with(hiter)
	{
		var lsspr=noone;
		with(battle_qr)
		{
			lsspr=seq_hiter_hurt
		}
		sprite_index=lsspr
		image_index=0
		image_speed=0.5
	}
}
function hiter_hurt_stop()
{
	with(hiter)
	{
		image_index=5
		image_speed=0
	}
}
function hiter_hurt_play()
{
	with(hiter)
	{
		image_speed=0.5
	}
}