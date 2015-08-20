//Look for projectile
IncomingProjectile = instance_place(x,y,obj_Projectile)

if instance_exists(IncomingProjectile)
{   
    //if the projectile is NOT a player chunk
    if IncomingProjectile.object_index != obj_PlayerChunk
    {
        with IncomingProjectile {instance_destroy()}
    }
    //If there was one send back true
    return true
} else
{   //If there wasn't, send back false
    return false
}