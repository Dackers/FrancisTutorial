Thing = argument0
Result = false

if instance_exists(Thing)
{
    if collision_line(x,y,Thing.x,Thing.y, obj_Solid,true,true) = noone
    {
        Result = true
    }
}

return Result