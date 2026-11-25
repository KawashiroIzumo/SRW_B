///@description actor_useing(i)
///@param i
function actor_useing(argument0) 
{
	actor_active[argument0]=1//閺勫墽銇氭稉铏逛紗閼?
	actor_enable[argument0]=1//娴ｈ法鏁ゆ潻娆庨嚋actor
	actor_play[argument0]=1//閺勵垰鎯侀幘顓熸杹閸斻劎鏁?
	return argument0



}
function actor_using(a)
{
	actor_useing(a)
}
