
speed = NormalSpeed

//if about to walk in to a wall, change direction repeteadly until no longer doing that
CollisionChecks = 0
DirectionToCheck = choose(-1,1) //Direction to rotate when looking to bounce off solid. Can't do it in while loop because it will randomly flip between neg and pos within the loop
while place_meeting(x + hspeed, y + vspeed, obj_Solid) and CollisionChecks <= 12 //12 becauase it's 360 divided by the minimum angle check below, which is 30
{
    direction = direction + (random_range(30,60) * DirectionToCheck)
    CollisionChecks = CollisionChecks + 1
}

//Prevents enemy from being shunted in to a wall (prevents any shunting at all this frame
//if shunting would push enemy in to wall)
if place_meeting(x + hspeed + xShunt, y + vspeed + yShunt, obj_Solid)
{
    ResetShunts()
}
//This adds the shunt value to the enemy if one exists (e.g., if wave weapon hits the enemy
//the xShunt and yShunt values will change, and this adds it to the enemy's speed to actually
//effect the shunt
hspeed = hspeed + xShunt
vspeed = vspeed + yShunt

//Have to reset the shunts yet again, else it continues ot be added to speed
ResetShunts()