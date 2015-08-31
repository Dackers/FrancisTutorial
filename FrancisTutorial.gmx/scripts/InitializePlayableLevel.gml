/* Player */
//Create player every level, at center point of room
instance_create(room_width / 2, room_height / 2, obj_Player)

/* Game Object */
//Create Game object, but not every level or every time level is reinitialized
//so check if Game object already exists
if instance_exists(obj_Game) = false
{
    instance_create(10,10,obj_Game)
}