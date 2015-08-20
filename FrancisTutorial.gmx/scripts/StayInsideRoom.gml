 //Bounce off walls
if y < 0
{
    //Make the vspeed always positive using abs()
    vspeed = abs(vspeed)
}

if y > room_height
{
    //Make the vspeed always negative using abs()
    vspeed = -abs(vspeed)
}
if x < 0
{
    hspeed = abs(hspeed)
}

if x > room_width
{
    hspeed = -abs(hspeed)
}